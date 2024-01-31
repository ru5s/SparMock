//
//  MockData.swift
//  SparMock
//
//  Created by Ruslan Ismailov on 31/01/24.
//

import Foundation

struct MockData {
    let paymentMethod: String
    let rating: Double
    let reviews: Int
    let sale: Int
    let name: String
    let weight: Int
    var cost: Int
    let country: String
    let description: String
    let characteristic: Characteristic
    let review: [Review]
}

struct Characteristic {
    let country: String
    let energy: String
    let fats: String
    let proteins: String
    let carbohydrates: String
}

struct Review: Hashable {
    let id: UUID = UUID()
    let name: String
    let date: String
    let stars: Int
    let comment: String
}

let arriveMockData: MockData = .init(paymentMethod: "Цена по карте", 
                                     rating: 4.1,
                                     reviews: 19,
                                     sale: 10,
                                     name: "Добавка “Липа” к чаю 200 г",
                                     weight: 200,
                                     cost: 120,
                                     country: "Испания, Риоха",
                                     description: "Флавоноиды липового цвета обладают противовостпалительнм действием, способствует укреплению стенки сосудов.",
                                     characteristic: .init(country: "Россия, Краснодарский край",
                                                           energy: "25 ккал, 105 кДж",
                                                           fats: "0.1 г",
                                                           proteins: "1,3 г",
                                                           carbohydrates: "3,3 г"),
                                     review: [.init(name: "Александр В.", 
                                                    date: "7 мая 2021",
                                                    stars: 4,
                                                    comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
                                              .init(name: "Татьяна В.",
                                                             date: "7 мая 2021",
                                                             stars: 5,
                                                             comment: "Хочу, чтобы все добавки были такими! Хорошая добавка, мне очень понравилась! Очень рад"),
                                              .init(name: "Владимир В.",
                                                             date: "7 мая 2021",
                                                             stars: 3,
                                                             comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
                                              .init(name: "Станислав В.",
                                                             date: "7 мая 2021",
                                                             stars: 4,
                                                             comment: "Хочу, чтобы все добавки были такими! Хорошая добавка, мне очень понравилась!"),
                                              .init(name: "Александр В.",
                                                             date: "7 мая 2021",
                                                             stars: 4,
                                                             comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими! Очень рад")])
