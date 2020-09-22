//
//  Farmer.swift
//  homework4MVC
//
//  Created by Hy Horng on 9/22/20.
//  Copyright © 2020 Hy Horng. All rights reserved.
//

import Foundation

class Fruit {
    let name: String
    let description: String
    let profile: String
    
    init(name: String, description: String, profile: String) {
        self.name = name
        self.description = description
        self.profile = profile
    }
    
    func sweetFruits() -> [Fruit] {
        return [
            Fruit(name: "ផ្លែប៉ោម", description: "ផ្លែប៉ោមមានផ្ទុកជាតិអាសុីត​ organic ។​ ញ៉ាំផ្លែប៉ោមពេលយប់ធ្វើឲ្យចាល់ជាតិអាសុីត។​ ដូច្នេះ​អ្នកគួរតែញ៉ាំនៅពេលថ្ងៃទើបល្អ​", profile: "apple"),
            Fruit(name: "ផ្លែចេក", description: "ញ៉ាំចេកធ្វើឲ្យសុខភាពល្អ និង​ជួយទ្រទ្រង់សារពាង្គកាយរបស់យើង", profile: "banana"),
            Fruit(name: "ផ្លែប័រ", description: "ញ៉ាំផ្លប័រ​ជួយសម្រួលដល់ក្រពះយើង", profile: "bure"),
            Fruit(name: "ផ្លែក្រូច", description: "ពេលញ៉ាំក្រូចធ្វើឲ្យយើងមានអារម្មណ៏ថាឆ្អែត", profile: "orange")
        ]
    }
    
    func spicyFruits() -> [Fruit] {
        return [
            Fruit(name: "ម្ទេស", description: "ផ្លែប៉ោមមានផ្ទុកជាតិអាសុីត​ organic ។​ ញ៉ាំផ្លែប៉ោមពេលយប់ធ្វើឲ្យចាល់ជាតិអាសុីត។​ ដូច្នេះ​អ្នកគួរតែញ៉ាំនៅពេលថ្ងៃទើបល្អ​", profile: "spicy0"),
            Fruit(name: "ម្រេច", description: "ញ៉ាំចេកធ្វើឲ្យសុខភាពល្អ និង​ជួយទ្រទ្រង់សារពាង្គកាយរបស់យើង", profile: "spicy1"),
            Fruit(name: "ខ្ទឹមបារាំង", description: "ញ៉ាំផ្លប័រ​ជួយសម្រួលដល់ក្រពះយើង", profile: "spicy2")
        ]
    }
    
    func vegetables() -> [Fruit] {
        return [
            Fruit(name: "ស្ពៃតឿរ", description: "ផ្លែប៉ោមមានផ្ទុកជាតិអាសុីត​ organic ។​ ញ៉ាំផ្លែប៉ោមពេលយប់ធ្វើឲ្យចាល់ជាតិអាសុីត។​ ដូច្នេះ​អ្នកគួរតែញ៉ាំនៅពេលថ្ងៃទើបល្អ​", profile: "vegetable0"),
            Fruit(name: "ស្ពៃខាត់ណា", description: "ញ៉ាំចេកធ្វើឲ្យសុខភាពល្អ និង​ជួយទ្រទ្រង់សារពាង្គកាយរបស់យើង", profile: "vegetable1"),
            Fruit(name: "ត្រសក់", description: "ញ៉ាំផ្លប័រ​ជួយសម្រួលដល់ក្រពះយើង", profile: "vegetable2"),
            Fruit(name: "ត្រកួន", description: "ពេលញ៉ាំក្រូចធ្វើឲ្យយើងមានអារម្មណ៏ថាឆ្អែត", profile: "vegetable3")
        ]
    }
}
