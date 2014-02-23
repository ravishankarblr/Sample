package sample

class PersonContactController {

    def index() { 
		redirect(action:"list", paramns:params)
	}
	
	def list(){
		def contact1 = new Contact()
		contact1.personName = "AAA"
		contact1.personStatus = "Reg"
		
		def contact2 = new Contact()
		contact2.personName = "BBB"
		contact2.personStatus = "Active"
		
		def contact3 = new Contact()
		contact3.personName = "CCC"
		contact3.personStatus = "Inactive"
		
		def contactDataList = [contact1,contact2,contact3]
		
		render(view: "list", model:[personContactList:contactDataList, totalContCount: 5, salSum: 500])
		print "Displaying list data"
	}
}
