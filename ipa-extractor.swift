import Foundation

class IPAExtractor {

    func extract(ipa: URL, destination: URL) throws {
        let process = Process()
        process.launchPath = "/usr/bin/unzip"
        process.arguments = [ipa.path, "-d", destination.path]
        process.launch()
        process.waitUntilExit()
    }

}
