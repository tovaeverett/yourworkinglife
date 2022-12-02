class Union(
    val unionId: String,
    val memberNumber: String,
    val memberName: String,
    var akassa: Boolean,
    var incomeInsurance: Boolean,
    var unEmployedSalaryAmount: Double
) {
    fun putUnion() {
        //Update union in db
    }

    fun getUnion() {
        //Show union information
    }
}