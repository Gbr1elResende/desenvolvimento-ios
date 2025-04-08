//
//  ContentView.swift
//  telaLogin
//
//  Created by COTEMIG on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password = ""
    @State private var isPasswordVisible: Bool = false
    var body: some View {
        VStack {
            Text("Digite o seu login")
                .font(.largeTitle)
                .bold()
                .padding()
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            ZStack(alignment: .trailing){
                Group{
                    if isPasswordVisible{
                        TextField("Digite sus senha", text: $password)
                    } else {
                        SecureField("Digite sua senha", text: $password)
                    }
                }
                .keyboardType(.numberPad)
                .padding()
                
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    isPasswordVisible.toggle()
                }) {
                    Image(systemName: isPasswordVisible ? "eye.slash.fill":"eye.fill")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            Button("Entrar"){
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
