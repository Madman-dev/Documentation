//
//  ViewController.swift
//  List View_beta
//
//  Created by Jack Lee on 2023/06/25.
//

import UIKit

class ReminderListViewController: UICollectionViewController {  // refactor을 해서 이름을 바꾸면 일일히 안바꿔도 되는건가?
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>  // 이걸 추가하는 이유는 뭐지?
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>
    
    var dataSource: DataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listLayout = listLayout()   // 바로 실행하지 않고 변수에 담는 이유는 기존 데이터 값을 보존하면서 새로운 데이터 값은 만들 수 있도록 하기 위해
        collectionView.collectionViewLayout = listLayout
        
        let cellRegistration = UICollectionView.CellRegistration {  // this configures the content and appearance of a cell
            (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            let reminder = Reminder.reminderData[indexPath.item]
            var contentConfiguration = cell.defaultContentConfiguration()
            contentConfiguration.text = reminder.title  // 여기 값을 바꾸면 출력되는 String이 title, note로 변하네
            cell.contentConfiguration = contentConfiguration
        }
        
        dataSource = DataSource(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, itemIdentifier: String) in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)  // 이 코드는 collectionView에 reusableCell를 만드는 상황? 이를 토대로 새로운 cell을 초기화하는게 아니라 기존에 있는
        }
        
        var snapshot = Snapshot()   // creating new snapshot
        snapshot.appendSections([0])    // huh...
        var reminderTitles = [String]()
        for reminder in Reminder.reminderData {
            reminderTitles.append(reminder.title)
        }
        snapshot.appendItems(Reminder.reminderData.map { $0.title })    // 이게 데이터 값을 저장해서 보관을 한다? -> map으로 바꿔서 데이터 축약
        dataSource.apply(snapshot)
        
        collectionView.dataSource = dataSource
    }
        
    func listLayout() -> UICollectionViewCompositionalLayout {     // 애초에 UICollectionView를 리턴한다는 내용은 없었는데, 이건 왜 리턴을 해야하는거지?
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)       // 완전 새로운 거네..?
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = UIColor.clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }

}

