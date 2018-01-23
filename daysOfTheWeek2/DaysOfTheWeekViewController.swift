//
//  DaysOfTheWeekViewController.swift
//  daysOfTheWeek2
//
//  Created by Jade Thomason on 1/23/18.
//  Copyright © 2018 Jade Thomason. All rights reserved.
//

import UIKit

class DaysOfTheWeekViewController: UIViewController {

    @IBOutlet weak var daysOfTheWeek: UITableView!
    
    var daysOfTheWeekArray = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daysOfTheWeek.dataSource = self
        daysOfTheWeek.delegate = self

    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}


extension DaysOfTheWeekViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfTheWeekArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = daysOfTheWeekArray[indexPath.row]
        cell.textLabel?.text = day
        
        return cell
    }
    // When the user taps didSelect on a row ( or tapps) we are giong to see the indexPath logged into the consol - THIS IS JUST FOR US for now.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
}


