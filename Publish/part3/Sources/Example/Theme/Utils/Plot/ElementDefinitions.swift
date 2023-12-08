import Plot

extension ElementDefinitions {
    enum Section: ElementDefinition { public static var wrapper = Node.section }
}

typealias Section = ElementComponent<ElementDefinitions.Section>
