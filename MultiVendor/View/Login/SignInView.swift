//
//  SignInView2.swift
//  MultiVendor
//
//  Created by ilhan serhan ipek on 29.02.2024.
//

import SwiftUI

struct SignInView: View {
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  @StateObject var loginVM = MainViewModel.shared

    var body: some View {
      ZStack {
        VStack {
          HStack {
            Button {
                mode.wrappedValue.dismiss()
            } label: {
                Image("back")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
            }
            Spacer()
          }
          VStack{
              Image("color_logo")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 40)
                  .padding(.bottom, .screenWidth * 0.1)

              Text("Loging")
                  .font(.customfont(.semibold, fontSize: 26))
                  .foregroundColor(.primaryText)
                  .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom, 4)

              Text("Enter your emails and password")
                  .font(.customfont(.semibold, fontSize: 16))
                  .foregroundColor(.secondaryText)
                  .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom, .screenWidth * 0.1)

              LineTextField( title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                  .padding(.bottom, .screenWidth * 0.07)

              LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                  .padding(.bottom, .screenWidth * 0.02)


              NavigationLink {
                  //ForgotPasswordView()
              } label: {
                  Text("Forgot Password?")
                      .font(.customfont(.medium, fontSize: 14))
                      .foregroundColor(.primaryText)
              }
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
              .padding(.bottom, .screenWidth * 0.03)

              RoundButton(title: "Log In") {

              }
              .padding(.bottom, .screenWidth * 0.05)


              NavigationLink {
                  SignUpView()
              } label: {
                  HStack{
                      Text("Don’t have an account?")
                          .font(.customfont(.semibold, fontSize: 14))
                          .foregroundColor(.primaryText)

                      Text("Signup")
                          .font(.customfont(.semibold, fontSize: 14))
                          .foregroundColor(Color.Grocerycustom.primaryGroceryApp)
                  }
              }

              Spacer()
          }
          .padding(.horizontal, 20)
          Spacer()
        }
      }
      .background(Color.white)
      .navigationTitle("")
      .navigationBarBackButtonHidden(true)
      .navigationBarHidden(true)
    }
}

#Preview {
    SignInView()
}
