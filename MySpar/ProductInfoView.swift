import SwiftUI

struct ProductInfoView: View {
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.green)
                        .frame(width: 120, height: 35)
                    Text("Цена по карте")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .medium))
                }
                Spacer()
            }
            .padding([.leading, .bottom])
            
            Image(uiImage: UIImage(named: "lipa")!)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 260)
            
            HStack (spacing: 5) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 20))
                
                Text("4.1")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .medium))
                Divider()
                    .frame(height: 20)
                
                Button {
                    print("show comments")
                } label: {
                    Text("19 отзывов")
                        .foregroundColor(.gray)
                        .font(.system(size: 18, weight: .medium))
                }
                Spacer()
                ZStack {
                    Image(uiImage: UIImage(named: "sticker")!)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 20)
                        .foregroundColor(.red)
                    Text("-5%")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top, 5)
                }
            }
            .padding()
            
            
            HStack {
                Text("Добавка \"Липа\"\nк чаю 200 г")
                    .font(.system(size: 35, weight: .bold))
                Spacer()
            }
            .padding(.leading)
            
            HStack {
                Image(uiImage: UIImage(named: "spain")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Text("Испания, Риоха")
                    .foregroundColor(countryTextColor)
                    .font(.system(size: 14, weight: .medium))
                Spacer()
            }
            .padding(.leading)
            
        }
    }
}
