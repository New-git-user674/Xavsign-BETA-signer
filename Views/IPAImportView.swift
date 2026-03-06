import SwiftUI
import UniformTypeIdentifiers

struct IPAImportView: View {
    
    @State private var showPicker = false
    
    var body: some View {
        VStack {
            
            Button("Import IPA") {
                showPicker = true
            }
            .fileImporter(
                isPresented: $showPicker,
                allowedContentTypes: [.data]
            ) { result in
                
                switch result {
                case .success(let url):
                    Logger.shared.log("Imported IPA: \(url.lastPathComponent)")
                    
                case .failure(let error):
                    Logger.shared.log("Import error: \(error.localizedDescription)")
                }
            }
            
        }
        .navigationTitle("Import IPA")
    }
}
