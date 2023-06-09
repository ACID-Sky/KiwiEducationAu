//
//  TypeOfImmigration.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 01.06.2023.
//

import SwiftUI

let typeOfImmigration: [Info] = [
    Info(id: 221,
         title: "Программа миграции востребованных специалистов",
         subtitle: "",
         description:
    """
    В Австралии есть несколько списков с квалификациями, которые пользуются большим спросом, и на этих должностях нет австралийских рабочих. Для переезда в Австралию работникам данных специальностей необходимо только подтвердить свою квалификацию в соответствующих организациях, иметь грамотный уровень английского языка и набрать необходимый проходной балл —  65. Баллы начисляются за возраст, опыт работы, полученное в Австралии образование и т. д. Затем нужно выразить интерес на сайте департамента иммиграции и в случае приглашения, можно податься на Skilled Independent visa, которая дает право приехать в страну и искать работу и место жительства по своему желанию.

    Также кандидата может выдвинуть конкретный штат или территория Австралии, которому нужны такие специалисты. В этом случае соискатель должен будет работать и проживать в этом регионе определенный период (обычно не менее 2 лет).

    Существуют также списки востребованных профессий для временных и промежуточных рабочих виз, которые содержат гораздо больше квалификаций. Согласно этим спискам, есть шанс получить temporary или provisional work visa, если вы найдете работодателя, готового вас спонсировать, и подадите заявку на ВНЖ после 3-4 лет работы по специальности. Для получения такой визы работник также должен соответствовать критериям по возрасту, опыту работы и уровню английского языка. Если работодатель спонсирует работника по региональной программе, необходимо работать на этого конкретного работодателя в этом конкретном регионе.
    """,
         image: Image("demandedSpecialistsProgram"),
         posts: typeOfProfimmigration),
    Info(id: 222,
         title: "Переезд через образование",
         subtitle: "",
         description:
    """
    Важно отметить, что официального пути переезда через образование не существует. Однако хорошо спланированная стратегия обучения позволяет получить вид на жительство и австралийское гражданство. После 2 лет обучения в австралийском университете выпускнику выдается рабочая виза для поиска работы по специальности. Срок действия визы варьируется от 18 месяцев до 4 лет в зависимости от уровня диплома или степени. Находясь физически в стране и имея рабочую визу, гораздо легче найти работу, чем находиться за границей. Таким образом, этот путь подходит для:

    Выпускников школ, желающих получить качественное зарубежное образование, признанное во всем мире;
    Специалистов, квалификация которых не является востребованной;
    Тех, кто не нашел работодателя, готового их спонсировать;
    Тех, кто хочет повысить квалификацию и получить дополнительные баллы за счет получения австралийского образования.

    Во время учебы студент и его партнер (если таковой имеется) имеет право работать неполный рабочий день, а это шанс получить ценный местный опыт перед поиском работы на полный рабочий день.
    """,
         image: Image("educationProgram"),
         posts: education),
    Info(id: 223,
         title: "Иммиграция для бизнесменов",
         subtitle: "",
         description:
    """
    С 1 Июля 2021 года предприниматели могут переехать в Австралию только по временным типам виз. Вы можете начать там новый бизнес или продолжить существующий. Те, кто хочет вести бизнес в Австралии, могут сначала получить временную визу на 5 лет, а после минимум трех лет успешного ведения бизнеса подать заявление на резидентство. Минимальный требуемый стартовый капитал составляет 1,25 млн австралийских долларов. Вам также необходимо предъявить свой бизнес-план и соответствовать требованиям к уровню английского языка (IELTS 6.0 для каждого компонента теста).
    """,
         image: Image("businesProgram"),
         posts: []),
    Info(id: 224,
         title: "Иммиграция для инвесторов",
         subtitle: "",
         description:
    """
    Инвесторы могут иммигрировать в Австралию по той же схеме, что и предприниматели: provisional виза на 5 лет с последующей подачей заявления на ПМЖ. Для инвесторов существует три направления, в зависимости от суммы капитала, который они готовы вложить:

    В рамках Investor Stream нужно:

    быть моложе 55 лет;
    инвестировать 1,5 миллиона австралийских долларов в австралийский штат или территорию;
    набрать не менее 65 баллов по тесту;
    иметь чистую нераспределённую прибыль компании, инвестиции и личные активы не менее, чем на 2,25 миллиона австралийских долларов.

    В рамках Significant Investor Stream нужно:

    быть назначенным органом исполнительной власти штата или территории или Austrade;
    инвестировать не менее 5 миллионов австралийских долларов, в соответствии с определенными требованиями;
    иметь искреннее намерение держать эти инвестиции как минимум в течение 4 лет;
    иметь искреннее намерение жить в штате или на территории, которая вас назначает.

    В рамках Premium Investor Stream нужно:

    быть назначенным Austrade;
    инвестировать не менее 15 миллионов австралийских долларов в австралийские инвестиции и/или благотворительные взносы, отвечающие определенным требованиям;
    иметь искреннее намерение держать инвестиции на весь период действия визы.
    Для крупных и премиальных инвесторов возрастных ограничений нет. Тем не менее, все инвесторы должны подтвердить, что у них есть хотя бы functional English (общий IELTS 4.5 или эквивалент).
    """,
         image: Image("ivestorProgramm"),
         posts: []),
    Info(id: 225,
         title: "Как иммигрировать без знания английского языка",
         subtitle: "",
         description:
    """
    Как видите, английский необходим и для поиска работы, и для поступления в университет, и для ведения бизнеса в Австралии. Поэтому невозможно переехать с абсолютно нулевым знанием английского языка. Однако вы можете сначала приехать в Австралию на языковые курсы, чтобы улучшить свой английский до необходимого уровня, и в то же время изучить страну, познакомиться с разными людьми и оценить свои возможности для иммиграции.

    Если вас интересуют языковые курсы или профессиональное образование в Австралии, заполните нашу заявку, и мы найдем варианты, подходящие для вашего конкретного случая.
    """,
         image: Image("withoutLanguageProgram"),
         posts: [])
]

