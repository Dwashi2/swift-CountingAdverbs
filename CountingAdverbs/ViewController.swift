//
//  ViewController.swift
//  CountingAdverbs
//
//  Created by Daniel Washington Ignacio on 23/06/21.
//

/*
 Create a function that counts the number of adverbs in a sentence. An adverb is a word that ends with ly.

 Examples

 countAdverbs("She ran hurriedly towards the stadium.") ➞ 1

 countAdverbs("She ate the lasagna heartily and noisily.") ➞ 2

 countAdverbs("He hates potatoes.") ➞ 0

 countAdverbs("He was happily, crazily, foolishly over the moon.") ➞ 3
 Notes

 Do NOT count words where the ly is in the beginning or the middle (e.g. Lysol, Illya).
 For the purpose of this exercise, ignore the nuances of the English language (some adjectives also end in ly).
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.countAdverbs("She ran hurriedly towards the stadium."))
        print(self.countAdverbs("She ate the lasagna heartily and noisily."))
        print(self.countAdverbs("He hates potatoes."))
        print(self.countAdverbs("He was happily, crazily, foolishly over the moon."))
    }
    
    func countAdverbs(_ sentence: String) -> Int {
        var count: Int = 0
        for n in sentence.components(separatedBy: " "){
            if n.contains("ly"){
                count = count + 1
            }
        }
        return count
    }


}

