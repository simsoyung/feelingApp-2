//
//  ViewController.swift
//  feelingApp
//
//  Created by 심소영 on 5/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var happyButton: UIButton!
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var likeButton: UIButton!
    
    @IBOutlet var happyLabel: UILabel!
    @IBOutlet var loveLabel: UILabel!
    @IBOutlet var likeLabel: UILabel!
    
    @IBOutlet var upsetButton: UIButton!
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var sleepyButton: UIButton!
    
    @IBOutlet var upsetLabel: UILabel!
    @IBOutlet var boredLabel: UILabel!
    @IBOutlet var sleepyLabel: UILabel!
    
    @IBOutlet var panicButton: UIButton!
    @IBOutlet var gloomyButton: UIButton!
    @IBOutlet var sadButton: UIButton!
 
    @IBOutlet var panicLabel: UILabel!
    @IBOutlet var gloomyLabel: UILabel!
    @IBOutlet var sadLabel: UILabel!
    
    @IBOutlet var backgroundView: UIImageView!
    
    @IBOutlet var resetButton: UIButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        happyButton.setImage(UIImage(named: "slime1"), for: .normal)
        happyButton.contentMode = .scaleAspectFit
        loveButton.setImage(UIImage(named: "slime2"), for: .normal)
        loveButton.contentMode = .scaleAspectFit
        likeButton.setImage(UIImage(named: "slime3"), for: UIControl.State.normal)
        likeButton.contentMode = .scaleAspectFit
        upsetButton.setImage(UIImage(named: "slime4"), for: UIControl.State.normal)
        upsetButton.contentMode = .scaleAspectFit
        boredButton.setImage(UIImage(named: "slime5"), for: UIControl.State.normal)
        boredButton.contentMode = .scaleAspectFit
        sleepyButton.setImage(UIImage(named: "slime6"), for: UIControl.State.normal)
        sleepyButton.contentMode = .scaleAspectFit
        panicButton.setImage(UIImage(named: "slime7"), for: UIControl.State.normal)
        panicButton.contentMode = .scaleAspectFit
        gloomyButton.setImage(UIImage(named: "slime8"), for: UIControl.State.normal)
        gloomyButton.contentMode = .scaleAspectFit
        sadButton.setImage(UIImage(named: "slime9"), for: UIControl.State.normal)
        sadButton.contentMode = .scaleAspectFit
        
        resetButton.backgroundColor = .white
        resetButton.tintColor = .systemPink
        resetButton.layer.cornerRadius = 10
        resetButton.layer.borderWidth = 1
        resetButton.layer.borderColor = UIColor.black.cgColor
        
        happyLabel.textAlignment = .center
        let count1 = UserDefaults.standard.integer(forKey: "count1")
        happyLabel.text = "행복해 \(count1)"
        happyLabel.numberOfLines = 1
        happyLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        loveLabel.textAlignment = .center
        let count2 = UserDefaults.standard.integer(forKey: "count2")
        loveLabel.text = "사랑해 \(count2)"
        loveLabel.numberOfLines = 1
        loveLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        likeLabel.textAlignment = .center
        let count3 = UserDefaults.standard.integer(forKey: "count3")
        likeLabel.text = "좋아해 \(count3)"
        likeLabel.numberOfLines = 1
        likeLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        upsetLabel.textAlignment = .center
        let count4 = UserDefaults.standard.integer(forKey: "count4")
        upsetLabel.text = "속상해 \(count4)"
        upsetLabel.numberOfLines = 1
        upsetLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        boredLabel.textAlignment = .center
        let count5 = UserDefaults.standard.integer(forKey: "count5")
        boredLabel.text = "심심해 \(count5)"
        boredLabel.numberOfLines = 1
        boredLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        sleepyLabel.textAlignment = .center
        let count6 = UserDefaults.standard.integer(forKey: "count6")
        sleepyLabel.text = "지루해 \(count6)"
        sleepyLabel.numberOfLines = 1
        sleepyLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        panicLabel.textAlignment = .center
        let count7 = UserDefaults.standard.integer(forKey: "count7")
        panicLabel.text = "당황해 \(count7)"
        panicLabel.numberOfLines = 1
        panicLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        gloomyLabel.textAlignment = .center
        let count8 = UserDefaults.standard.integer(forKey: "count8")
        gloomyLabel.text = "진지해 \(count8)"
        gloomyLabel.numberOfLines = 1
        gloomyLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        sadLabel.textAlignment = .center
        let count9 = UserDefaults.standard.integer(forKey: "count9")
        sadLabel.text = "우울해 \(count9)"
        sadLabel.numberOfLines = 1
        sadLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        
    }

    @IBAction func happyButtonTapped(_ sender: UIButton) {
        var num = UserDefaults.standard.integer(forKey: "count1")
        num += 1
        let value = num
        UserDefaults.standard.set(value, forKey: "count1")
        happyLabel.text = "행복해 \(value)"
    }
    @IBAction func loveButtonTapped(_ sender: UIButton) {
        var num = UserDefaults.standard.integer(forKey: "count2")
        num += 1
        let value = num
        UserDefaults.standard.set(value, forKey: "count2")
        loveLabel.text = "사랑해 \(value)"

    }
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count3")
        let num = UserDefaults.standard.integer(forKey: "count3")
        likeLabel.text = "좋아해 \(num)"
    }
    
    @IBAction func upsetButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count4")
        let num = UserDefaults.standard.integer(forKey: "count4")
        upsetLabel.text = "속상해 \(num)"
    }
    @IBAction func boredButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count5")
        let num = UserDefaults.standard.integer(forKey: "count5")
        boredLabel.text = "심심해 \(num)"
    }
    @IBAction func sleepyButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count6")
        let num = UserDefaults.standard.integer(forKey: "count6")
        sleepyLabel.text = "지루해 \(num)"
    }
    
    @IBAction func panicButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count7")
        let num = UserDefaults.standard.integer(forKey: "count7")
        panicLabel.text = "당황해 \(num)"
    }
    @IBAction func gloomyButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count8")
        let num = UserDefaults.standard.integer(forKey: "count8")
        gloomyLabel.text = "진지해 \(num)"
    }
    @IBAction func sadButtonTapped(_ sender: UIButton) {
        count += 1
        UserDefaults.standard.set(count, forKey: "count9")
        let num = UserDefaults.standard.integer(forKey: "count9")
        sadLabel.text = "우울해 \(num)"
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "count1")
        let num = UserDefaults.standard.integer(forKey: "count1")
        happyLabel.text = "행복해 \(num)"
        UserDefaults.standard.removeObject(forKey: "count2")
        let num2 = UserDefaults.standard.integer(forKey: "count2")
        loveLabel.text = "사랑해 \(num2)"
        UserDefaults.standard.removeObject(forKey: "count3")
        let num3 = UserDefaults.standard.integer(forKey: "count3")
        likeLabel.text = "좋아해 \(num3)"
        UserDefaults.standard.removeObject(forKey: "count4")
        let num4 = UserDefaults.standard.integer(forKey: "count4")
        upsetLabel.text = "속상해 \(num4)"
        UserDefaults.standard.removeObject(forKey: "count5")
        let num5 = UserDefaults.standard.integer(forKey: "count5")
        boredLabel.text = "심심해 \(num5)"
        UserDefaults.standard.removeObject(forKey: "count6")
        let num6 = UserDefaults.standard.integer(forKey: "count6")
        sleepyLabel.text = "지루해 \(num6)"
        UserDefaults.standard.removeObject(forKey: "count7")
        let num7 = UserDefaults.standard.integer(forKey: "count7")
        panicLabel.text = "당황해 \(num7)"
        UserDefaults.standard.removeObject(forKey: "count8")
        let num8 = UserDefaults.standard.integer(forKey: "count8")
        gloomyLabel.text = "진지해 \(num8)"
        UserDefaults.standard.removeObject(forKey: "count9")
        let num9 = UserDefaults.standard.integer(forKey: "count9")
        sadLabel.text = "우울해 \(num9)"

        count = 0
    }
    
}

