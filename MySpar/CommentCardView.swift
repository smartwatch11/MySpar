import SwiftUI

struct CommentCardView: View {
    
    var comment: Comment
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: commentShadowColor, radius: 10)
                .frame(width: 220, height: 135)
            VStack {
                HStack {
                    Text(comment.name)
                        .font(.system(size: 16, weight: .bold))
                    Spacer()
                }
                .frame(width: 200)
                HStack {
                    Text(stringFromDate(date: comment.date)!)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.gray)
                    Spacer()
                }
                .frame(width: 200)
                HStack (spacing: 0) {
                    Image(systemName: "star.fill")
                        .foregroundColor(comment.rate > 0 ? .yellow : .gray)
                        .font(.system(size: 15))
                    Image(systemName: "star.fill")
                        .foregroundColor(comment.rate > 1 ? .yellow : .gray)
                        .font(.system(size: 15))
                    Image(systemName: "star.fill")
                        .foregroundColor(comment.rate > 2 ? .yellow : .gray)
                        .font(.system(size: 15))
                    Image(systemName: "star.fill")
                        .foregroundColor(comment.rate > 3 ? .yellow : .gray)
                        .font(.system(size: 15))
                    Image(systemName: "star.fill")
                        .foregroundColor(comment.rate > 4 ? .yellow : .gray)
                        .font(.system(size: 15))
                    Spacer()
                }
                .frame(width: 200)
                HStack {
                    Text(comment.text)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.black)
                    Spacer()
                }
                .frame(width: 200)
            }
        }
    }
}
