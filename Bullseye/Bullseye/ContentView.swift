//
//  ContentView.swift
//  Bullseye
//
//  Created by JayaShankar Mangina on 11/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO").bold().kerning(2.0).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
            Text("89").bold().kerning(-1.0).multilineTextAlignment(.center).font(.largeTitle).fontWeight(.black)
            HStack {
                Text("1").bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100").bold()
            }
            Button(action: {}) {
                Text("Hit Me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
