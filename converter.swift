import UIKit

class TextConverterViewController: UIViewController {
    let textField = UITextField()
    let convertButton = UIButton()
    let resultLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.placeholder = "Enter text"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 40)
        view.addSubview(textField)
        
        convertButton.setTitle("Convert", for: .normal)
        convertButton.setTitleColor(.white, for: .normal)
        convertButton.backgroundColor = .blue
        convertButton.frame = CGRect(x: 20, y: 160, width: view.frame.width - 40, height: 40)
        convertButton.addTarget(self, action: #selector(convertButtonTapped), for: .touchUpInside)
        view.addSubview(convertButton)
        
        resultLabel.textAlignment = .center
        resultLabel.frame = CGRect(x: 20, y: 220, width: view.frame.width - 40, height: 40)
        view.addSubview(resultLabel)
    }
    
    @objc func convertButtonTapped() {
        guard let text = textField.text else {
            return
        }
        
        let uppercasedText = text.uppercased()
        
        let lowercasedText = text.lowercased()
        
        let reversedText = String(text.reversed())
        
        resultLabel.text = """
        Uppercase: \(uppercasedText)
        Lowercase: \(lowercasedText)
        Reversed: \(reversedText)
        """
    }
}

let textConverterViewController = TextConverterViewController()
// Replace with your view controller presentation logic
// For example, if you're using UIKit:
let navigationController = UINavigationController(rootViewController: textConverterViewController)
navigationController.modalPresentationStyle = .fullScreen
// Present the navigation controller
// ...
