//
//  MeView.swift
//  HotProspects
//
//  Created by Galih Samudra on 15/10/24.
//

import CoreImage.CIFilterBuiltins
import SwiftUI

struct MeView: View {
    @AppStorage("name") private var name = "Anonymus"
    @AppStorage("emailAddress") private var emailAddress = "yourName@email.com"
    
    @State private var qrCode = UIImage()
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    TextField("Name", text: $name)
                        .textContentType(.name)
                        .font(.title)
                    
                    TextField("Email Address", text: $emailAddress)
                        .textContentType(.emailAddress)
                        .font(.title)
                    
                    Image(uiImage: qrCode)
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .contextMenu {
                            ShareLink(item: Image(uiImage: qrCode), preview: SharePreview("My QR Code", image: Image(uiImage: qrCode)))
                        }
                }
                .navigationTitle("Your Code")
                .onAppear(perform: updateQRCode)
                .onChange(of: name, updateQRCode)
                .onChange(of: emailAddress, updateQRCode)
            }
        }
    }
    
    func updateQRCode() {
        qrCode = generatedQRCode(from: "\(name)\n\(emailAddress)")
    }
    
    func generatedQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)
        
        if let outputImage = filter.outputImage,
            let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            return UIImage(cgImage: cgImage)
        }
        
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}

#Preview {
    MeView()
}
