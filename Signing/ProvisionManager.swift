import Foundation

class ProvisionManager {
    
    static let shared = ProvisionManager()
    
    var profiles: [URL] = []
    
    func importProfile(url: URL) {
        profiles.append(url)
        Logger.shared.log("Provision profile added")
    }
}
