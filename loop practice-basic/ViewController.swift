//
//  ViewController.swift
//  loop practice-basic
//
//  Created by Ryan Lin on 2022/9/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var patternSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var patternLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func numberChangeSlider(_ sender: UISlider) {
        
        sender.value = sender.value.rounded()
        let number = Int(sender.value)
        numberLabel.text = String(number)
        
        var content = ""
        
        if patternSegmentedControl.selectedSegmentIndex == 0{
            for _ in 1...number{
                for _ in 1...number{
                    content += "❄️"
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 1{
            for i in 1...number{
                for _ in 1...number{
                    if i == 5{
                        content += "⛄️"
                    }
                    else{
                        content += "❄️"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 2{
            for _ in 1...number{
                for j in 1...number{
                    if j == 5{
                        content += "⛄️"
                    }
                    else{
                        content += "❄️"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 3{
            for i in 1...number{
                for j in 1...number{
                    if i+j == number+1{
                        content += "☀️"
                    }
                    else{
                        content += "💧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 4{
            for i in 1...number{
                for j in 1...number{
                    
                    if i == j{
                        content += "☀️"
                    }
                    else if i != j{
                        content += "💧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 5{
            for i in 1...number{
                for j in 1...number{
                    if i == j || i+j == number+1{
                        content += "☀️"
                    }
                    else{
                        content += "💧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 6{
            for i in 1...number{
                for j in 1...number{
                    if i == (number+1)/2 && j == (number+1)/2{
                        content += "🌈"
                    }
                    else if i == j || i+j == number + 1{
                        content += "☀️"
                    }
                    else{
                        content += "💧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 7{
            for i in 1...number{
                for j in 1...number{
                    if i == (number+1)/2 || j == (number+1)/2{
                        content += "☀️"
                    }
                    else{
                        content += "💧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 8{
            for i in 1...number{
                for j in 1...number{
                    if i == number || j == number || i == 1 || j == 1{
                        content += "🐳"
                    }
                    else{
                        content += "🫧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 9{
            for i in 1...number{
                for j in 1...number{
                    //讓相加是偶數的位置變鯨魚
                    if (i+j)%2==0{
                        content += "🐳"
                    }
                    else{
                        content += "🫧"
                    }
                }
                content += "\n"
            }
        }
        else if patternSegmentedControl.selectedSegmentIndex == 10{
            let emojis = ["☀️","🌈","🫧","💦","🐳"]
            for i in 1...number{
                for _ in 1...number{
                    content += emojis[i-1]
                }
                content += "\n"
            }
        }
        //把content字串存入patternLabel.text
        patternLabel.text = content
    }
}
