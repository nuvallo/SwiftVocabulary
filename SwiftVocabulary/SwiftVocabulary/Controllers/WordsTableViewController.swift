//
//  WordsTableViewController.swift
//  WordsTableViewController
//
//  Created by Tyler Miller on 10/20/21.
//

import UIKit

class WordsTableViewController: UITableViewController {

    let vocabwords:[VocabularyWord] = [VocabularyWord(word: "bed", definition: "thing to sleep on"),
                                       VocabularyWord(word: "phone", definition: "communication device"),
                                       VocabularyWord(word: "keyboard", definition: "device to type words on")]
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
