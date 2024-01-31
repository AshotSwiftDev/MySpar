//
//  ProductDetailView.swift
//  MySpar
//
//  Created by Ashot Kirakosyan on 31.01.24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let pickerItems: [String] = ["Шт", "Кг"]
    @State var selectionItem = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0){
                Divider()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        productView
                        description
                            .padding(.top, 30)
                    }
                    .padding(.top, 8)
                    .padding(.horizontal,16)
                    reviews
                        .padding(.top, 30)
                    purchaseDetails
                        .padding(.top, 8)
                }
            }.padding(.bottom, 8)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Image(systemName: "arrow.left").foregroundColor(.green))
            .toolbar{
                ToolBarView()
            }
        }
    }
    
    var productView: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0){
                Text("Цена по карте")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .padding(4)
                    .background(Color.green)
                    .cornerRadius(8)
                Image("lipa_image")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .padding(.top, 40)
            }
            HStack(spacing: 0) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(.orange)
                    .frame(width: 20, height: 20)
                Text("4.1")
                    .bold()
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 1, height: 16)
                    .padding(.leading, 4)
                Text("19 отзывов")
                    .bold()
                    .foregroundColor(.gray)
                    .padding(.leading, 4)
                Spacer()
                ZStack {
                    CurvedRectangle()
                        .fill(Color.red)
                        .frame(width: 60, height: 28)
                        .offset(y: -6)
                    Text("-5 %")
                        .foregroundColor(.white)
                        .bold()
                }
            }.padding(.top, 20)
            Text("Добавка \"Липа\" к чаю 200 г ")
                .font(.system(size: 34))
                .bold()
                .frame(width: 280, alignment: .leading)
                .padding(.top, 20)
            
            HStack(spacing: 16) {
                
                Image("spain_flag_image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("Испания, Риоха")
                
                Spacer()
                
            }.padding(.leading,10)
                .padding(.top, 30)
        }
    }
    
    var description: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            
            Text("Описание")
                .bold()
            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                .font(.system(size: 16))
            
            Text("Оcновные характеристики")
                .bold()
            
            ZStack(alignment: .top) {
                HStack(spacing: 1){
                    ForEach(0..<60) {_ in
                        Text(".")
                    }
                }
                HStack(alignment: .top,spacing: 0) {
                    Text("Производства")
                        .font(.system(size: 16))
                        .padding(.trailing, 4)
                        .background(Color.white)
                    
                    Spacer()
                    
                    Text("Россия,Краснодарский \n край")
                        .font(.system(size: 16))
                    
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 4)
                        .background(Color.white)
                }
            }
            ZStack(alignment: .top) {
                HStack(spacing: 1){
                    ForEach(0..<60) {_ in
                        Text(".")
                    }
                }
                HStack(alignment: .top, spacing: 0) {
                    Text("Энергетическая \nценност,ккал/100г")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 4)
                        .background(Color.white)
                    Spacer()
                    Text("25 ккал,105 \n кДж")
                        .font(.system(size: 16))
                        .padding(.leading, 4)
                        .multilineTextAlignment(.trailing)
                        .background(Color.white)
                }
            }
            ZStack(alignment: .top) {
                HStack(spacing: 1){
                    ForEach(0..<60) {_ in
                        Text(".")
                    }
                }
                HStack(spacing: 0) {
                    Text("Жиры/100г")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 4)
                        .background(Color.white)
                    Spacer()
                    
                    Text("0,1 г")
                        .font(.system(size: 16))
                        .padding(.leading, 4)
                        .background(Color.white)
                }
            }
            ZStack(alignment: .top) {
                HStack(spacing: 1){
                    ForEach(0..<60) {_ in
                        Text(".")
                    }
                }
                HStack(spacing: 0) {
                    Text("Белки/100г")
                        .font(.system(size: 16))
                        .padding(.trailing, 4)
                        .background(Color.white)
                    Spacer()
                    Text("1,3 г")
                        .font(.system(size: 16))
                        .padding(.leading, 4)
                        .background(Color.white)
                }
            }
            ZStack(alignment: .top) {
                HStack(spacing: 1){
                    ForEach(0..<60) {_ in
                        Text(".")
                    }
                }
                HStack(spacing: 0) {
                    Text("Углеводы/100г")
                        .font(.system(size: 16))
                        .padding(.trailing, 4)
                        .background(Color.white)
                    Spacer()
                    Text("3,3 г")
                        .font(.system(size: 16))
                        .padding(.leading, 4)
                        .background(Color.white)
                }
            }
            Button {
                
            } label: {
                Text("Все характеристики")
                    .foregroundColor(.green)
                    .bold()
            }
        }
    }
    
    var reviews: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Отзывы")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
                Text("Все 152")
                    .foregroundColor(.green)
                    .bold()
            }
            .padding(.horizontal,16)
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 0){
                        ForEach(0..<2) {_ in
                            
                            ReviewDetailView()
                        }
                    }
                    .padding(8)
                }
            }
            Button(action: {
                
            }, label: {
                Text("Оставить отзыв")
                    .foregroundColor(.green)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                
            })
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.green, lineWidth: 1)
            ) .padding(.horizontal,16)
        }
    }
    
    var purchaseDetails: some View {
        VStack {
            Divider()
            Picker("pickerItems", selection: $selectionItem) {
                ForEach(pickerItems.indices, id: \.self) { index in
                    Text(pickerItems[index])
                        .tag(index)
                        .foregroundColor(index == selectionItem ? .white : .black)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal,16)
            
            HStack(alignment: .center, spacing: -4){
                VStack(alignment: .leading){
                    Text("55.9")
                        .font(.system(size: 40))
                        .bold()
                    Text("100.0")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                        )
                }
                ZStack {
                    VStack {
                        HStack{
                            Text(" Р")
                                .font(.system(size: 12))
                                .bold()
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            Text("Кг")
                                .font(.system(size: 12))
                                .bold()
                        }
                    }.frame(width: 24)
                    Rectangle()
                        .frame(width: 1, height: 20)
                        .background(Color.black)
                        .padding(.horizontal)
                        .rotationEffect(Angle(degrees: 45))
                }
                Spacer()
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus") 
                            .foregroundColor(.white)
                    })
                    .padding(.leading, 8)
                    Spacer()
                    VStack{
                        Text("1 шт")
                            .foregroundColor(.white)
                            .bold()
                        Text("120.0Р")
                            .font(.system(size: 12))
                            .foregroundColor(.white.opacity(0.8))
                    }
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "minus")
                            .foregroundColor(.white)
                    }).padding(.trailing, 8)
                }.frame(width: 160, height: 48)
                    .background(Color.green)
                    .cornerRadius(24)
            }.padding(.horizontal,16)
        }
    }
}
