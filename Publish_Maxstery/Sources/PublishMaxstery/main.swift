import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct PublishMaxstery: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case apps
        case posts
        
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://RubenMaldonado.github.io")!
    var name = "Ruben Maldonado"
    var description = "From zero to hero, my iOS career journey"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try PublishMaxstery().publish(withTheme: .maxstery,
                              deployedUsing: .gitHub("RubenMaldonado/RubenMaldonado.github.io", useSSH: false),
                              plugins: [
                                .splash(withClassPrefix: "")
                              ]
                              //deployedUsing: .gitHub("RubenMaldonado/publish_maxstery_prod"),
)


