import Foundation

/// Extracts a signed app's own icon out of its IPA (via the bridge) so the
/// Library can show real app icons instead of a generic placeholder.
enum AppIconService {
    /// Writes the icon PNG to `destination`. Returns true on success.
    static func extractIcon(from ipa: URL, to destination: URL) -> Bool {
        #if LUBE_BRIDGE
        var messageBuffer = [CChar](repeating: 0, count: 512)
        let status = forgesign_extract_app_icon(
            ipa.path,
            destination.path,
            NSTemporaryDirectory(),
            &messageBuffer,
            Int32(messageBuffer.count)
        )
        return status == 0 && FileManager.default.fileExists(atPath: destination.path)
        #else
        return false
        #endif
    }
}
