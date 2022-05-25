//
//  ContentView.swift
//  JorgeCard
//
//  Created by Jorge Gonzalez on 25/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.22, green: 0.68, blue: 0.66, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("jorge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Jorge Gonzalez")
                    .bold()
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 40))
                .padding()
                Text("Mobile Developer")
                    .foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(text: "+52 477 338 8323", imageName: "phone.fill")
                InfoView(text: "jagg.dev.27@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
