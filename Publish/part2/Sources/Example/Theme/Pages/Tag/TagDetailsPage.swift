import Plot
import Publish

struct TagDetailsPage: Component {
    let items: [Item<Example>]
    let context: PublishingContext<Example>
    let selectedTag: Tag

    var body: Component {
        ComponentGroup {
            HeaderComponent(context: context)
            Div {
                H2(selectedTag.string)
                PostsLayout(items: items)
            }
            .class("site-tagDetails")
            FooterComponent()
        }
    }
}
