import Publish
import Plot

struct PostsLayout: Component {
    let items: [Item<Example>]
    
    var body: Component {
        Section {
            Div {
                List(items) { item in
                    Article {
                        Link(url: item.path.absoluteString) {
                            Paragraph(item.tags.map{ $0.string }.joined(separator: ", "))
                                .class("posts-tag")
                            H3(item.title)
                                .class("posts-title")
                            Paragraph(item.description)
                                .class("posts-description")
                        }
                        .class("posts-link")
                    }
                    .class("posts-article")
                }
                .class("posts-list")
            }
            .class("site-posts-inner")
        }
        .class("site-posts")
    }
}
