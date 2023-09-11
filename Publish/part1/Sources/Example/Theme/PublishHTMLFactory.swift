import Plot
import Publish
import Foundation

struct PublishHTMLFactory: HTMLFactory {
    typealias Site = Example

    func makeIndexHTML(for index: Index, context: PublishingContext<Example>) throws -> HTML {
        <#code#>
    }
    
    func makeSectionHTML(for section: Section<Example>, context: Publish.PublishingContext<Example>) throws -> HTML {
        <#code#>
    }
    
    func makeItemHTML(for item: Item<Example>, context: PublishingContext<Example>) throws -> HTML {
        <#code#>
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Example>) throws -> HTML {
        <#code#>
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Example>) throws -> HTML? {
        <#code#>
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Example>) throws -> HTML? {
        <#code#>
    }
}
