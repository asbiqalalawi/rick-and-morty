//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by SDS.Mac.012 on 11/03/24.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponses.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.pages))
                print("Page result count: " + String(model.results.count))
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    

}
