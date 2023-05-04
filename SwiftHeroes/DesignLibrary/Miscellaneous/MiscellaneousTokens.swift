import Foundation
import SwiftUI

struct MiscellaneousTokens: MiscellaneousTokensProvider {
  let cornerRadius: CornerRadiusesProvider = CornerRadiuses()
  let opacity: OpacitiesProvider = Opacities()
  let asset: AssetNamesProvider = AssetNames()
}

struct MiscellaneousTokensAlternative: MiscellaneousTokensProvider {
  let cornerRadius: CornerRadiusesProvider = CornerRadiusesAlternative()
  let opacity: OpacitiesProvider = OpacitiesAlternative()
  let asset: AssetNamesProvider = AssetNamesAlternative()
}

protocol MiscellaneousTokensProvider {
  var cornerRadius: CornerRadiusesProvider { get }
  var opacity: OpacitiesProvider { get }
  var asset: AssetNamesProvider { get }
}

// MARK: CornerRadius

struct CornerRadiuses: CornerRadiusesProvider {
  let card: Double = 32
  let button: Double = 100
}

struct CornerRadiusesAlternative: CornerRadiusesProvider {
  let card: Double = 4
  let button: Double = 4
}

protocol CornerRadiusesProvider {
  var card: Double { get }
  var button: Double { get }
}

// MARK: Opacity

struct Opacities: OpacitiesProvider {
  let cardDetails: Double = 0.6
}

struct OpacitiesAlternative: OpacitiesProvider {
  let cardDetails: Double = 1
}

protocol OpacitiesProvider {
  var cardDetails: Double { get }
}

// MARK: Asset

struct AssetNames: AssetNamesProvider {
  let cardBackground = "img2"
}

struct AssetNamesAlternative: AssetNamesProvider {
  let cardBackground = "img1"
}

protocol AssetNamesProvider {
  var cardBackground: String { get }
}
