import UIKit

class WeatherViewController: UIViewController {
    
    let sunImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ellipse 11")
        
        
        return image
    }()
    
    let sunBeamsImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ellipse 12")
        
        return image
    }()
    
    let gradientLayer = CAGradientLayer()
    let cityLabel = UILabel()
    let weatherLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupViews()
        addConstraints()
    }
    
    func setupGradient() {
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 71/255, green: 191/255, blue: 223/255, alpha: 1.0).cgColor,
            UIColor(red: 74/255, green: 145/255, blue: 255/255, alpha: 1.0).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
    }
    
    func setupViews() {
        sunImage.contentMode = .scaleAspectFit
        sunBeamsImage.contentMode = .scaleAspectFit
        
        sunImage.image = UIImage(named: "Ellipse 11")
        sunBeamsImage.image = UIImage(named: "Ellipse 12")
        
        view.addSubview(sunBeamsImage)
        view.addSubview(sunImage)
        
        cityLabel.text = "Бишкек"
        cityLabel.textColor = .white
        cityLabel.font = .boldSystemFont(ofSize: 20)
        cityLabel.layer.shadowColor = UIColor.black.cgColor
        cityLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cityLabel.layer.shadowRadius = 7
        cityLabel.layer.shadowOpacity = 0.3
        view.addSubview(cityLabel)
        
        weatherLabel.text = " 22°"
        weatherLabel.font = .systemFont(ofSize: 70)
        weatherLabel.textColor = .white
        weatherLabel.layer.shadowColor = UIColor.black.cgColor
        weatherLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        weatherLabel.layer.shadowRadius = 7
        weatherLabel.layer.shadowOpacity = 0.3
        view.addSubview(weatherLabel)
        
    }
    
    func addConstraints() {
        sunImage.translatesAutoresizingMaskIntoConstraints = false
        sunBeamsImage.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sunImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sunImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            sunImage.widthAnchor.constraint(equalToConstant: 96),
            sunImage.heightAnchor.constraint(equalToConstant: 96),
            
            sunBeamsImage.centerXAnchor.constraint(equalTo: sunImage.centerXAnchor),
            sunBeamsImage.centerYAnchor.constraint(equalTo: sunImage.centerYAnchor),
            sunBeamsImage.widthAnchor.constraint(equalToConstant: 250),
            sunBeamsImage.heightAnchor.constraint(equalToConstant: 250),
            
            cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cityLabel.topAnchor.constraint(equalTo: sunImage.bottomAnchor, constant: 20),
            
            weatherLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weatherLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10),
            
        ])
    }
    
}
