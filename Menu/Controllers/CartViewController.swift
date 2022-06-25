




import UIKit
var sum = 0

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
        cell.cartItemName.text = cartItems[indexPath.row].itemName
        cell.cartItemPrice.text = String(cartItems[indexPath.row].itemPrice)
        sum = cartItems[indexPath.row].itemPrice
        
        return cell
    }
    

    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cartIsEmptyView: UIView!
    @IBOutlet weak var orderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderView.isHidden = true
        cartIsEmpty()
        title = "Корзина"
        
        tableView.delegate = self
        tableView.dataSource = self
        

//        updateCart()
        
        NotificationCenter.default.addObserver(self, selector: #selector(addToCart), name: .itemHasBeenAdded, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateCartCounter), name: .cartCountHasBeenAdded, object: cartItems.count)
        
        NotificationCenter.default.addObserver(self, selector: #selector(removeFromCart), name: .itemHasBeenRemoved, object: nil)
    }
   
    @objc
    func removeFromCart() {
        tableView.reloadData()
    }
    
    @objc
    func addToCart() {
        updateCartCounter()
        cartIsEmpty()
        countSum()
            
            tableView.reloadData()
        }
    
    @IBAction func didTapGoToMenuButton(_ sender: Any) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func didTapOrderButton(_ sender: Any) {
        orderMade()
    }
    
    @objc
    func updateCartCounter() {
        navigationController?.tabBarItem.badgeValue = String(cartItems.count)
        navigationController?.tabBarItem.badgeColor = .red
        tableView.reloadData()
        print(cartItems.count)
    }
    

    // MARK: - Table view data source

    func cartIsEmpty() {
        if cartItems.count > 0 {
            cartIsEmptyView.isHidden = true
            orderView.isHidden = false
        } 
        tableView.reloadData()
    }
    
    func countSum() {
        sumLabel.text = String(sum)
    }
    
    func orderMade(){
        
        let alert = UIAlertController(title: "Ваш заказ принят", message: "Пока вы ждете доставку, предлагаем вам скоротать время, сыграв в викторину", preferredStyle: .actionSheet)
        
        let playButton = UIAlertAction(title: "Играть", style: .cancel, handler: { _ in
            let controller = self.storyboard?.instantiateViewController(identifier: "chooseAction") as! UIViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            self.present(controller, animated: true, completion: nil)
        })
        
        let cancelButton = UIAlertAction(title: "Отмена", style: .default, handler: { _ in
            let controller = self.storyboard?.instantiateViewController(identifier: "Home") as! UITabBarController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            self.present(controller, animated: true, completion: nil)
        })
    
        alert.addAction(playButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true)
    }
    
}
