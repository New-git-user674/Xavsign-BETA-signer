import Foundation

class SigningService {
    
    func sign(
        ipa: URL,
        certificate: URL,
        provision: URL
    ) {
        
        Logger.shared.log("Starting signing process")
        
        let signer = IPASigner()
        
        signer.signIPA(
            ipa: ipa,
            certificate: certificate,
            provision: provision
        )
    }
}
