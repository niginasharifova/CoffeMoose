//
//  ViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/11/22.
//

import UIKit

var categories: [CategoryI] = [
    
    // Кофе
    CategoryI(categoryName: "Кофе", categoryImage: "coffeeIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Эспрессо", itemPrice: "9с."),
                Item(itemName: "Американо", itemPrice: "11с."),
                Item(itemName: "Фильтр спешлти", itemPrice: "15с."),
                Item(itemName: "Фильтр кофе", itemPrice: "10с."),
                Item(itemName: "Капучино", itemPrice: "15с."),
                Item(itemName: "Латте", itemPrice: "16с."),
                Item(itemName: "Флейт-уайт", itemPrice: "17с."),
                Item(itemName: "Айс Американо", itemPrice: "Цена: 16с."),
                Item(itemName: "Айс капучино", itemPrice: "21с."),
                Item(itemName: "Айс латте", itemPrice: "22с."),
                Item(itemName: "Эспрессо тоник", itemPrice: "25с."),
                Item(itemName: "Айс мокко", itemPrice: "25с."),
                Item(itemName: "Фраппучино", itemPrice: "27с.")]),
    
    // Холодные напитки
    CategoryI(categoryName: "Холодные напитки", categoryImage: "drinkIcon", arrow: "arrow",categoryItems: [
                
                Item(itemName: "Лимонад манго-маракуйя", itemPrice: "24с."),
                Item(itemName: "Мохито в ассортименте", itemPrice: "21с."),
                Item(itemName: "Айс ти фруктовый", itemPrice: "22с."),
                Item(itemName: "Айс ти ягодный", itemPrice: "22с."),
                Item(itemName: "Айс ти глинтвейн", itemPrice: "22с."),
                Item(itemName: "Айс ти смородина", itemPrice: "22с."),
                Item(itemName: "Айс ти пряный микс", itemPrice: "22с.")]),
    
    // Завтраки
    CategoryI(categoryName: "Завтраки", categoryImage: "breakfastIcon", arrow: "arrow", categoryItems: [
               
                Item(itemName: "Сырники", itemPrice: "18с."),
                Item(itemName: "Омлет королевский", itemPrice: "25с."),
                Item(itemName: "Омлет королевский с овощами", itemPrice: "30с."),
                Item(itemName: "Баварский завтрак", itemPrice: "28с."),
                Item(itemName: "Английский завтрак", itemPrice: "26с."),
                Item(itemName: "Блинчики с шоколадом и бананом", itemPrice: "17с."),
                Item(itemName: "Блинчики со сгущенкой", itemPrice: "17с."),
                Item(itemName: "Гренки с сыром", itemPrice: "19с."),
                Item(itemName: "Овсяная каша", itemPrice: "17с.")]),
    
    // Салаты
    CategoryI(categoryName: "Салаты", categoryImage: "saladIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Греческий салат", itemPrice: "26с."),
                Item(itemName: "Салат Цезарь", itemPrice: "33с."),
                Item(itemName: "Салат с баклажанами", itemPrice: "21с."),
                Item(itemName: "Теплый салат с куриной грудкой", itemPrice: "24с."),
                Item(itemName: "Салат с ростбифом", itemPrice: "39с."),
                Item(itemName: "Салат с красной фасолью", itemPrice: "26с.")]),
    
    // Супы
    CategoryI(categoryName: "Супы", categoryImage: "soupIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Сырный крем суп", itemPrice: "27с."),
                Item(itemName: "Грибной крем суп", itemPrice: "20с."),
                Item(itemName: "Кукурузный крем суп", itemPrice: "23с."),
                Item(itemName: "Тыквенный крем суп", itemPrice: "17с.")]),
  
    // Сэндвичи
    CategoryI(categoryName: "Сэндвичи", categoryImage: "sandwichIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Сэндвич клаб с курицей", itemPrice: "25с."),
                Item(itemName: "Сэндвич клаб с салями", itemPrice: "24с."),
                Item(itemName: "Сэндвич клаб с тунцом", itemPrice: "19с."),
                Item(itemName: "Сэндвич с ростбифом", itemPrice: "35с."),
                Item(itemName: "Сэндвич Цезарь", itemPrice: "24с."),
                Item(itemName: "ЗОЖ сэндвич овощной", itemPrice: "18с."),
                Item(itemName: "ЗОЖ сэндвич с куриной грудкой", itemPrice: "27с."),
                Item(itemName: "ЗОЖ сэндвич с омлетом", itemPrice: "22с."),
                Item(itemName: "ЗОЖ сэндвич с тунцом", itemPrice: "25с."),
                Item(itemName: "Жульен на булочке", itemPrice: "43с.")]),
    
    // Пицца
    CategoryI(categoryName: "Пицца", categoryImage: "pizzaIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Пицца Куатро", itemPrice: "96с."),
                Item(itemName: "Пицца Чикен Песто", itemPrice: "75с."),
                Item(itemName: "Пицца Маргарита", itemPrice: "60с."),
                Item(itemName: "Пицца Фунги", itemPrice: "70с."),
                Item(itemName: "Пицца Стейк", itemPrice: "85с."),
                Item(itemName: "Пицца Пепперони", itemPrice: "65с.")])]

class MenuViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category = categories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.categoryImageView.image = UIImage(named: category.categoryImage)
        cell.categoryNameLabel.text = category.categoryName
        cell.arrowImage.image = UIImage(named: category.arrow)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuToMenuItem",
        let vc = segue.destination as? MenuItemTableViewController,
        let indexPath = tableView.indexPathForSelectedRow {
            vc.title = categories[indexPath.row].categoryName
            vc.category = categories[indexPath.row]
            }
    }
}

