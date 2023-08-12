import UIKit

class CryptoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let cryptoTableView = UITableView()

    let cryptoData = [
        "Bitcoin",
        "Ethereum",
        "Cardano",
        "Solana",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Crypto"
        view.backgroundColor = .white

        cryptoTableView.dataSource = self
        cryptoTableView.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cryptoData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CryptoCell", for: indexPath)
        cell.textLabel?.text = cryptoData[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
