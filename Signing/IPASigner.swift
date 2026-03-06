import Foundation

class IPASigner {
    
    func signIPA(
        ipa: URL,
        certificate: URL,
        provision: URL,
        completion: @escaping (Bool) -> Void
    ) {
        
        DispatchQueue.global().async {
            
            Logger.shared.log("Starting IPA signing...")
            
            sleep(2)
            
            Logger.shared.log("Signing finished")
            
            DispatchQueue.main.async {
                completion(true)
            }
        }
    }
}
