import UIKit

class ViewController: UIViewController {
    // 1. 선언
    
    let titleLabel = UILabel()
    let subTitleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setConstraints()
    }
    
    func configure() {
        view.backgroundColor = .red
        titleLabel.text = "테스트"
        titleLabel.backgroundColor = .yellow
        
        subTitleLabel.text = "서브 타이틀"
        subTitleLabel.backgroundColor = .blue
    }
    
    func setConstraints() {
        
        // 2. 뷰에 추가해야 한다.
        view.addSubview(titleLabel)
        view.addSubview(subTitleLabel)
        
        // 3. 제약조건 설정
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        subTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        // 4. 제약조건 활성화
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

