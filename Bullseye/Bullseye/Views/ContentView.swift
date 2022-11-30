//
//  ContentView.swift
//  Bullseye
//
//  Created by JayaShankar Mangina on 11/20/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 10.0
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🎯🎯🎯\nput the bullseye as close as you can to".uppercased()).bold().kerning(2.0).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
                    .padding(.leading, 30.0)
                    .padding(.trailing, 30.0)
                    .foregroundColor(Color("TextColor"))
                Text(String(game.target)).bold().kerning(-1.0).multilineTextAlignment(.center).font(.largeTitle).fontWeight(.black).foregroundColor(Color("TextColor"))
                HStack {
                    Text("1").bold().foregroundColor(Color("TextColor"))
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100").bold().foregroundColor(Color("TextColor"))
                }
                .padding()
                Button(action: {
                    self.alertIsVisible = true
                }) {
                    Text("Hit Me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .background(ZStack {
                    Color("ButtonColor")
                    LinearGradient(colors: [Color.white.opacity(0.3), Color.clear], startPoint: .top, endPoint: .bottom)
                })
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .alert(isPresented: $alertIsVisible,
                       content: {
                    let roundedValue: Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text("Slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue))"), dismissButton: .default(Text("Awesome!")))
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
