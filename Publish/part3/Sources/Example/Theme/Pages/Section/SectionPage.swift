import Publish
import Plot

struct SectionPage: Component {
    var section: Publish.Section<Example>
    var context: PublishingContext<Example>

    var body: Component {
        switch section.path.string {
        case Example.SectionID.blog.rawValue:
            return IndexPage(context: context)
        case Example.SectionID.about.rawValue:
            return AboutPage(context: context)
        default: return Div()
        }
    }
}
