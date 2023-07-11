//
//  TableViewController.swift
//  LessonTwo
//
//  Created by Nikita Sosyuk on 30.06.2023.
//

import UIKit


final class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let password = "123"
    
    private let data: [ListTableViewData] = [
        ListTableViewData(title: "123", image: UIImage(named: "cat")!),
        ListTableViewData(title: "321", image: UIImage(named: "cat")!),
        ListTableViewData(title: "345", image: .actions),
        ListTableViewData(title: "567", image: .actions),
        ListTableViewData(title: "754", image: .actions),
        ListTableViewData(title: "123", image: .actions),
        ListTableViewData(title: "324", image: .actions),
        ListTableViewData(title: "978", image: .actions),
        ListTableViewData(title: "789", image: .actions),
        ListTableViewData(title: "12563", image: .actions),
        ListTableViewData(title: "576", image: .actions)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = data[indexPath.row].title
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController else { return }
    
        vc.loadViewIfNeeded()
        vc.setUp(title: title)
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as? ListTableViewCell
        else { return UITableViewCell() }
        
        cell.setUp(data[indexPath.row])
        
        return cell
    }
}
