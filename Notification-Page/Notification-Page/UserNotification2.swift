//
//  UserNotification2.swift
//  Notification-Page
//
//  Created by srivatsa davuluri on 10/03/24.
//

import SwiftUI


struct UserNotification2: View {
    var name: String
    var text: String = "Gave you a Super Badge! "
    var image: String
    var time: String
    
    
    
    
    var body: some View {
        HStack(spacing: 12){
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
            
            
            HStack{
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0))
                        )
                    Text(text)
                        .font(.system(size: 10))
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                }
                
                Spacer(minLength: 30)
                
                Image("badge_bg")
            }
            
            
            
            Spacer()
            
            Text("\(time)").font(.system(size: 8)).foregroundColor(.gray).padding(.top, 30.0)
            
            
            
            
        }
        
    }
}

struct UserNotification2_Previews: PreviewProvider {
    static var previews: some View {
        
        UserNotification2(name: "John", image: "iram", time: "18 mins Ago")
        
    }
}
