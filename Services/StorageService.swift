import Foundation

class StorageService {
    
    static let shared = StorageService()
    
    private init() {}
    
    func documentsDirectory() -> URL {
        
        FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        )[0]
        
    }
    
    func ipaDirectory() -> URL {
        
        let dir = documentsDirectory().appendingPathComponent("IPAs")
        
        try? FileManager.default.createDirectory(
            at: dir,
            withIntermediateDirectories: true
        )
        
        return dir
    }
}
