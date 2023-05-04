import Foundation
import SwiftUI

struct BaseColors: BaseColorsProvider {
  let brandPrimary = Color(red: 219/255, green: 246/255, blue: 111/255)
  let brandSecondary = Color(red: 219/255, green: 246/255, blue: 111/255)
  let white = Color(red: 255/255, green: 255/255, blue: 255/255)
  let dark = Color(red: 30/255, green: 31/255, blue: 37/255)
  let black = Color(red: 0/255, green: 0/255, blue: 0/255)
  let cream = Color(red: 255/255, green: 253/255, blue: 194/255)
}

struct BaseColorsAlternative: BaseColorsProvider {
  let brandPrimary = Color(red: 30/255, green: 113/255, blue: 63/255)
  let brandSecondary = Color(red: 255/255, green: 152/255, blue: 195/255)
  let cream = Color(red: 255/255, green: 253/255, blue: 194/255)
  let dark = Color(red: 30/255, green: 31/255, blue: 37/255)
  let white = Color(red: 255/255, green: 255/255, blue: 255/255)
  let black = Color(red: 0/255, green: 0/255, blue: 0/255)
}

protocol BaseColorsProvider {
  var brandPrimary: Color { get }
  var brandSecondary: Color { get }
  var cream: Color { get }
  var dark: Color { get }
  var black: Color { get }
  var white: Color { get }
}
