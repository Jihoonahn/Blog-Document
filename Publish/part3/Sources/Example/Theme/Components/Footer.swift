import Plot

struct FooterComponent: Component {
    var body: Component {
        Footer {
            Paragraph("Made with Publish")
            Paragraph {
                Text("Copyright © ")
                Link("Jihoonahn", url: "https://github.com/jihoonahn")
            }
            .class("copyright")
        }
        .class("site-footer")
    }
}
