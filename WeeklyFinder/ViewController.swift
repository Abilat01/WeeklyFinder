//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Danya on 16.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponets = DateComponents()
        dateComponets.day = Int(day)
        dateComponets.month = Int(month)
        dateComponets.year = Int(year)
        
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ru_Ru")
        dateFormater.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponets) else { return }
        
        let weekday = dateFormater.string(from: date)
        
        resultLabel.text = weekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

