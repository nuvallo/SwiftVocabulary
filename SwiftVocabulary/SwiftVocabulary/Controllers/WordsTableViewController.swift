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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabwords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        cell.textLabel?.text = vocabwords[indexPath.row].word
        return cell
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
         if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let vocabWord = segue.destination as? WordsTableViewController else { return }
            
            vocabWord.accessibilityLabel = vocabwords[indexPath.row].definition
        }
        // Pass the selected object to the new view controller.
        
    }
}
