
import SwiftUI

struct UserNotification: View {
    var name: String
    var text: String = "Joined your Chamber"
    var image: String
    var time: String

    var body: some View {
        HStack(spacing: 20){
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
                
                Spacer(minLength: 15)
                
                Image("connect")
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

struct UserNotification2: View {
    var name: String
    var text: String = "Gave you a Super Badge! "
    var image: String
    var time: String

    
    
    
    var body: some View {
        HStack(spacing: 20){
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
                
                Spacer(minLength: 15)
                
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
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                            .bold()
                        
                        
                        Button(action: {
                            //
                        }, label: {
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
                    joined.toggle()
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
