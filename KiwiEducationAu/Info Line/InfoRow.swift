//
//  InfoRow.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post

    var body: some View {
        VStack {
            HStack {
                post.image
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .padding(.leading, 12)

                Text(post.title)
                    .font(.headline)

                Spacer()
            }
//            Text(post.subtitle)
//                .font(.subheadline)
        }
        .frame(maxHeight: 50)
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: posts[0])
    }
}
