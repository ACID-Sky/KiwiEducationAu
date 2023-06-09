//
//  Posts.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 30.05.2023.
//

import SwiftUI

let posts: [Info] = [
    Info(id: 1,
         title: "О стране",
         subtitle: "Об Австралии",
         description:
        """
        Австралия — это развитая страна с устойчивой экономикой, университеты которой входят в мировые топ-рейтинги. А с другой стороны, это относительно молодая страна со своей уникальной историей и климатом. Узнайте больше про страну, обучение, работу и способы иммиграции в Австралию в нашей подборке.
        """,
         image: Image("aboutpic"),
         posts: aboutTheCountry),
    Info(id: 2,
         title: "Иммиграция",
         subtitle: "Иммиграция в Австралию",
         description:
        """
        Как подготовиться и спланировать свой переезд в Австралию.
        """,
         image: Image("immigrationpic"),
         posts: immigration),
    Info(id: 3,
         title: "Обучение",
         subtitle: "Обучение в Австралии",
         description:
        """
        Образование в Австралии является одной из самых надежных инвестиций в ваше будущее. Узнайте про систему образования, учебные заведения, студенческие визы и стипендии в стране.
        """,
         image: Image("studypic"),
         posts: education),
    Info(id: 4,
         title: "Работа",
         subtitle: "Работа в Австралии",
         description:
        """
        Поиск работы — один из самых сложных пунктов в иммиграции в Австралию. Рассказываем о полезных ресурсах по поиску работы в стране.
        """,
         image: Image("workpic"),
         posts: work)
]
