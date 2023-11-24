import Foundation
import Publish
import Plot

struct PostLayout: Component {
    var item: Item<Example>
    var context: PublishingContext<Example>

    var body: Component {
        Section {
            Article {
                Div {
                    for tag in item.tags {
                        Link(tag.string, url: context.site.url(for: tag))
                            .class("post-tag")
                    }
                    H2(item.title)
                        .class("post-title")
                    Paragraph(DateFormatter.time.string(from: item.date))
                        .class("post-date")
                }
                .class("site-post-header")
                Div {
                    Div {
                        Node.contentBody(item.body)
                    }
                }
                .class("site-post-content")
            }
            .class("site-post-article")
        }
        .class("site-post")
    }
}
