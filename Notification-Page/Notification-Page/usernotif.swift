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
    var time: String
    @State var viewed : Bool 
    
    
    var body: some View {
        HStack(spacing: 15){
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 12))
                    .foregroundColor(viewed ? .gray : .black)
            }
            Image(viewed ? "connect" : "badge_bg")
            Text("\(time)").font(.system(size: 10)).foregroundColor(.gray).padding(.top, 30.0)
                
                
            
            
        }
        .onTapGesture {
            self.viewed = true
//            viewed.toggle()
            
        }
    }
}

struct UserNotification_Previews: PreviewProvider {
    static var previews: some View {
        UserNotification(name: "Iram", text: "Gave you super badge!", image: "iram", time: "18 mins Ago", viewed: false)
    }
}
