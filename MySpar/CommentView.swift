import SwiftUI

struct CommentView: View {
    
    let comments: [Comment] = [Comment(name: "Александр В.", date: dateFromString(str: "20.09.2023")!, rate: 4, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"), Comment(name: "Иван В.", date: dateFromString(str: "10.05.2023")!, rate: 5, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"), Comment(name: "Александр В.", date: dateFromString(str: "05.03.2023")!, rate: 2, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")]
    
    var body: some View {
        VStack {
            HStack {
                Text("Отзывы")
                    .font(.system(size: 25, weight: .bold))
                Spacer()
                Button {
                    print("open all comments")
                } label: {
                    Text("Все 152")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.green)
                }
            }
            .padding([.trailing, .leading])
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 20) {
                    ForEach(comments, id: \.self) { comment in
                        CommentCardView(comment: comment)
                    }
                }
                .padding()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.green, lineWidth: 2)
                    .frame(width: 350, height: 40)
                Button {
                    print("add comment")
                } label: {
                    Text("Оставить отзыв")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.green)
                }
            }
        }
    }
}
