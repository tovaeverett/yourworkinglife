import java.awt.Image
import javax.print.DocFlavor.STRING

class Person(
    val personIdentity: String,
    val personNumber: String,
    val personName: String,
    var luck: Boolean,
    var magellit: Boolean,
    var age: Int
) {

    val accounts = mutableListOf<Account>()
    val insurance = mutableListOf<Insurance>()
    val profession = mutableListOf<Profession>()
    val work = mutableListOf<Work>()
    val union = mutableListOf<Union>()

    fun putPerson()
    {
        //Store in database
    }

    fun getPerson(){
        //Show person status
    }
}