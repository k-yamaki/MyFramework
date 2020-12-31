//
//  UserData.swift
//  MyFramework
//
//  Created by keiji yamaki on 2020/12/29.
//

import Foundation

public struct UserData {
    // データ一覧
    public var string : String
    public var integer : Int
    public var float : Float
    public var double : Double
    
    // 共有のデータ領域を指定
    let userDefaults = UserDefaults(suiteName: "group.com.hiroshimamm.keiji.yamaki")
    // 初期化・データをロード
    public init(){
        string = userDefaults?.string(forKey: "string") ?? ""
        integer = userDefaults?.integer(forKey: "integer") ?? 0
        float = userDefaults?.float(forKey: "float") ?? 0.0
        double = userDefaults?.double(forKey: "double") ?? 0.0
    }
    // データをロード
    public mutating func mutatingLoad(){
        string = userDefaults?.string(forKey: "string") ?? ""
        integer = userDefaults?.integer(forKey: "integer") ?? 0
        float = userDefaults?.float(forKey: "float") ?? 0.0
        double = userDefaults?.double(forKey: "double") ?? 0.0
    }
    // データを保存
    public func save(){
        userDefaults?.set(string, forKey: "string")
        userDefaults?.set(integer, forKey: "integer")
        userDefaults?.set(float, forKey: "float")
        userDefaults?.set(double, forKey: "double")
    }
}
