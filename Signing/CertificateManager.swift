import Foundation

class CertificateManager: ObservableObject {
    
    static let shared = CertificateManager()
    
    @Published var certificates: [URL] = []
    
    func importCertificate(url: URL) {
        certificates.append(url)
        Logger.shared.log("Certificate imported: \(url.lastPathComponent)")
    }
    
}
