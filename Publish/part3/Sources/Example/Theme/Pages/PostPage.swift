import Publish
import Plot

struct PostPage: Component {
    var item: Item<Example>
    var context: PublishingContext<Example>

    var body: Component {
        ComponentGroup {
            HeaderComponent(context: context)
            PostLayout(item: item, context: context)
            FooterComponent()
        }
    }
}
