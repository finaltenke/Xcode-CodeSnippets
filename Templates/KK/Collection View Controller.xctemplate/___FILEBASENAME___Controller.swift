//___FILEHEADER___

import SnapKit
import MJRefresh

class ___VARIABLE_productName___Controller: UIViewController {
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: pt(100), height: pt(100))
        layout.headerReferenceSize = CGSize(width: view.width, height: 44)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.isPagingEnabled = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView.register(___VARIABLE_productName___Header.self, ofKind: .header)
        collectionView.register(___VARIABLE_productName___Footer.self, ofKind: .footer)
        collectionView.register(___VARIABLE_productName___CCell.self)
        
        let header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(onHeaderRefresh))
        header.setTitle("下拉可以刷新", for: .idle)
        header.setTitle("松开立即刷新", for: .pulling)
        header.setTitle("正在刷新数据中...", for: .refreshing)
        header.lastUpdatedTimeLabel?.isHidden = true
        collectionView.mj_header = header
        
        let footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(onFooterRefresh))
        footer.setTitle("上拉可以加载更多", for: .idle)
        footer.setTitle("松开立即加载更多", for: .pulling)
        footer.setTitle("拼命加载中...",   for: .refreshing)
        footer.setTitle("没有更多内容了～", for: .noMoreData)
        collectionView.mj_footer = footer
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

// MARK: - UICollectionViewDataSource
extension ___VARIABLE_productName___Controller: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusable(___VARIABLE_productName___CCell.self, for: indexPath)
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension ___VARIABLE_productName___Controller: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusable(___VARIABLE_productName___Header.self, ofKind: .header, for: indexPath)
            return header
        case UICollectionView.elementKindSectionFooter:
            let footer = collectionView.dequeueReusable(___VARIABLE_productName___Footer.self, ofKind: .footer, for: indexPath)
            return footer
        default:
            return UICollectionReusableView()
        }
    }
}

// MARK: - Events
extension ___VARIABLE_productName___Controller {
    @objc private func onHeaderRefresh() {
        
    }
    
    @objc private func onFooterRefresh() {
        
    }
}

// MARK: - UI
extension ___VARIABLE_productName___Controller {
    private func setupViews() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
