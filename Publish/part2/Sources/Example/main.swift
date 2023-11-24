import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Example: Website {
    enum SectionID: String, WebsiteSectionID {
        case blog
        case about
        var name: String {
            switch self {
            case .blog: return "Blog"
            case .about: return "About"
            }
        }
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "http://localhost:8000/")!
    var name = "Example"
    var description = "A description of Part"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Example().publish(using: [
    .optional(.copyResources()),
    .addMarkdownFiles(),
    .generateHTML(withTheme: .publish),
    .generateRSSFeed(including: [.blog]),
    .generateSiteMap()
])
