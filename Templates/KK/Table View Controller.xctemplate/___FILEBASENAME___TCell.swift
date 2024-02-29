//___FILEHEADER___

import Foundation

/// TCell is mean UITableViewCell
class ___VARIABLE_productName___TCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UI
extension ___VARIABLE_productName___TCell {
    func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        contentView.backgroundColor = .clear
    }
}
