//
//  ContentView.swift
//  SmartShop
//

//imporing libraries
import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
//the ZStack contains the logo image and makes all the other pages appear in a organized fashion
        ZStack{
            Image("SmartShopLogo")
                .ignoresSafeArea()
                .position(.init(x: 190, y: 120))
               .scaleEffect(1.2)
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
          //The tabview and the cards appear in a tab like format to swipe through
            TabView{
            ContentCardView()
            ContentCardView2()
            ContentCardView3()
            ContentCardView4()
            }
            .tabViewStyle(PageTabViewStyle())
        }
        
    }
}

struct Content_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

struct ContentCardView: View {
    var body:some View {
        //The VStack contains the logo image and creates the formating for the first card
        
        
        VStack(alignment:.center, spacing:16){
       
        Image ("SmartShopLogo")
            .position(.init(x:140, y: 100))
            .scaleEffect(0.9)
            Text("Groceries to your door step!")
                .font(.title3)
                .fontWeight(.thin)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .position(.init(x: 150, y: 550))
            
            //Creates a gradient effect on the text
        LinearGradient(gradient: Gradient(colors: [Color.green, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            .frame(height:600)
            .mask(Text("PLEASE \nSWIPE \nTO GET \nSTARTED \n >>")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .lineSpacing(-0.258)
            )
        }
        //creates padding on the sides.
        .padding(30)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        //adds a rounded shape to the rectangle that the text is contained in
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        
        .padding(20)
    }
}


struct ContentCardView2: View {
    //creates variables for the sign up and login page
    @State var username = ""
    @State var password = ""
    @State var name = ""
    @State var email = ""
    @State var password2 = ""
    var body:some View {
        
        VStack(alignment:.center, spacing:16){
        Image ("SmartShopLogo")
            .position(.init(x:140, y: 100))
            .scaleEffect(0.9)
            Text("Groceries to your door step!")
                .font(.title3)
                .fontWeight(.thin)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .position(.init(x: 150, y: 550))
     //creates a navigation view and a typing area for the login and sign up page
        NavigationView{
            NavigationLink(destination: Form{
                Section{
                    TextField("Username (email address)", text: $username)
                    TextField("Password", text: $password)
                }
            }){
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .position(x:140, y:-80)
       }
    }
          
                Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    .position(x:140, y:-200)
        }
    
        .padding(30)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        
        .padding(20)
    }
}


struct ContentCardView3: View {
    var body:some View {
        //This VStack creates buttons and gives a options tab for the user to choose their supermarket
        VStack(alignment:.center){
        Image ("SmartShopLogo")
            .position(.init(x:140, y: 100))
            .scaleEffect(0.9)
        //creates a button embedded for the different supermarkets
        Button(action: {
            print("View Shop")
            }, label:{
        Image ("Walmart")
            .position(.init(x:140, y:330))
            .scaleEffect(0.7)
            .padding()
            })
        Image ("RCSP")
            .position(.init(x:140, y:300))
            .scaleEffect(0.7)
        Image("Loblaws")
            .position(.init(x:140, y:270))
        .scaleEffect(0.7)
        Image("Shoppers")
                .position(.init(x:140, y:230))
            .scaleEffect(0.7)
        Text("Groceries to your door step!")
                .font(.title3)
                .fontWeight(.thin)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .position(.init(x: 150, y: 550))
     //clicking a store would take the user to the page that creates the way to the next page for the user to view the supermarkets
        Text("Please choose your store:")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                  .position(x: 140, y: -300)
        }
        .padding(30)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        
        .padding(20)
    }
}

//This VStack creates the items avaliable in the stores to diplay to the user to click
struct ContentCardView4: View {
    var body:some View {
        VStack(alignment:.center, spacing:16){
       Image("walmartback")
        .position(x:145, y: 50)
        
        Text("Choose your items")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                .position(x:140,y: 40)
        Image("Fruits")
            .position(x: 140, y: -10)
         
        Image("bgrd")
            .position(x:-166, y:-90)
            .scaleEffect(0.2)
        Image("bgrd2")
                .position(x:-150, y:400)
            .scaleEffect(0.2)
        Image("arrow")
            .position(x: 200, y: -150)
        Image("arrow")
                .position(x: 200, y: -50)
        Image("dash")
            .position(x:140, y:80)
        
        }
        .padding(30)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        
        .padding(20)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


