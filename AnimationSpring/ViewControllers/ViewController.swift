//
//  ViewController.swift
//  AnimationSpring
//
//  Created by Денис Курлыков on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //animationView.layer.cornerRadius = 10
       
    }
    private var animation = Animation.getAnimation()
    
    @IBAction func startAnimationButton(_ sender: UIButton) {
        descriptionLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Start \(animation.name)", for: .normal)
    }

}

