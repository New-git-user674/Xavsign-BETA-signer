import Foundation

class Logger: ObservableObject {
    
    static let shared = Logger()
    
    @Published var logs: [String] = []
    
    func log(_ message: String) {
        DispatchQueue.main.async {
            self.logs.append(message)
            print("[Xavsign] \(message)")
        }
    }
}
