class Account(
    val accountNumber: String,
    val accountType: String,
    var amount: Double
) {
    fun putAccount() {
        //Update account in db
    }

    fun getAccount() {
        //Show account information
    }
}