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
                
                Item(itemName: "Эспрессо", itemPrice: 9),
                Item(itemName: "Американо", itemPrice: 11),
                Item(itemName: "Фильтр спешлти", itemPrice: 15),
                Item(itemName: "Фильтр кофе", itemPrice: 10),
                Item(itemName: "Капучино", itemPrice: 15),
                Item(itemName: "Латте", itemPrice: 16),
                Item(itemName: "Флейт-уайт", itemPrice: 17),
                Item(itemName: "Айс Американо", itemPrice: 16),
                Item(itemName: "Айс капучино", itemPrice: 21),
                Item(itemName: "Айс латте", itemPrice: 22),
                Item(itemName: "Эспрессо тоник", itemPrice: 25),
                Item(itemName: "Айс мокко", itemPrice: 25),
                Item(itemName: "Фраппучино", itemPrice: 27)]),
    
    // Холодные напитки
    CategoryI(categoryName: "Холодные напитки", categoryImage: "coldDrinksIcon", arrow: "arrow",categoryItems: [
                
                Item(itemName: "Лимонад манго-маракуйя", itemPrice: 24),
                Item(itemName: "Мохито в ассортименте", itemPrice: 21),
                Item(itemName: "Айс ти фруктовый", itemPrice: 22),
                Item(itemName: "Айс ти ягодный", itemPrice: 22),
                Item(itemName: "Айс ти глинтвейн", itemPrice: 22),
                Item(itemName: "Айс ти смородина", itemPrice: 22),
                Item(itemName: "Айс ти пряный микс", itemPrice: 22)]),
    
    // Завтраки
    CategoryI(categoryName: "Завтраки", categoryImage: "breakfastIcon", arrow: "arrow", categoryItems: [
               
                Item(itemName: "Сырники", itemPrice: 18),
                Item(itemName: "Омлет королевский", itemPrice: 25),
                Item(itemName: "Омлет королевский с овощами", itemPrice: 30),
                Item(itemName: "Баварский завтрак", itemPrice: 28),
                Item(itemName: "Английский завтрак", itemPrice: 26),
                Item(itemName: "Блинчики с шоколадом и бананом", itemPrice: 17),
                Item(itemName: "Блинчики со сгущенкой", itemPrice: 17),
                Item(itemName: "Гренки с сыром", itemPrice: 19),
                Item(itemName: "Овсяная каша", itemPrice: 17)]),
    
    // Салаты
    CategoryI(categoryName: "Салаты", categoryImage: "saladIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Греческий салат", itemPrice: 26),
                Item(itemName: "Салат Цезарь", itemPrice: 33),
                Item(itemName: "Салат с баклажанами", itemPrice: 21),
                Item(itemName: "Теплый салат с куриной грудкой", itemPrice: 24),
                Item(itemName: "Салат с ростбифом", itemPrice: 39),
                Item(itemName: "Салат с красной фасолью", itemPrice: 26)]),
    
    // Супы
    CategoryI(categoryName: "Супы", categoryImage: "soupIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Сырный крем суп", itemPrice: 27),
                Item(itemName: "Грибной крем суп", itemPrice: 20),
                Item(itemName: "Кукурузный крем суп", itemPrice: 23),
                Item(itemName: "Тыквенный крем суп", itemPrice: 17)]),
  
    // Сэндвичи
    CategoryI(categoryName: "Сэндвичи", categoryImage: "sandwichIcon", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Сэндвич клаб с курицей", itemPrice: 25),
                Item(itemName: "Сэндвич клаб с салями", itemPrice: 24),
                Item(itemName: "Сэндвич клаб с тунцом", itemPrice: 19),
                Item(itemName: "Сэндвич с ростбифом", itemPrice: 35),
                Item(itemName: "Сэндвич Цезарь", itemPrice: 24),
                Item(itemName: "ЗОЖ сэндвич овощной", itemPrice: 18),
                Item(itemName: "ЗОЖ сэндвич с куриной грудкой", itemPrice: 27),
                Item(itemName: "ЗОЖ сэндвич с омлетом", itemPrice: 22),
                Item(itemName: "ЗОЖ сэндвич с тунцом", itemPrice: 25),
                Item(itemName: "Жульен на булочке", itemPrice: 43)]),
    
    // Пицца
    CategoryI(categoryName: "Пицца", categoryImage: "top6", arrow: "arrow", categoryItems: [
                
                Item(itemName: "Пицца Куатро", itemPrice: 96),
                Item(itemName: "Пицца Чикен Песто", itemPrice: 75),
                Item(itemName: "Пицца Маргарита", itemPrice: 60),
                Item(itemName: "Пицца Фунги", itemPrice: 70),
                Item(itemName: "Пицца Стейк", itemPrice: 85),
                Item(itemName: "Пицца Пепперони", itemPrice: 65)])]

class MenuViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Меню"
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

