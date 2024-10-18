//
//  ContentView.swift
//  ExerciseClass_MobComp_W5
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
let flags: [String] = [
           "🇦🇫","🇦🇱","🇩🇿","🇦🇸","🇦🇩","🇦🇴","🇦🇬","🇦🇷","🇦🇲","🇦🇺","🇦🇹","🇦🇿","🇧🇸","🇧🇭","🇧🇩","🇧🇧","🇧🇾","🇧🇪","🇧🇿","🇧🇯"
          
       ]
    @State private var randomFlag: String = ""
    var body: some View {
        Text(randomFlag)
            .font(.system(size:100 ))
            .onAppear {
            randomFlag = flags.randomElement() ?? "🇦🇫"
            }

            Button(action: {
                randomFlag = flags.randomElement() ?? "🇦🇫" }) {
                        Text("GO!")
                    }
    }
}

#Preview {
    ContentView()
}
