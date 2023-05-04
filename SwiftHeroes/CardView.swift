import Foundation
import SwiftUI

struct CardView: View {
  let designLibrary: DesignLibraryProvider
  
  var body: some View {
    ZStack(alignment: .topLeading) {
      Image(designLibrary.miscellaneous.asset.cardBackground)
        .mask {
          RoundedRectangle(
            cornerRadius: designLibrary.miscellaneous.cornerRadius.card,
            style: .continuous
          )
        }
      
      VStack {
        HStack {
          Text("MB#128")
            .font(designLibrary.font.cardFont.title)
            .foregroundColor(designLibrary.color.text.standard)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top)
            .padding(.leading)
          
          Spacer()
          
          Image("clover")
            .renderingMode(.template)
            .padding(.top)
            .padding(.trailing)
            .foregroundColor(designLibrary.color.icon.promo)
        }
        .padding(.horizontal, 24)
        
        Spacer()
        
        HStack {
          VStack(alignment: .leading, spacing: 4) {
            Text("16.7")
              .font(designLibrary.font.cardFont.price)
              .foregroundColor(designLibrary.color.text.standard)
            +
            Text(" ETH")
              .font(designLibrary.font.cardFont.body)
              .foregroundColor(designLibrary.color.text.standard)
            
            Text("Last sale: 14.4 WETH")
              .font(designLibrary.font.cardFont.body)
              .foregroundColor(designLibrary.color.text.standard)
          }
          .padding(.leading)
          
          Spacer()
          
          Button(action: {}) {
            HStack {
              Image("duck")
                .renderingMode(.template)
                .foregroundColor(designLibrary.color.icon.buttonPrimary)
              
              Text("Buy")
                .foregroundColor(designLibrary.color.text.buttonPrimary)
                .font(designLibrary.font.buttonFont.standard)
            }
            .frame(width: 125, height: 64)
            .background(designLibrary.color.background.buttonPrimary)
            .cornerRadius(designLibrary.miscellaneous.cornerRadius.button)
          }
        }
        .frame(height: 112)
        .padding(.horizontal, 24)
        .background(
          designLibrary.color.background.cardDetails.opacity(
            designLibrary.miscellaneous.opacity.cardDetails
          )
        )
        .clipShape(RoundedCorner(
          radius: designLibrary.miscellaneous.cornerRadius.card,
          corners: [.bottomLeft, .bottomRight])
        )
      }
    }
    .frame(width: 358, height: 450)
  }
}

struct RoundedCorner: Shape {
  var radius: CGFloat
  var corners: UIRectCorner
  
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    return Path(path.cgPath)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView(designLibrary: DesignLibrary())
  }
}
