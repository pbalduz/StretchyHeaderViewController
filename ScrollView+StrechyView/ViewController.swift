//
//  ViewController.swift
//  ScrollView+StrechyView
//
//  Created by Pablo Balduz on 03/04/2020.
//  Copyright © 2020 Pablo Balduz. All rights reserved.
//

import UIKit

class ViewController: StretchyHeaderViewController {
    
    private let label = UILabel()
    
    override func loadView() {
        super.loadView()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        let constraints = [
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 32),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerImageView.image = UIImage(named: "header")
        
        contentViewTopOffset = 40
        contentView.backgroundColor = #colorLiteral(red: 0.3333333333, green: 0.1450980392, blue: 0.5098039216, alpha: 1)
        contentView.layer.cornerRadius = 40
        contentView.layer.masksToBounds = true
        contentView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        label.textColor = #colorLiteral(red: 0.9921568627, green: 0.7254901961, blue: 0.1529411765, alpha: 1)
        label.numberOfLines = 0
        let text =  """
                    Dear Basketball,

                    From the moment
                    I started rolling my dad’s tube socks
                    And shooting imaginary
                    Game-winning shots
                    In the Great Western Forum
                    I knew one thing was real:

                    I fell in love with you.

                    A love so deep I gave you my all —
                    From my mind & body
                    To my spirit & soul.

                    As a six-year-old boy
                    Deeply in love with you
                    I never saw the end of the tunnel.
                    I only saw myself
                    Running out of one.

                    And so I ran.
                    I ran up and down every court
                    After every loose ball for you.
                    You asked for my hustle
                    I gave you my heart
                    Because it came with so much more.

                    I played through the sweat and hurt
                    Not because challenge called me
                    But because YOU called me.
                    I did everything for YOU
                    Because that’s what you do
                    When someone makes you feel as
                    Alive as you’ve made me feel.

                    You gave a six-year-old boy his Laker dream
                    And I’ll always love you for it.
                    But I can’t love you obsessively for much longer.
                    This season is all I have left to give.
                    My heart can take the pounding
                    My mind can handle the grind
                    But my body knows it’s time to say goodbye.

                    And that’s OK.
                    I’m ready to let you go.
                    I want you to know now
                    So we both can savor every moment we have left together.
                    The good and the bad.
                    We have given each other
                    All that we have.

                    And we both know, no matter what I do next
                    I’ll always be that kid
                    With the rolled up socks
                    Garbage can in the corner
                    :05 seconds on the clock
                    Ball in my hands.
                    5 … 4 … 3 … 2 … 1

                    Love you always,
                    Kobe
                    """
        label.text = text
    }
}

