//
//  SoundPlayer.swift
//  Myjanken
//
//  Created by 持田晴生 on 2023/05/09.
//

import UIKit
import AVFoundation

class SoundsPlayer: NSObject {
    //サウナの音源データを読み込み
    let saunaData = NSDataAsset(name: "saunaSound")!.data
    
    //おじさんの音源データを読み込み
    let ojisanData = NSDataAsset(name: "ojisanSound")!.data
    
    //ギャルの音源データを読み込み
    let gyaruData = NSDataAsset(name: "gyaruSound")!.data
    
    //美魔女の音源データを読み込み
    let bimajyoData = NSDataAsset(name: "bimajyoSound")!.data
    
    //サウナ用プレイヤーの変数
    var saunaPlayer: AVAudioPlayer!
    
    //おじさん用プレイヤーの変数
    var ojisanPlayer: AVAudioPlayer!
    
    //ギャル用プレイヤーの変数
    var gyaruPlayer: AVAudioPlayer!
    
    //美魔女用プレイヤーの変数
    var bimajyoPlayer: AVAudioPlayer!
    
    func saunaSound(){
        do{
            //サウナ用のプレイヤーに、音源データを指定
            saunaPlayer = try AVAudioPlayer(data: saunaData)
            
            //サウナの音源再生
            saunaSound()
        } catch {
            print("サウナで、エラーが発生しました！")
        }
        
    }
    
    func ojisanSound(){
        do{
            //おじさん用のプレイヤーに、音源データを指定
            ojisanPlayer = try AVAudioPlayer(data: ojisanData)
            
            //おじさんの音源再生
            ojisanPlayer.play()
        } catch {
            print("おじさんで、エラーが発生しました！")
        }
        
    }

    func gyaruSound(){
        do{
            //ギャル用のプレイヤーに、音源データを指定
            gyaruPlayer = try AVAudioPlayer(data: gyaruData)
            
            //ギャルの音源再生
            gyaruPlayer.play()
        } catch {
            print("ギャルで、エラーが発生しました！")
        }
        
    }
    
    func bimajyoSound(){
        do{
            //美魔女用のプレイヤーに、音源データを指定
            bimajyoPlayer = try AVAudioPlayer(data: bimajyoData)
            
            //美魔女の音源再生
            bimajyoPlayer.play()
        } catch {
            print("美魔女で、エラーが発生しました！")
        }
        
    }

}
