//
//  AppDelegate.swift
//  GraphQL-TrueMoney
//
//  Created by Tran Hoang Canh on 2/5/18.
//  Copyright © 2018 Tran Hoang Canh. All rights reserved.
//

import UIKit

import Apollo

let graphQLEndpoint = "https://37nmv91rqv.lp.gql.zone/graphql"
let apollo = ApolloClient(url: URL(string: graphQLEndpoint)!)


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }


}

