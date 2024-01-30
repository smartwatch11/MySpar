import SwiftUI

struct ProductDescriptionView: View {
    
    let specs: [Spec] = [Spec(name: "Производство", value: "Россия, Краснодарский край"),
                         Spec(name: "Энергитическая ценность, ккал/100 г", value: "25 ккал, 105 кДж"),
                         Spec(name: "Жиры/100 г", value: "0,1 г"),
                         Spec(name: "Белки/100 г", value: "1,3 г"),
                         Spec(name: "Углеводы/100 г", value: "3,3 г"),
                         Spec(name: "Еще параметр", value: "100 г"),
                         Spec(name: "Параметр 2", value: "43"),
                         Spec(name: "Параметр 3", value: "Испания")
                        ]

    @State var isExpended: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Описание")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
            }
            .padding(.bottom, 5)
            .padding(.leading, 10)
            
            HStack {
                Text("Флавонойды липового цвета обладают противоспалительным действием, способствуют укреплению стенки сосудов.")
                    .font(.system(size: 18, weight: .regular))
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.leading, 10)
            
            HStack {
                Text("Основные характеристики")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
            }
            .padding(.bottom, 5)
            .padding(.leading, 10)
            
            VStack {
                ForEach(specs, id: \.self) { spec in
                    if isExpended  {
                        HStack {
                            Text(spec.name)
                            Spacer()
                            Text(String(repeating: ".", count: 54 - spec.name.count - spec.value.count))
                                .foregroundColor(.gray)
                            Spacer()
                            Text(spec.value)
                        }
                        .font(.system(size: 16, weight: .regular))
                        .padding(.bottom, 5)
                    } else if isExpended == false && !spec.name.lowercased().contains("параметр") {
                        HStack {
                            Text(spec.name)
                            Spacer()
                            Text(String(repeating: ".", count: 62 - spec.name.count - spec.value.count))
                                .foregroundColor(.gray)
                            Spacer()
                            Text(spec.value)
                        }
                        .font(.system(size: 16, weight: .regular))
                        .padding(.bottom, 5)
                    }
                }
            }
            .padding([.leading, .trailing], 10)
            
            HStack {
                Button {
                    print("show/hide")
                    withAnimation {
                        isExpended.toggle()
                    }
                    
                } label: {
                    Text("Все характеристики")
                }
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.green)
                
                Spacer()
            }
            .padding(.leading, 10)
            .padding(.top, 5)
            
        }
    }
}
