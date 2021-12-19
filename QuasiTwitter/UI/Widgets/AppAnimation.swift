//
//  AppAnimation.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 19.12.2021.
//

import SwiftUI
import Lottie
import SnapKit

struct AppAnimation: UIViewRepresentable {
    private let name: String
    private let loopMode: LottieLoopMode
    
    init(name: String, loopMode: LottieLoopMode = .loop) {
        self.name = name
        self.loopMode = loopMode
    }
    
    var animationView = AnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<AppAnimation>) -> UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        view.addSubview(animationView)
        
        animationView.snp.makeConstraints{ make in
            make.height.width.equalToSuperview()
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<AppAnimation>) {}
}
