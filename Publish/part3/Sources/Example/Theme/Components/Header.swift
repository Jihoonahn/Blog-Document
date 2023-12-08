import Publish
import Plot

struct HeaderComponent: Component {
    var context: PublishingContext<Example>

    var body: Component {
        Header {
            Link("Blog", url: "/")
                .class("header-logo")
            Div {
                Navigation {
                    List(Example.SectionID.allCases) { sectionID in
                        Link(
                            context.sections[sectionID].title,
                            url: context.sections[sectionID].path.absoluteString
                        )
                        .class("header-nav-menu-link")
                    }
                }
                .class("header-nav")
            }
            .class("content")
        }
        .class("site-header")
    }
}
