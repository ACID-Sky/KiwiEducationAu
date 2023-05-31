//
//  InfoRow.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    var rowHeight: Double

    var body: some View {
        VStack {
            HStack {
                post.image
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: CGFloat(Float(rowHeight)), height: CGFloat(Float(rowHeight)))
                    .padding(.leading, 12)

                Text(post.title)
                    .font(.headline)

                Spacer()
            }
        }
        .frame(height: CGFloat(Float(rowHeight)))
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: posts[0], rowHeight: 40.0)
    }
}
