class Insurance(
    val insuranceNumber: String,
    val insuranceType: String,
    var sickMonthsCount: Int,
    var sickSalaryAmount: Double
) {
    fun putInsurance(){
        //Update insurance in db
    }

    fun getInsurance(){
        //Show insurance information
    }
}