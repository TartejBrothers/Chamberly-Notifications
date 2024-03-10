
import SwiftUI

struct UserNotification: View {
    var name: String
    var text: String = "Joined your Chamber"
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
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 30)
                
                Button(action: {}, label: {
                    Image("connect")
                })
            }
            
            
            
            Spacer()
            
            Text("\(time)").font(.system(size: 8)).foregroundColor(.gray).padding(.top, 30.0)
            
            
            
            
        }
        
    }
}


struct UserNotification_Previews: PreviewProvider {
    static var previews: some View {
        
        UserNotification(name: "John", image: "iram", time: "18 mins Ago")
        
    }
}

