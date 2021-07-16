//
//  SearchViewController.swift
//  MyNetflix
//
//  Created by joonwon lee on 2020/04/02.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var resultCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SearchViewController: UISearchBarDelegate {
    
    private func dismissKeyboard() {
        searchBar.resignFirstResponder()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // 검색 시작
        
        
        
        // 키보드 내려가게 처리
        dismissKeyboard()
        // 검색어가 있는지
        
        guard let searchTerm = searchBar.text, searchTerm.isEmpty == false else {return}
        
        
        
        // 네트워킹을 통한 검색
        print("--> 검색어 : \(searchBar.text)")
        
        
    }
    
}
