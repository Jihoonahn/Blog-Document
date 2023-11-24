import Publish
import Plot

extension Theme where Site == Example {
    static var publish: Self {
        Theme(htmlFactory: PublishHTMLFactory())
    }
}
