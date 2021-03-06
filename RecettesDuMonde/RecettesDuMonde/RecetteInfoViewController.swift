//
//  RecetteInfoViewController.swift
//  RecettesDuMonde
//
//  Created by L3NEC2021-7 on 13/12/2021.
//

import UIKit

class RecetteInfoViewController: UIViewController {

    @IBOutlet weak var nomRecette_titreLab: UILabel!
    @IBOutlet weak var recetteImgView: UIImageView!
    @IBOutlet weak var paysOrigine_soustitreLab: UILabel!
    @IBOutlet weak var descriptionRecette_lab: UILabel!
    @IBOutlet weak var ingredientsRecette_lab: UILabel!
    
    var tabIngredients : [IngredientMO] = []
    
    var imgView = UIImage()
    
    var laRecette : RecetteMO?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print("Recette sélétionnée : " + recette?.recette_nom!)
        
        recetteImgView.image = UIImage(named:laRecette!.recette_nom!.lowercased().replacingOccurrences(of: " ", with: "_"))
        nomRecette_titreLab.text = laRecette!.recette_nom!
        paysOrigine_soustitreLab.text = laRecette!.son_pays_origine?.pays_nom!
        descriptionRecette_lab.text = laRecette!.recette_descriptions!
        //tabIngredients = laRecette!.ses_ingredients
        // Do any additional setup after loading the view.
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
