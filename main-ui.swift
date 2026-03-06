import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Import IPA") {
                    FileManagerView()
                }
                
                NavigationLink("Certificates") {
                    CertificatesView()
                }
                
                NavigationLink("Logs") {
                    LogsView()
                }
            }
            .navigationTitle("Xavsign")
        }
    }
}
