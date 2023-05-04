import SwiftUI

struct ContentView: View {
  @State private var alternativeStyleOn: Bool = false
  
  var body: some View {
    VStack {
      Toggle(isOn: $alternativeStyleOn) {
        Text("Show Alternative Style")
      }
      .padding()
      
      if alternativeStyleOn {
        CardView(designLibrary: DesignLibraryAlternative())
          .padding(.horizontal, 20)
          .transition(.identity)
      } else {
        CardView(designLibrary: DesignLibrary())
          .padding(.horizontal, 20)
          .transition(.opacity)
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
