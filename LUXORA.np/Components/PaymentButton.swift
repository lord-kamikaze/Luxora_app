//
//  PaymentButton.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 19/05/23.
//

import SwiftUI
    import PassKit
    
    struct PaymentButton: View {
        var action: () -> Void
        
        var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
    
    struct PaymentButton_Previews: PreviewProvider {
        static var previews: some View {
            PaymentButton(action: {})
        }
    }
    
    extension PaymentButton {
        struct Representable: UIViewRepresentable {
            var action: () -> Void
            
            func makeCoordinator() -> Coordinator {
                Coordinator(action: action)
            }
            
            func makeUIView(context: Context) -> some UIView {
                context.coordinator.Button
                
            }
            func updateUIView(_ uiView: UIViewType, context: Context){
                context.coordinator.action = action
                
            }
        }
        
        class Coordinator: NSObject {
            var action: () -> Void
            var button = PKPaymentButton(paymentButtonType)
        }
    }

