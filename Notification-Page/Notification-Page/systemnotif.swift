//
//  systemnotif.swift
//  Notification-Page
//
//  Created by Taranjeet Singh Bedi on 06/03/24.
//

import SwiftUI

struct SystemNotification: View{
    var text : String
    var body: some View{
        HStack{
            Image("logo")
            Text("\(text)").bold().font(.system(size: 16))
                .multilineTextAlignment(.leading)
        }
    }
}
struct systemnotif_Previews: PreviewProvider {
    static var previews: some View {
        SystemNotification(text: "Hello World")
    }
}
