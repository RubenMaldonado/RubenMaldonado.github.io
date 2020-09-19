import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct PublishMaxstery: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://RubenMaldonado.github.io")!
    var name = "Ruben Maldonado Apps"
    var description = "Hub for my iOS development Journey"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try PublishMaxstery().publish(withTheme: .foundation,
                              deployedUsing: .gitHub("RubenMaldonado/RubenMaldonado.github.io", useSSH: false)
                              //deployedUsing: .gitHub("RubenMaldonado/publish_maxstery_prod"),
                              
)


