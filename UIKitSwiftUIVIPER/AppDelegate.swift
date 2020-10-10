//
//  AppDelegate.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import UIKit
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


extension UINavigationController: UINavigationControllerDelegate {

    convenience init(rootView: AnyView) {
        let hostingView = UIHostingController(rootView: rootView)
        self.init(rootViewController: hostingView)

        // Doing this to hide the nav bar since I am expecting SwiftUI
        // views to be wrapped in NavigationViews in case they need nav.
        self.delegate = self
    }

    public func pushView(view:AnyView) {
        let hostingView = UIHostingController(rootView: view)
        self.pushViewController(hostingView, animated: true)
    }

    public func popView() {
        self.popViewController(animated: true)
    }

    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        navigationController.navigationBar.isHidden = true
    }
}
