
//Created by Askar Soronbekov
//Neobis_iOS_UIScreens

import UIKit

class ViewController: UIViewController {
    let weatherButton = UIButton()
    let cryptoButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .white

        weatherButton.setTitle("Weather", for: .normal)
        weatherButton.setTitleColor(.systemBlue, for: .normal)
        weatherButton.addTarget(self, action: #selector(openWeatherPage), for: .touchUpInside)
        
        cryptoButton.setTitle("Crypto", for: .normal)
        cryptoButton.setTitleColor(.systemBlue, for: .normal)
        cryptoButton.addTarget(self, action: #selector(openCryptoPage), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [weatherButton, cryptoButton])
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
        let weatherVC = WeatherViewController()
        navigationController?.pushViewController(weatherVC, animated: true)
    }

    @objc func openCryptoPage() {
        let cryptoVC = CryptoViewController()
        navigationController?.pushViewController(cryptoVC, animated: true)
    }
}
