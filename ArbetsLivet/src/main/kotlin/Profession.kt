class Profession(
    val professionTypeIdentity: String,
    val professionType: String,
    var firstSalary: Double,
    var pensionAge: Int,
    var typeOfGoal: String
) {
    fun putProfession() {
        //Update profession in db
    }

    fun getProfession() {
        //Show profession information
    }
}