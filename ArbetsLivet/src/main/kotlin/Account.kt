
class Account(
    val accountNumber: String?,
    val accountType: String?,
    val client: Person?,
    var amount: Double = 0.0
) {

    fun registerAccount() {
        //Insert account in db
    }

    fun updateAccount() {
        //Update account in db
    }

    fun getAccount() {
        //Select account from db
    }
}