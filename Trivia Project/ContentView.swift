//
//  ContentView.swift
//  Trivia Project
//
//  Created by Skyler on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    
    //    var questions = [
    //        [
    //            "question": "What is 1 + 1?",
    //            "answers" : [
    //                1,
    //                2,
    //                3,
    //                4
    //            ],
    //            "correctAnswer": 2
    //        ],
    //        [
    //            "question": "What is 2 - 2?",
    //            "answers" : [
    //                0,
    //                2,
    //                -2,
    //                4
    //            ],
    //            "correctAnswer": 0
    //        ]
    //    ]
        
    let questions = [
        "Who invented the idea of science?",
        "Who invented the lightbulb?",
        "Who invented the First Computer?",
        "When was the first door made",
    ]
    
    let answers = [
        [
            ["Aristotle", "Correct"],
            ["Albert Einstein", "wrong"],
            ["Abraham Lincoln", "Wrong"],
            ["Bob", "Wrong"]
        ],
        [
            ["Tom Cruise", "Wrong"],
            ["Barrack obama", "Wrong"],
            ["Thomas Edison", "Correct"],
            ["Donald Trump", "Wrong"]
        ],
        [
            ["Michael Faraday", "Wrong"],
            ["Charles Babbage", "Correct"],
            ["Nikola Tesla", "wrong"],
            ["Marie Curie", "Wrong"]
        ],
        [
            ["1500 B.C", "Wrong"],
            ["5000 B.C", "Wrong"],
            ["3000 B.C", "Correct"],
            ["Today", "Wrong"]
        ]
    ]
    @State private var questionIndex = 0
    
    @State private var message = "Who invented the idea of science?"
    
    var body: some View {
        VStack {
            Text("Science Trivia Game")

            Text(message)

            Button {
                checkAnswer(ans: 0)
            } label: {
                Text(answers[questionIndex][0][0])
            }

            Button {
                checkAnswer(ans: 1)
            } label: {
                Text(answers[questionIndex][1][0])
            }

            Button {
                checkAnswer(ans: 2)
            } label: {
                Text(answers[questionIndex][2][0])
            }

            Button {
                checkAnswer(ans: 3)
            } label: {
                Text(answers[questionIndex][3][0])
            }

            Button {
                nextQuestion()
            } label: {
                Text("Next Question")
            }

        }
    }
    
    func nextQuestion() {
        questionIndex += 1
        message = questions[questionIndex]
    }
    
    func checkAnswer(ans: Int){
        if (answers[questionIndex][ans][1] == "Correct") {
            message = "CORRECT"
        } else {
            message = "WRONG"
        }
    }
}

#Preview {
    ContentView()
}
