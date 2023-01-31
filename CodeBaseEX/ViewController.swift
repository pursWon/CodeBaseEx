import UIKit

class ViewController: UIViewController {
    // 1. 선언
    let rainbowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 20
        stackView.axis = .vertical
        stackView.backgroundColor = .gray
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setConstraints()
    }
    
    func setConstraints() {
        
        // 2. 뷰에 추가해야 한다.
        view.addSubview(rainbowStackView)
        rainbowStackView.addArrangedSubview(redView)
        rainbowStackView.addArrangedSubview(orangeView)
        rainbowStackView.addArrangedSubview(yellowView)
        rainbowStackView.addArrangedSubview(greenView)
        
        // 3. 제약조건 설정
        rainbowStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        rainbowStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        rainbowStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        rainbowStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        
        redView.widthAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 1).isActive = true
        orangeView.widthAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 2).isActive = true
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor, multiplier: 3).isActive = true
        greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 4).isActive = true
        
        // 4. 제약조건 활성화
        rainbowStackView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
    }
}

