import Foundation

struct DesignLibrary: DesignLibraryProvider {
  let color: ColorTokensProvider = ColorTokens()
  let font: FontTokensProvider = FontTokens()
  let miscellaneous: MiscellaneousTokensProvider = MiscellaneousTokens()
}

struct DesignLibraryAlternative: DesignLibraryProvider {
  let color: ColorTokensProvider = ColorTokensAlternative()
  let font: FontTokensProvider = FontTokensAlternative()
  let miscellaneous: MiscellaneousTokensProvider = MiscellaneousTokensAlternative()
}

protocol DesignLibraryProvider {
  var color: ColorTokensProvider { get }
  var font: FontTokensProvider { get }
  var miscellaneous: MiscellaneousTokensProvider { get }
}
