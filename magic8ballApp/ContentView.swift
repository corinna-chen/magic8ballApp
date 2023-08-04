//
//  ContentView.swift
//  magic8ball
//
//  Created by Scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var answer = ""
    var allAnswers = ["it is certain", "it is decidedly so", "without a doubt", "yes definitely", "you may rely on it", "as I see it, yes", "most likely", "outlook good", "yes", "signs point to yes", "reply hazy, try again", "ask again later", "better not tell you now", "cannot predict now", "concentrate and ask again", "dont count on it", "my reply is no", "my sources say no", "outlook not so good", "very doubtful"]
    var body: some View {
        
        
        ZStack{
            Color(red: 0.8, green: 0.87, blue: 0.98)
                .ignoresSafeArea()
           
            VStack {
                
                Button {
                    answer = allAnswers.randomElement() ?? "oopsies try again"
                } label: {
                    Image("magic8ball")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
                
                Text("magic 8 ball says: ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("")
                Text(answer)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.red)
                
                
            }
            .padding(.all)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
