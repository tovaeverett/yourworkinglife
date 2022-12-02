import java.util.DoubleSummaryStatistics

class Work(
    val employeeNumber: String,
    var salary: Double,
    var salaryFixedPercentage: Double,
    var salaryVariablePercentage: Double,
    var workMonthCount: Double
) {
    fun putWork() {
        //Update work in db
    }

    fun getWork() {
        //Show work information
    }
}