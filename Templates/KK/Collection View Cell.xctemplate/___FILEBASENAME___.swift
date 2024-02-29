//___FILEHEADER___

import Foundation

/// CCell is mean UICollectionViewCell
class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI
extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        contentView.backgroundColor = .clear
    }
}
