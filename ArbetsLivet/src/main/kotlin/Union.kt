
class Union(
    var unionId: String?,
    var memberNumber: String?,
    val member: Person?,
    var akassa: Boolean = false,
    var incomeInsurance: Boolean = false,
    var unEmployedSalaryAmount: Double = 0.0
) {
    fun registerUnion() {
        //IInsert union in db
    }

    fun updateUnion() {
        //Update union in db
    }

    fun getUnion() {
        //Select union information
    }
}