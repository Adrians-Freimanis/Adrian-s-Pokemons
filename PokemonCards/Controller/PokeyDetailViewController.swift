//
//  PokeyDetailViewController.swift
//  PokemonCards
//
//  Created by Arkadijs Makarenko on 24/04/2023.
//

import UIKit

class PokeyDetailViewController: UIViewController {
    
    var pokemon: Card?
    
    @IBOutlet weak var setLabel: UILabel!
    @IBOutlet weak var rarityLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var superTypeLabel: UILabel!
    @IBOutlet weak var typesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = pokemon?.name
        // Do any additional setup after loading the view.
        if let pokemon = pokemon {
            self.pokeImage.sd_setImage(with: URL(string: pokemon.imageURL))
            superTypeLabel.text = "Type: " + (pokemon.supertype ?? " no value found in API")
            typesLabel.text = "Breed: " + (pokemon.types?.first ?? "no value found in API")
            artistLabel.text = "Artist: " + (pokemon.artist ?? "no value found in API")
            rarityLabel.text = "Rarity: " + (pokemon.rarity ?? "no value found in API")
            setLabel.text =  "Description: " + (pokemon.cardSet ?? "no value found in API")
            
            if pokemon.supertype == "Trainer" {
                self.view.backgroundColor = UIColor.cyan
            } else {
                self.view.backgroundColor = UIColor.white
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
