import Plot
import Publish
import Foundation

struct PublishHTMLFactory: HTMLFactory {
    typealias Site = Example

    func makeIndexHTML(for index: Index, context: PublishingContext<Example>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: index, on: context.site),
            .body {
                IndexPage(context: context)
            }
        )
    }
    
    func makeSectionHTML(for section: Publish.Section<Example>, context: Publish.PublishingContext<Example>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: section, on: context.site),
            .body {
                SectionPage(section: section, context: context)
            }
        )
    }
    
    func makeItemHTML(for item: Item<Example>, context: PublishingContext<Example>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: item, on: context.site),
            .body {
                PostPage(item: item, context: context)
            }
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Example>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site),
            .body {
                page.body
            }
        )
    }
    
    func makeTagListHTML(for page: Publish.TagListPage, context: PublishingContext<Example>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site),
            .body {
                TagListPage(tags: page.tags, context: context)
            }
        )
    }
    
    func makeTagDetailsHTML(for page: Publish.TagDetailsPage, context: PublishingContext<Example>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site),
            .body {
                TagDetailsPage(
                    items: context.items(
                        taggedWith: page.tag,
                        sortedBy: \.date
                    ),
                    context: context,
                    selectedTag: page.tag
                )
            }
        )
    }
}
