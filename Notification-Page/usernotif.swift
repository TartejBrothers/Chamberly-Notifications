//
//  usernotif.swift
//  Notification-Page
//
//  Created by Taranjeet Singh Bedi on 06/03/24.
//
import SwiftUI

struct UserNotification: View {
    var name: String
    var text: String
    var image: String
    @State private var viewed = false
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text(text)
                    .font(.subheadline)
                    .fontWeight(viewed ? .regular : .bold)
            }
        }
        .onTapGesture {
            self.viewed = true
        }
    }
}

struct UserNotification_Previews: PreviewProvider {
    static var previews: some View {
        UserNotification(name: "Iram", text: "Gave you super badge!", image: "iram")
    }
}
