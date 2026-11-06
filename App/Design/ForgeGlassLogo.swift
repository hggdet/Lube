import SwiftUI

/// Homepage / Library header mark — the app's own icon in a rounded tile.
struct ForgeGlassLogoView: View {
    var size: CGFloat = 60

    @Environment(\.forgeTheme) private var T

    var body: some View {
        Image("HeaderIcon")
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(RoundedRectangle(cornerRadius: size * 0.30, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: size * 0.30, style: .continuous)
                    .stroke(T.rule, lineWidth: AppStroke.hairline)
            }
            .accessibilityLabel("Lube")
    }
}
