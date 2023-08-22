
//Created by Askar Soronbekov
//Neobis_iOS_UIScreens

import UIKit

class ViewController: UIViewController {
    let weatherButton = UIButton()
    let cryptoButton = UIButton()
    let financeButton = UIButton()
    let travelButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .white

        //button to open weather page
        weatherButton.setTitle("Weather", for: .normal)
        weatherButton.setTitleColor(.systemBlue, for: .normal)
        weatherButton.addTarget(self, action: #selector(openWeatherPage), for: .touchUpInside)
        
        //button to open crypto page
        cryptoButton.setTitle("Crypto", for: .normal)
        cryptoButton.setTitleColor(.systemBlue, for: .normal)
        cryptoButton.addTarget(self, action: #selector(openCryptoPage), for: .touchUpInside)
        
        //button to open finance page
        financeButton.setTitle("Finance", for: .normal)
        financeButton.setTitleColor(.systemBlue, for: .normal)
        financeButton.addTarget(self, action: #selector(openFinancePage), for: .touchUpInside)
        
        //button to open travel page
        travelButton.setTitle("Travel", for: .normal)
        travelButton.setTitleColor(.systemBlue, for: .normal)
        travelButton.addTarget(self, action: #selector(openTravelPage), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [weatherButton, cryptoButton, financeButton, travelButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func openWeatherPage() {
        let weatherViewController = WeatherViewController()
        navigationController?.pushViewController(weatherViewController, animated: true)
    }

    @objc func openCryptoPage() {
        let cryptoViewController = CryptoMainTabBar()
        navigationController?.pushViewController(cryptoViewController, animated: true)
    }
    
    @objc func openFinancePage() {
        let financeViewController = FinanceMainTabBar()
        navigationController?.pushViewController(financeViewController, animated: true)
    }
    
    @objc func openTravelPage() {
        let travelViewController = TravelViewController()
        navigationController?.pushViewController(travelViewController, animated: true)
    }
}
