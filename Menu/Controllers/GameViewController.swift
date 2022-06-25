//
//  GameViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/23/22.
//

import UIKit

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentQuestion?.answers.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answersTableViewCell") as! AnswersTableViewCell
        cell.answersLabel.text = currentQuestion?.answers[indexPath.row].text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let question = currentQuestion else {
            return
        }
        let answer = question.answers[indexPath.row]
        if checkAnswer(answer: answer, question: question) {
            if let index = gameModels.firstIndex(where: {$0.text == question.text}) {
                if index < (gameModels.count - 1) {
                    let nextQuestion = gameModels[index+1]
                    configureUI(question: nextQuestion)
                    tableView.reloadData()
                }
                else {
                    let alert = UIAlertController(title: "Правильно", message: "Вы выбрали правильный вариант", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Продолжить", style: .cancel, handler: nil))
                    present(alert, animated: true)
                }
            }
        } else {
            let alert = UIAlertController(title: "Неправильно", message: "Вы выбрали неправильный вариант", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Пропустить", style: .cancel, handler: nil))
            present(alert, animated: true)
        }
    }

    var gameModels = [Question]()
    var currentQuestion: Question?
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupQuestions()
        configureUI(question: gameModels.first!)
    }
    
    private func configureUI(question: Question) {
        questionLabel.text = question.text
        
        currentQuestion = question
        table.delegate = self
        table.dataSource = self
        table.reloadData()
    }
    
    private func checkAnswer(answer: Answer, question: Question) -> Bool {
        return question.answers.contains(where: { $0.text == answer.text }) && answer.correct
    }
    
    //private func checkAnswer
    
    private func setupQuestions() {
        gameModels.append(Question(text: "Как называется сыр, на основе которого готовят знаменитый многослойный итальянский десерт Тирамису?", answers: [
            Answer(text: "Рикотта", correct: false),
            Answer(text: "Моцарелла", correct: false),
            Answer(text: "Маскарпоне", correct: true)]))
        gameModels.append(Question(text: "Какая страна считается родиной чизкейка?", answers: [
            Answer(text: "Древняя Греция", correct: true),
            Answer(text: "США", correct: false),
            Answer(text: "Франция", correct: false)]))
        gameModels.append(Question(text: "Марципан - это восхитительный кондитерский продукт из ...", answers: [
            Answer(text: "арахиса", correct: false),
            Answer(text: "миндаля", correct: true),
            Answer(text: "вишни", correct: false)]))
        gameModels.append(Question(text: "Какое пирожное в Германии иногда называют устаревшими названиями, которые переводятся с немецкого как любовная косточка, заячья лапа и кофейный брусок?", answers: [
            Answer(text: "Капкейк", correct: false),
            Answer(text: "Эклер", correct: true),
            Answer(text: "Профитроль", correct: false)]))
        gameModels.append(Question(text: "Какое популярное французское блюдо стало названием известного полнометражного мультфильма о приключениях крысы в Париже?", answers: [
            Answer(text: "Рататуй", correct: true),
            Answer(text: "Птифур", correct: false),
            Answer(text: "Тимбаль", correct: false)]))
    }
}


struct Question {
    let text: String
    let answers: [Answer]
}

struct Answer {
    let text: String
    let correct: Bool
}
