import Publish
import Plot

struct IndexPage: Component {
    var context: PublishingContext<Example>

    var body: Component {
        ComponentGroup {
            HeaderComponent(context: context)
            PostsLayout(items: context.allItems(sortedBy: \.date))
            FooterComponent()
        }
    }
}
