//
//  SingleFrendViewLayout.swift
//  1L_IvanGolub
//
//  Created by Ivan Golub on 28/12/2018.
//  Copyright © 2018 Ivan Golub. All rights reserved.
//

import UIKit

class SingleFrendViewLayout: UICollectionViewLayout {
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1.0
    }
}
