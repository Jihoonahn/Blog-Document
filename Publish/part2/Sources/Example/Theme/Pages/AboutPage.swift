import Publish
import Plot

struct AboutPage: Component {
    var context: PublishingContext<Example>
    
    var body: Component {
        ComponentGroup {
            HeaderComponent(context: context)
            Div {
                Image("/images/AboutPageImage.svg")
                H2("Publish Example")
                Paragraph("Jihoonahn’s Blog Example")
            }
            .class("site-about")
            FooterComponent()
        }
    }
}
