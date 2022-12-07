
class Person(
    val personIdentity: String?,
    val personNumber: String?,
    val personName: String = "",
    var luck: Boolean = false,
    var magellit: Boolean = false,
    var age: Int = 20
) {

    val accounts = mutableListOf<Account>()
    val insurance = mutableListOf<Insurance>()
    val profession = mutableListOf<Profession>()
    val work = mutableListOf<Work>()
    val union = mutableListOf<Union>()

    fun registerPerson()
    {
        //Insert in database
    }

    fun updatePerson()
    {
        //Update in database
    }

    fun getPerson(){
        //Select person status
    }
}