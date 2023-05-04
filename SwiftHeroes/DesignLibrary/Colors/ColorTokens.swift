import Foundation
import SwiftUI

struct ColorTokens: ColorTokensProvider {
  let icon: IconColorsProvider = IconColors()
  let text: TextColorsProvider = TextColors()
  let background: BackgroundColorsProvider = BackgroundColors()
}

struct ColorTokensAlternative: ColorTokensProvider {
  let icon: IconColorsProvider = IconColorsAlternative()
  let text: TextColorsProvider = TextColorsAlternative()
  let background: BackgroundColorsProvider = BackgroundColorsAlternative()
}

protocol ColorTokensProvider {
  var icon: IconColorsProvider { get }
  var text: TextColorsProvider { get }
  var background: BackgroundColorsProvider { get }
}

// MARK: Icon

struct IconColors: IconColorsProvider {
  let promo: Color
  let buttonPrimary: Color
  
  init(baseColors: BaseColorsProvider = BaseColors()) {
    self.promo = baseColors.brandPrimary
    self.buttonPrimary = baseColors.dark
  }
}

struct IconColorsAlternative: IconColorsProvider {
  let buttonPrimary: Color
  let promo: Color
  
  init(baseColors: BaseColorsProvider = BaseColorsAlternative()) {
    self.buttonPrimary = baseColors.brandSecondary
    self.promo = baseColors.brandSecondary
  }
}

protocol IconColorsProvider {
  var buttonPrimary: Color { get }
  var promo: Color { get }
}

// MARK: Text

struct TextColors: TextColorsProvider {
  let standard: Color
  let buttonPrimary: Color
  
  init(baseColors: BaseColorsProvider = BaseColors()) {
    self.standard = baseColors.white
    self.buttonPrimary = baseColors.dark
  }
}

struct TextColorsAlternative: TextColorsProvider {
  let standard: Color
  let buttonPrimary: Color
  
  init(baseColors: BaseColorsProvider = BaseColorsAlternative()) {
    self.standard = baseColors.dark
    self.buttonPrimary = baseColors.white
  }
}

protocol TextColorsProvider {
  var standard: Color { get }
  var buttonPrimary: Color { get }
}

// MARK: Background

struct BackgroundColors: BackgroundColorsProvider {
  let cardDetails: Color
  let buttonPrimary: Color
  
  init(baseColors: BaseColorsProvider = BaseColors()) {
    self.cardDetails = baseColors.black
    self.buttonPrimary = baseColors.brandPrimary
  }
}

struct BackgroundColorsAlternative: BackgroundColorsProvider {
  let cardDetails: Color
  let buttonPrimary: Color
  
  init(baseColors: BaseColorsProvider = BaseColorsAlternative()) {
    self.cardDetails = baseColors.cream
    self.buttonPrimary = baseColors.brandPrimary
  }
}

protocol BackgroundColorsProvider {
  var cardDetails: Color { get }
  var buttonPrimary: Color { get }
}
