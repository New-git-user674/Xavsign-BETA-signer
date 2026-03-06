import Foundation

class FileService {
    
    static let shared = FileService()
    
    func importIPA(from url: URL) {
        
        let dest = StorageService.shared
            .ipaDirectory()
            .appendingPathComponent(url.lastPathComponent)
        
        do {
            
            try FileManager.default.copyItem(at: url, to: dest)
            
            Logger.shared.log("Imported \(url.lastPathComponent)")
            
        } catch {
            
            Logger.shared.log("Import failed")
            
        }
    }
}
