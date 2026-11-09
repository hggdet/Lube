import SwiftUI

/// Homepage / Library header mark — the +P symbol on a colorless
/// Liquid Glass tile.
struct ForgeGlassLogoView: View {
    var size: CGFloat = 60

    @Environment(\.forgeTheme) private var T

    var body: some View {
        Image("HeaderSymbol")
            .resizable()
            .scaledToFit()
            .frame(width: size * 0.64, height: size * 0.64)
            .foregroundColor(T.accentStrong)
            .frame(width: size, height: size)
            .fClearGlass(in: RoundedRectangle(cornerRadius: size * 0.30, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: size * 0.30, style: .continuous)
                    .stroke(T.rule, lineWidth: AppStroke.hairline)
            }
            // Decorative: every screen shows its title right next to it.
            .accessibilityHidden(true)
    }
}
