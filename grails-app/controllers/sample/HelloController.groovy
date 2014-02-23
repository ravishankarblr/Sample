package sample

class HelloController {

    def index() {
		redirect(action: "hi", paramns:params)
	}
	
	def hi(){
		print "I am bad"
	}
}
