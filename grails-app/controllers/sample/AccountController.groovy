package sample

class AccountController {

	def index() {
		redirect(action : "list", params:params)
		println params
	}

	def create(){
		def accountVisibiltyList = ["Public", "Private"]
		def accountOwners = [
			"Recruiter",
			"Manager",
			"BackOfficeAdmin"
		]
		def countries = ["India", "USA"]
		def accountStatuses = ["N/A", "Active", "In-Active"]
		[accountInstance : new Account(params), leftnav: 'si', accountVisibiltyList : accountVisibiltyList, accountOwners : accountOwners, countries:countries, accountStatuses: accountStatuses]
	}

	def list(){
		def account1 = new Account()
		account1.name = "A"
		account1.status = "Active"

		def account2 = new Account()
		account2.name = "B"
		account2.status = "Active"

		def account3 = new Account()
		account3.name = "C"
		account3.status = "Close"

		def account4 = new Account()
		account4.name = "D"
		account4.status = "Close"

		/*def account5 = null
		if(accountInstance != null){
			account5 = accountInstance
		}*/

		def accountResult = [
			account1,
			account2,
			account3,
			account4,
			//account5
		]
		render(view : "list", model : [accountInstanceList:accountResult, totalCount : accountResult.size()])
	}

	def save(){
		print 'params : '+ params
		def accountInstance = new Account(params)
		if (!accountInstance.save(flush: true)) {
			accountInstance.errors.each { print it }
			render(view: "create", model: [accountInstance: accountInstance])
			return
		}

		flash.message = 'Account has been created successfully'
		redirect(action: "list")
		/*print 'accountInstance : '+ accountInstance
		def accountResult = [accountInstance]
		render(action: "list", model : [accountInstanceList:accountResult, totalCount : accountResult.size()])	*/	
	}

	def show(){
	}

	def edit(){
	}

	def update(){
	}

	def delet(){
	}
}
