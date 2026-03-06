import SwiftUI

struct LogsView: View {
    
    @ObservedObject var logger = Logger.shared
    
    var body: some View {
        List(logger.logs, id: \.self) { log in
            Text(log)
        }
        .navigationTitle("Logs")
    }
}
