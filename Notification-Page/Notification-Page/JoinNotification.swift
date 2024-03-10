//
//  JoinNotification.swift
//  Notification-Page
//
//  Created by srivatsa davuluri on 10/03/24.
//

import SwiftUI

struct JoinNotification: View {
    var image: String
    var text: String
    var name: String = "Jack"
    @State private var joined: Bool = false
    
    var body: some View {
        HStack(spacing: 15) {
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                
                if joined {
                    HStack {
                        
                        Text("You joined \(name)'s Chamber! ")
                            .font(.system(size: 14))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                            .bold()
                        
                        
                        Button(action: { }, label: {
                            Image("connect")
                                .resizable()
                                .frame(width: 20, height: 20)
                        })
                    }
                } else {
                    Text(text)
                        .font(.system(size: 14))
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                        .bold()
                    
                }
            }
            
            if !joined {
                Button(action: {
                    withAnimation {
                        joined.toggle()
                    }
                }) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(red: 0.478, green: 0.478, blue: 1.0))
                        .frame(width: 60, height: 30)
                        .overlay(
                            Text("Join")
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        )
                }
            }
        }
    }
}

struct JoinNotification_Previews: PreviewProvider {
    static var previews: some View {
        JoinNotification(image: "iram", text: "Jack is inviting you to join their chamber")
    }
}
