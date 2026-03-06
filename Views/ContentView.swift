import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                
                NavigationLink(destination: IPAImportView()) {
                    Label("Import IPA", systemImage: "square.and.arrow.down")
                }
                
                NavigationLink(destination: CertificateView()) {
                    Label("Certificates", systemImage: "person.crop.square")
                }
                
                NavigationLink(destination: SigningView()) {
                    Label("Sign IPA", systemImage: "hammer")
                }
                
                NavigationLink(destination: LogsView()) {
                    Label("Logs", systemImage: "doc.text")
                }
                
            }
            .navigationTitle("Xavsign")
        }
    }
}
