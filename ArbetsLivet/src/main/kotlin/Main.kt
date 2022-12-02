import java.lang.Math.pow

fun main(args: Array<String>) {
    println("Hello World!")
    println("What is your name?")
    val name = readln()
    println("Hello, $name")
    // Try adding program arguments via Run/Debug configuration.
    // Learn more about running applications: https://www.jetbrains.com/help/idea/running-applications.html.
    println("Program arguments: ${args.joinToString()}")

    println("Average finder v0.1")
    val avg = findAverage(args)
    println("The average is $avg")

    val power = 10.0
    Math.pow(2.0, power)
}

fun findAverage(input: Array<String>): Double {
    var result = 0.0
    for (s in input) {
        result += s.toDouble()
    }
    return result
}