//
//  SystemNotification.swift
//  Notification-Page
//
//  Created by srivatsa davuluri on 10/03/24.
//

import SwiftUI

struct SystemNotification: View{
    var text : String
    var body: some View{
        HStack(spacing: 10){
            Image("logo")
            
            
            Text("\(text)")
                .bold()
                .font(.system(size: 14))
                .multilineTextAlignment(.leading)
        }
    }
}
struct systemnotif_Previews: PreviewProvider {
    static var previews: some View {
        SystemNotification(text: "This is a system dummy text! ")
    }
}

