//
//  ContentView.swift
//  W6 _Exercise_Livanty
//
//  Created by student on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form() {
            Section{
                VStack {
                    ZStack{
                        Rectangle()
                                .fill(Color.blue)
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width:70, height: 70)
                                .clipShape(Circle())
                                .offset(y: 35)
                        }
                 
                    .padding(.bottom, 30)
                        Text("@livanty").foregroundStyle(.gray)
                        Text("Livanty Efatania").font(.headline)
                        HStack {
                            Spacer()
                            Text("Bandung").foregroundStyle(.blue)
                            Text("| Joined September 2022").foregroundStyle(.gray)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            Text("👤 Follow").padding(5).border(.gray )
                            Text(" ✉ Message").padding(5).border(.gray )
                            Text("...More").padding(5).border(.gray )
                            Spacer()
                        }
                        Text("Sekarang aku sedang berkuliah di Universitas Ciputra Surabaya dan mengambil jurusan ISB").multilineTextAlignment(.center)
                        
                    
                }
                
            }
            Section {
                VStack {
                    Text("Information").font(.headline).multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading) .padding(.bottom, 10)
                    HStack {
                        Image(systemName: "globe")
                        Text("Instagram").multilineTextAlignment(.leading)
                        Spacer()
                        Text("Livanty Efatania").multilineTextAlignment(.trailing)
                    }.font(.system(size: 15))
                        .padding(.bottom, 8)
                    HStack {
                        Image(systemName: "envelope")
                        Text("Email").multilineTextAlignment(.leading)
                        Spacer()
                        Text("Lefatania@studentciputra.ac.id").multilineTextAlignment(.trailing)
                    }.font(.system(size: 15))
                        .padding(.bottom, 8)
                    HStack {
                        Image(systemName: "phone")
                        Text("Phone").multilineTextAlignment(.leading)
                        Spacer()
                        Text("+62 1234 5678").multilineTextAlignment(.trailing)
                    }.font(.system(size: 15))
                        .padding(.bottom, 8)
                    HStack {
                        Image(systemName: "calendar")
                        Text("Joined").multilineTextAlignment(.leading)
                        Spacer()
                        Text("September 2022").multilineTextAlignment(.trailing)
                    }.font(.system(size: 15))
                        .padding(.bottom, 8)
                    
                    Divider()
                    
                    HStack {
                            TagView(tag: "UI Designer")
                            TagView(tag: "UX Designer")
                            TagView(tag: "Design System")
                            
                            } .padding(.top,10)
                    HStack {
                        TagView(tag: "Product")
                        TagView(tag: "Successfull")
                    }
                    }
                
                }
            }
        }
        
}
struct TagView: View {
    var tag: String
    
    var body: some View {
        Text(tag)
            .font(.caption)
            .padding(8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
    }
}
#Preview {
    ContentView()
}
