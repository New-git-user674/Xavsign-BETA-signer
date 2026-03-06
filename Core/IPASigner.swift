import Foundation

class IPASigner {
    
    func signIPA(
        ipa: URL,
        certificate: URL,
        provision: URL
    ) {
        
        Logger.shared.log("Signing \(ipa.lastPathComponent)")
        
        // Placeholder
        
        sleep(2)
        
        Logger.shared.log("Signing completed")
        
    }
}
