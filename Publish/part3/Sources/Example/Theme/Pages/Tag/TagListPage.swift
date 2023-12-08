import Plot
import Publish

struct TagListPage: Component {
    let tags: Set<Tag>
    let context: PublishingContext<Example>
    
    var body: Component {
        ComponentGroup {
            HeaderComponent(context: context)
            List(tags) { tag in
                ListItem {
                    Link(tag.string, url: context.site.url(for: tag))
                }
                .class("site-tag")
            }
            .class("site-tagList")
            FooterComponent()
        }
    }
}
