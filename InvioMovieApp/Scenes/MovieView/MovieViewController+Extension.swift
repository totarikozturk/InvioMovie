//
//  MovieViewController+Ext.swift
//  InvioMovieApp
//
//  Created by TarıkOzturk on 7.08.2022.
//

import UIKit

// MARK: UIAlert
extension UIViewController {

    func displayAlertMessage(title: String, message: String, actionTitle: String) {
          let alertMessage = UIAlertController(title: title,
                                               message: message,
                                               preferredStyle: UIAlertController.Style.alert)
        alertMessage.addAction(UIAlertAction(title: actionTitle, style: UIAlertAction.Style.default, handler: nil))
          self.present(alertMessage, animated: true, completion: nil)
      }
}

// MARK: String for localization
extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
