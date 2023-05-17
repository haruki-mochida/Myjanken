//
//  ContentView.swift
//  Myjanken
//
//  Created by 持田晴生 on 2023/01/15.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのSoundsPlayerクラスのインスタンス生成
    let soundPlayer = SoundsPlayer()
    
    //じゃんけんの結果を格納する変数(0=初期画面　1=おじさん　2=ギャル　3=サウナ)
    @State var answerNumber = 0
    @State var gyaruCount = 0
    
    var body: some View {
        VStack {
            //スペースを追加
            Spacer()
            
            //じゃんけんの数字が0だったら
            if answerNumber == 0{
                //初期画面のテキストを表示
                Text("これからジャンケンをする！")
                    .padding((.bottom))
            } else if answerNumber == 1 {
                //じゃんけんの数字が1だったら、おじさんの画像を指定
                Image ("ojisan")
                    .resizable()
                    .scaledToFit()
                //スペースを追加
                Spacer()
                Text("おじさん")
                //下辺に余白を設定
                    .padding(.bottom)
            } else if answerNumber == 2 {
                if(gyaruCount == 3){
                    //ギャルカウントが3だったら、美魔女の画像を指定
                    Image ("bimajyo")
                        .resizable()
                        .scaledToFit()
                    //スペースを追加
                    Spacer()
                    Text("美魔女")
                    //下辺に余白を設定
                        .padding(.bottom)
                    Text("美魔女降臨")
                } else{
                    //じゃんけんの数字が2だったら、ギャルの画像を指定
                    Image ("gyaru")
                        .resizable()
                        .scaledToFit()
                    //スペースを追加
                    Spacer()
                    Text("ギャル")
                    //下辺に余白を設定
                        .padding(.bottom)
                    Text("美魔女まで\(3-gyaruCount)回")
                }
                
            } else if answerNumber == 3{
                //じゃんけんの数字が3だったら、サウナの画像を指定
                Image ("sauna")
                    .resizable()
                    .scaledToFit()
                //スペースを追加
                Spacer()
                Text("サウナ")
                //下辺に余白を設定
                    .padding(.bottom)
            }
            
            
            Button {
                //次のじゃんけんへ
                answerNumber = Int.random(in: 1...3)
                if(answerNumber == 2){
                    gyaruCount = gyaruCount + 1
                }
                if(gyaruCount == 4){
                    gyaruCount = 1
                }

                //音を再生
                switch answerNumber {
                case 1:
                    soundPlayer.bimajyoPlay()
                case 2:
                    soundPlayer.gyaruPlay()
                case 3:
                    soundPlayer.saunaPlay()
                default:
                    break
                }
                if gyaruCount == 3 {
                    soundPlayer.bimajyoPlay()
                }
            } label: {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height:100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }

            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
