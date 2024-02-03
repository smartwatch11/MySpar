import SwiftUI

struct BuyView: View {
    
    @State private var favoriteColor = 0
    @State private var ctn = 1
    @State private var price = 55.9
    @State private var totalPrice = 55.9
    
    var body: some View {
        VStack {
            Picker("Picker", selection: $favoriteColor) {
                Text("Шт").tag(0)
                Text("Кг").tag(1)
            }
            .pickerStyle(.segmented)
            .onChange(of: favoriteColor) { tag in
                ctn = 1
                price = 55.9
                totalPrice = 55.9
            }
            
            HStack {
                VStack {
                    HStack {
                        Text(String(format: "%g", price))
                            .font(.system(size: 30, weight: .bold))
                        ZStack {
                            Text("₽")
                                .padding(.top, -10)
                                .padding(.leading, -10)
                                .font(.system(size: 15, weight: .bold))
                            Text("/")
                                .font(.system(size: 20, weight: .medium))
                                .rotationEffect(.degrees(30))
                                .padding(.top, -5)
                                .padding(.leading, 4)
                            Text("\(favoriteColor != 0 ? "кг" : "шт")")
                                .padding(.bottom, -10)
                                .padding(.trailing, -50)
                                .font(.system(size: 15, weight: .bold))
                        }
                        Spacer()
                    }
                    HStack {
                        Text("199.0")
                            .foregroundColor(.gray)
                        .strikethrough()
                        Spacer()
                    }
                }
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                    .frame(width: 200, height: 50)
                    
                    HStack(spacing: 50) {
                        Button {
                            if ctn > 1 {
                                ctn -= 1
                                totalPrice = Double(ctn) * price
                            }
                        } label: {
                            Image(systemName: "minus")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                        }
                        
                        VStack{
                            Text("\(favoriteColor != 0 ? "\(Double(ctn)/Double(10)) кг" : "\(ctn) шт")")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                            Text("\(String(format: "%g", totalPrice)) ₽")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                        }
                        
                        Button {
                            ctn += 1
                            totalPrice = Double(ctn) * price
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                        }
                    }
                }
            }
        }
        .padding()
    }
}
