import csstype.*
import emotion.css.keyframes
import emotion.react.css
import react.FC
import react.Props
import react.dom.html.ReactHTML.p

external interface ShowStreckGubbe1Props : Props {
    var images: List<String>
    var index: Int
}

val showStreckGubbe1 = FC<ShowStreckGubbe1Props> { props ->
    p {
        val streckGubbe: AnimationName
        val noll: String
        streckGubbe = keyframes {
            0.pct {
                backgroundImage = url(props.images[0])
                marginLeft = 0.pc
                width = 10.pc
            }
            7.pct {
                backgroundImage = url(props.images[1])
                marginLeft = 2.pc
                width = 12.pc
            }
            14.pct {
                backgroundImage = url(props.images[2])
                marginLeft = 4.pc
                width = 12.pc
            }
            21.pct {
                backgroundImage = url(props.images[3])
                marginLeft = 6.pc
                width = 12.pc
            }
            28.pct {
                backgroundImage = url(props.images[4])
                marginLeft = 8.pc
                width = 9.pc
            }
            35.pct {
                backgroundImage = url(props.images[5])
                marginLeft = 10.pc
                width = 9.pc
            }
            42.pct {
                backgroundImage = url(props.images[6])
                marginLeft = 12.pc
                width = 9.pc
            }
            49.pct {
                backgroundImage = url(props.images[7])
                marginLeft = 14.pc
                width = 12.pc
            }
            56.pct {
                backgroundImage = url(props.images[8])
                marginLeft = 16.pc
                width = 10.pc
            }
            63.pct {
                backgroundImage = url(props.images[9])
                marginLeft = 18.pc
                width = 15.pc
            }
            70.pct {
                backgroundImage = url(props.images[10])
                marginLeft = 20.pc
                width = 11.pc
            }
            77.pct {
                backgroundImage = url(props.images[11])
                marginLeft = 22.pc
                width = 8.pc
            }
            84.pct {
                backgroundImage = url(props.images[12])
                marginLeft = 24.pc
                width = 12.pc
            }
            100.pct {
                backgroundImage = url(props.images[13])
                marginLeft = 26.pc
                width = 5.pc
            }
        }

        css {
            animationDuration = 3.s
            animationName = streckGubbe
            animationFillMode = AnimationFillMode.both
            display = Display.flex
            position = Position.absolute
            top = 300.px
            left = 1.px
            width = 154.px
            height = 221.px
        }
    }
}

