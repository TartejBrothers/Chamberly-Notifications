//
//  systemnotif.swift
//  Notification-Page
//
//  Created by Taranjeet Singh Bedi on 06/03/24.
//

import SwiftUI

struct systemnotif: View{
    var body: some View{
        HStack{
            Image("logo")
            Text("What’s up! don’t forget to add journal").bold().font(.system(size: 16))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
    }
}
struct systemnotif_Previews: PreviewProvider {
    static var previews: some View {
        systemnotif()
    }
}
