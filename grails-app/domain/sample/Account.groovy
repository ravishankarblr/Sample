package sample

class Account {

	String name
	String status
	String accountVisibilty
	String accountOwner
	String email
	Integer phone
	String city
	String country
	String addDate
	
    static constraints = {
		city nullable : true
		addDate nullable : true, defaultValue : new Date()		
    }
	
	static mapping = {
		
	}
}
