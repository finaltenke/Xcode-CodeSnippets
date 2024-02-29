//___FILEHEADER___

import SnapKit
import MJRefresh

class ___VARIABLE_productName___Controller: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .white
        tableView.estimatedRowHeight = pt(44)
        tableView.sectionHeaderHeight = pt(44)
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.register(___VARIABLE_productName___TCell.self)
        
        let header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(onHeaderRefresh))
        header.setTitle("下拉可以刷新", for: .idle)
        header.setTitle("松开立即刷新", for: .pulling)
        header.setTitle("正在刷新数据中...", for: .refreshing)
        header.lastUpdatedTimeLabel?.isHidden = true
        tableView.mj_header = header
        
        let footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(onFooterRefresh))
        footer.setTitle("上拉可以加载更多", for: .idle)
        footer.setTitle("松开立即加载更多", for: .pulling)
        footer.setTitle("拼命加载中...",   for: .refreshing)
        footer.setTitle("没有更多内容了～", for: .noMoreData)
        tableView.mj_footer = footer
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupEvents()
    }
}

// MARK: - UITableViewDataSource
extension ___VARIABLE_productName___Controller: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusable(___VARIABLE_productName___TCell.self, for: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ___VARIABLE_productName___Controller: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

// MARK: - Events
extension ___VARIABLE_productName___Controller {
    private func setupEvents() {
        
    }
    
    @objc private func onHeaderRefresh() {
        
    }
    
    @objc private func onFooterRefresh() {
        
    }
}

// MARK: - UI
extension ___VARIABLE_productName___Controller {
    private func setupViews() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

