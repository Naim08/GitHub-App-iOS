//
//  FilterViewController.swift
//  GithubDemo
//
//  Created by Md Miah on 2/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var languages: [[String:String]]!
    override func viewDidLoad() {
        super.viewDidLoad()
        languages = githubLanguages()
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func githubLanguages() -> [[String:String]] {
        return [["name" : "Javascipt", "code": "Javascipt"],
            ["name" : "Python", "code": "Python"],
            ["name" : "C++", "code": "C++"],
            ["name" : "Java", "code": "Java"]]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FilterViewController: UITableViewDelegate, UITableViewDataSource  {
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LanguageCell", forIndexPath: indexPath) as! LanguageCell
        cell.languageLabel.text = languages[indexPath.row]["name"]
        return cell
    }
    
}
