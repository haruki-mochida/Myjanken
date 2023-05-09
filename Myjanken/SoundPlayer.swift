//
//  SoundPlayer.swift
//  Myjanken
//
//  Created by 持田晴生 on 2023/05/09.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //サウナの音源データを読み込み
    let saunaData = NSDataAsset(name: "saunaSound")!.data
    
    //おじさんの音源データを読み込み
    let ojisanData = NSDataAsset(name: "ojisanSound")!.data
    
    //ギャルの音源データを読み込み
    let gyaruData = NSDataAsset(name: "gyaruSound")!.data
    
    //美魔女の音源データを読み込み
    let bimajyoData = NSDataAsset(name: "bimajyoSound")!.data
    
    //サウナ用プレイヤーの変数
    var saunaPlayer: AVAudioPlayer
    
    //おじさん用プレイヤーの変数
    var ojisanPlayer: AVAudioPlayer
    
    //ギャル用プレイヤーの変数
    var gyaruPlayer: AVAudioPlayer
    
    //美魔女の音源データを読み込み
    let bimajyoData = NSDataAsset(name: "bimajyoSound")!.data
    
    //美魔女用プレイヤーの変数
    var bimajyoPlayer: AVAudioPlayer
    
    func cymbalPlay(){
        do{
            //シンバル用のプレイヤーに、音源データを指定
            saunaPlayer = try AVAudioPlayer(data: saunaSound)
            
            //シンバルの音源再生
            saunaPlayer.play()
        } catch {
            print("サウナで、エラーが発生しました！")
        }
        
    }
}
