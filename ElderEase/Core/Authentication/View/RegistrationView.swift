//
//  RegistrationView.swift
//  ElderEase
//
//  Created by Huixin Pan on 6/4/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        VStack{
            // image
            Image("oakTree")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
            
            // form fields
            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeholder: "name@example.com")
                    .autocapitalization(.none)

                InputView(text: $fullname,
                          title: "Full Name",
                          placeholder: "Enter your name")

                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            // sign up button
            Button {
                Task {
                    try await viewModel.createUser(withEmail: email, 
                                                   password: password,
                                                   fullname: fullname)
                }
            } label: {
                HStack {
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                .background(Color.green)
                .cornerRadius(10)
            }
            .padding(.top, 24)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }

        }
    }
}

#Preview {
    RegistrationView()
}
