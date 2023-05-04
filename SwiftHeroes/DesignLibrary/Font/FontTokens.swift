import Foundation
import SwiftUI

struct FontTokens: FontTokensProvider {
  let cardFont: CardFontProvider = CardFont()
  let buttonFont: ButtonFontProvider = ButtonFont()
}

struct FontTokensAlternative: FontTokensProvider {
  let cardFont: CardFontProvider = CardFontAlternative()
  let buttonFont: ButtonFontProvider = ButtonFontAlternative()
}

protocol FontTokensProvider {
  var cardFont: CardFontProvider { get }
  var buttonFont: ButtonFontProvider { get }
}

// MARK: Card

struct CardFont: CardFontProvider {
  let title = Font.custom(CustomFont.heptaSlabBold.rawValue, size: 36)
  let body = Font.custom(CustomFont.spaceGroteskRegular.rawValue, size: 16)
  let price = Font.custom(CustomFont.heptaSlabBold.rawValue, size: 24)
}

struct CardFontAlternative: CardFontProvider {
  let title = Font.custom(CustomFont.playfairDisplayBold.rawValue, size: 36)
  let body = Font.custom(CustomFont.ralewayRegular.rawValue, size: 16)
  let price = Font.custom(CustomFont.playfairDisplayBold.rawValue, size: 24)
}

protocol CardFontProvider {
  var title: Font { get }
  var body: Font { get }
  var price: Font { get }
}

// MARK: Button

struct ButtonFont: ButtonFontProvider {
  let standard = Font.custom(CustomFont.spaceGroteskBold.rawValue, size: 16)
}

struct ButtonFontAlternative: ButtonFontProvider {
  let standard = Font.custom(CustomFont.ralewayBold.rawValue, size: 16)
}

protocol ButtonFontProvider {
  var standard: Font { get }
}
