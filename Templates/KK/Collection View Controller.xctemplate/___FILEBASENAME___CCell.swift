//___FILEHEADER___

import Foundation

/// CCell is mean UICollectionViewCell
class ___VARIABLE_productName___CCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI
extension ___VARIABLE_productName___CCell {
    func setupViews() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
    }
}
