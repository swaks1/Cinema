<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="ITcinema.Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
        $(window).load(function () {
            $("#hlQuiz").addClass("active");

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" Visible="False">
    <div style="padding:10%;">
    <asp:MultiView ID="mvQuiz" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:Label ID="Label" runat="server" Text="Кој актер го глуми Капетан Џек Спероу во филомот Пиратите од Карибите?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers1" runat="server">
                <asp:ListItem Value="false">Бред Пит</asp:ListItem>
                <asp:ListItem Value="true">Џони Деп</asp:ListItem>
                <asp:ListItem Value="false">Орландо Блум</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Кој е првиот одмазник на Марвел?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers2" runat="server">
                <asp:ListItem Value="false">Човек Челик</asp:ListItem>
                <asp:ListItem Value="false">Тор</asp:ListItem>
                <asp:ListItem Value="true">Капетан Америка</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Што ќе предизвика Аделајн да не може да старее во филмот Годините на Аделајн?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers3" runat="server">
                <asp:ListItem Value="false">Научен експеримент</asp:ListItem>
                <asp:ListItem Value="true">Грмотевица</asp:ListItem>
                <asp:ListItem Value="false">Напиток</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:Label ID="Label3" runat="server" Text="Во Војна на ѕвездите како се вика принцезата на Набу?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers4" runat="server">
                <asp:ListItem Value="true">Амидала</asp:ListItem>
                <asp:ListItem Value="false">Леа</asp:ListItem>
                <asp:ListItem Value="false">Падме</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:Label ID="Label4" runat="server" Text="Кој вид на растение ќе ја излечи мајката на Рампунзел на почетокот од филмот?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers5" runat="server">
                <asp:ListItem Value="false">Грашок</asp:ListItem>
                <asp:ListItem Value="false">Јагода</asp:ListItem>
                <asp:ListItem Value="true">Цвеќе</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <asp:Label ID="Label5" runat="server" Text="Како ќе дојде глушецот Стујард во семејството Литл?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers6" runat="server">
                <asp:ListItem Value="false">Тој е веќе во куќата како глушец.</asp:ListItem>
                <asp:ListItem Value="true">Семејството ќе го постои од дома за сираци.</asp:ListItem>
                <asp:ListItem Value="false">Ќе го најдат пред врата.</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View7" runat="server">
            <asp:Label ID="Label6" runat="server" Text="Робин Худ: Мажи во ... (довршете го името на комичниот филм за Робин Худ)."></asp:Label>
            <asp:RadioButtonList ID="rblAnswers7" runat="server">
                <asp:ListItem Value="false">Костими за капење</asp:ListItem>
                <asp:ListItem Value="false">Здолништа</asp:ListItem>
                <asp:ListItem Value="true">Хеланки</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View8" runat="server"><asp:Label ID="Label7" runat="server" Text="Која година е излезен приот филм од серијалот Кинематографската вселена на Марвел?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers8" runat="server">
                <asp:ListItem Value="false">1986</asp:ListItem>
                <asp:ListItem Value="true">2008</asp:ListItem>
                <asp:ListItem Value="false">2003</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View9" runat="server">
            <asp:Label ID="Label8" runat="server" Text="Кој ја краде круната на кралицата крајот од филмот Минионс?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers9" runat="server">
                <asp:ListItem Value="false">Скарлет Оверкил</asp:ListItem>
                <asp:ListItem Value="false">Кевин</asp:ListItem>
                <asp:ListItem Value="true">Гру</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View10" runat="server">
            <asp:Label ID="Label9" runat="server" Text="Како Фантастук 4 ќе ги добијат своите моќи?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers10" runat="server">
                <asp:ListItem Value="true">Супернова</asp:ListItem>
                <asp:ListItem Value="false">Гама зрачење</asp:ListItem>
                <asp:ListItem Value="false">Родени се со моќи</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View11" runat="server">
            <asp:Label ID="Label10" runat="server" Text="Во Петар Пан (2015) кој глумец го глуми Црнобрадиот?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers11" runat="server">
                <asp:ListItem Value="false">Џон Клиз</asp:ListItem>
                <asp:ListItem Value="true">Хју Џекман</asp:ListItem>
                <asp:ListItem Value="false">Џерард Батлер</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View12" runat="server"><asp:Label ID="Label11" runat="server" Text="Кој и ги носи писмата на Холи во филот П.С. Те сакам?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers12" runat="server">
                <asp:ListItem Value="false">Нејзиниот сопруг</asp:ListItem>
                <asp:ListItem Value="false">Најзиниот адвокат</asp:ListItem>
                <asp:ListItem Value="true">Нејзината мајка</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View13" runat="server">
            <asp:Label ID="Label12" runat="server" Text="Кој е првиот филм на Волт Дизни?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers13" runat="server">
                <asp:ListItem Value="true">Снажана и седумте џуџиња</asp:ListItem>
                <asp:ListItem Value="false">Фантазија</asp:ListItem>
                <asp:ListItem Value="false">Мики Маус</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View14" runat="server">
            <asp:Label ID="Label13" runat="server" Text="Која година е основано филмското студио на Волт Дизни?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers14" runat="server">
                <asp:ListItem Value="false">1903</asp:ListItem>
                <asp:ListItem Value="false">1944</asp:ListItem>
                <asp:ListItem Value="true">1923</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View15" runat="server">
            <asp:Label ID="Label14" runat="server" Text="Кој ќе го уништи Ултрон во филмот Одмазници:Ерата на Ултрон?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers15" runat="server">
                <asp:ListItem Value="false">Тор</asp:ListItem>
                <asp:ListItem Value="false">Хулк</asp:ListItem>
                <asp:ListItem Value="true">Визија</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View16" runat="server">
            <asp:Label ID="Label15" runat="server" Text="Кој е директор на филмовите Војна на ѕвездите?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers16" runat="server">
                <asp:ListItem Value="false">Стивен Спилберг</asp:ListItem>
                <asp:ListItem Value="true">Џорџ Лукас</asp:ListItem>
                <asp:ListItem Value="false">Још Ведон</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View17" runat="server">
            <asp:Label ID="Label16" runat="server" Text="„И покрај се, утре е нов ден!“ е последна реченица од кој филм?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers17" runat="server">
                <asp:ListItem Value="true">П.С. Те сакам</asp:ListItem>
                <asp:ListItem Value="false">На виор со ветрот</asp:ListItem>
                <asp:ListItem Value="false">Матрикс</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View18" runat="server">
            <asp:Label ID="Label17" runat="server" Text="Кој актер го позајмува гласот во анимираниот филм Кралот лав за улогата на Скар?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers18" runat="server">
                <asp:ListItem Value="true">Џереми Ајронс</asp:ListItem>
                <asp:ListItem Value="false">Стив Мартин</asp:ListItem>
                <asp:ListItem Value="false">Џек Николсон</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View19" runat="server">
            <asp:Label ID="Label18" runat="server" Text="Кој е најмногу номиниран актер во историјата?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers19" runat="server">
                <asp:ListItem Value="false">Вил Смит</asp:ListItem>
                <asp:ListItem Value="true">Џек Николсон</asp:ListItem>
                <asp:ListItem Value="false">Леонардо ди Каприо</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View20" runat="server">
            <asp:Label ID="Label19" runat="server" Text="Колку продолженија има филмот Невозможна мисија?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers20" runat="server">
                <asp:ListItem Value="false">1</asp:ListItem>
                <asp:ListItem Value="false">9</asp:ListItem>
                <asp:ListItem Value="true">5</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View21" runat="server">
            <asp:Label ID="Label20" runat="server" Text="Како се вика пртивникот на Фантастик 4?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers21" runat="server">
                <asp:ListItem Value="false">Капетан Барбоса</asp:ListItem>
                <asp:ListItem Value="false">Локи</asp:ListItem>
                <asp:ListItem Value="true">Викот Вон Дум</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View22" runat="server">
            <asp:Label ID="Label21" runat="server" Text="Каде се случува дејството во гилмот Добра година?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers22" runat="server">
                <asp:ListItem Value="false">Италија</asp:ListItem>
                <asp:ListItem Value="true">Франција</asp:ListItem>
                <asp:ListItem Value="false">Германија</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View23" runat="server">
            <asp:Label ID="Label22" runat="server" Text="Како се вика капетанот на Ентерпрајс во филмот Ѕвездени патеки?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers23" runat="server">
                <asp:ListItem Value="true">Капетан Џејмс Крк</asp:ListItem>
                <asp:ListItem Value="false">Капетан Барпоса</asp:ListItem>
                <asp:ListItem Value="false">Капетан Кука</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View24" runat="server">
            <asp:Label ID="Label23" runat="server" Text="Како се вика најпознатата дадилка во флмовите на Волт Дизни?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers24" runat="server">
                <asp:ListItem Value="false">Скарлет О Хара</asp:ListItem>
                <asp:ListItem Value="false">Бриџит Џоунс</asp:ListItem>
                <asp:ListItem Value="true">Мери Попинс</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View25" runat="server">
            <asp:Label ID="Label24" runat="server" Text="Кога се случува дејството во филмот Крадачката на книги?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers25" runat="server">
                <asp:ListItem Value="false">За време на првата светска војна.</asp:ListItem>
                <asp:ListItem Value="true">За време на Вотората светска војна.</asp:ListItem>
                <asp:ListItem Value="false">За време на Балканските војни.</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View26" runat="server">
            <asp:Label ID="Label25" runat="server" Text="Која актерка ја игра улогата на Лара Крофт?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers26" runat="server">
                <asp:ListItem Value="true">Анџелина Јоли</asp:ListItem>
                <asp:ListItem Value="false">Мила Кунис</asp:ListItem>
                <asp:ListItem Value="false">Кирстен Дантс</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View27" runat="server">
            <asp:Label ID="Label26" runat="server" Text="Кој актер ја игра улогата на Спајдермен во првиот серијал?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers27" runat="server">
                <asp:ListItem Value="false">Роберт Даунинг Џуниор</asp:ListItem>
                <asp:ListItem Value="false">Стив Мартин</asp:ListItem>
                <asp:ListItem Value="true">Тоби Мек Вајер</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View28" runat="server">
            <asp:Label ID="Label27" runat="server" Text="Што е Пинк Пантер?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers28" runat="server">
                <asp:ListItem Value="false">Гердан</asp:ListItem>
                <asp:ListItem Value="true">Дијамант</asp:ListItem>
                <asp:ListItem Value="false">Прсен</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View29" runat="server">
            <asp:Label ID="Label28" runat="server" Text="По кој серијал на книги е направена серијата Игра на троновите?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers29" runat="server">
                <asp:ListItem Value="true">Песната на Мразот и Ветрот</asp:ListItem>
                <asp:ListItem Value="false">Господарот на Прстените</asp:ListItem>
                <asp:ListItem Value="false">Хари Потер</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View30" runat="server">
            <asp:Label ID="Label29" runat="server" Text="Како се вика директорот на училиштето за магија Хогвордс Во Хари Потер?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers30" runat="server">
                <asp:ListItem Value="false">Рон Визли</asp:ListItem>
                <asp:ListItem Value="false">Волдаерморт</asp:ListItem>
                <asp:ListItem Value="true">Дамблдор</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View31" runat="server">
            <asp:Label ID="Label30" runat="server" Text="Кој е оној чие име не смее да биде изговорено во филмот Хари Потер?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers31" runat="server">
                <asp:ListItem Value="false">Хермиона</asp:ListItem>
                <asp:ListItem Value="false">Хари</asp:ListItem>
                <asp:ListItem Value="true">Волдерморт</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View32" runat="server">
            <asp:Label ID="Label31" runat="server" Text="Како се вика змејот на Ерагон?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers32" runat="server">
                <asp:ListItem Value="false">Рубин</asp:ListItem>
                <asp:ListItem Value="true">Сафира</asp:ListItem>
                <asp:ListItem Value="false">Бром</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View33" runat="server"><asp:Label ID="Label32" runat="server" Text="Колку продолженија има филмот Господарот на Прстените?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers33" runat="server">
                <asp:ListItem Value="true">3</asp:ListItem>
                <asp:ListItem Value="false">1</asp:ListItem>
                <asp:ListItem Value="false">9</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View34" runat="server">
            <asp:Label ID="Label33" runat="server" Text="Како се вика последното продолжение од серијалот Хари Потер?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers34" runat="server">
                <asp:ListItem Value="false">Хери Потер и Каменот на мудроста</asp:ListItem>
                <asp:ListItem Value="false">Хари Потер и затвореникот о Азкабан</asp:ListItem>
                <asp:ListItem Value="true">Хари Потер и Реликвиите на смртта</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View35" runat="server">
            <asp:Label ID="Label34" runat="server" Text="Кој од следниве филмови е од Марвел?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers35" runat="server">
                <asp:ListItem Value="false">Последниот Самурај</asp:ListItem>
                <asp:ListItem Value="true">Капетан Америја Првиот Одмазник</asp:ListItem>
                <asp:ListItem Value="false">Спајдермен</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View36" runat="server">
            <asp:Label ID="Label35" runat="server" Text="КОлку оскари освои филмот Господарот на прстените?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers36" runat="server">
                <asp:ListItem Value="true">11</asp:ListItem>
                <asp:ListItem Value="false">1</asp:ListItem>
                <asp:ListItem Value="false">9</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View37" runat="server">
            <asp:Label ID="Label36" runat="server" Text="Кој ги има компонирано песните за Кралот Лаб и Патот до Ел Дорадо?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers37" runat="server">
                <asp:ListItem Value="false">Мараја Кери</asp:ListItem>
                <asp:ListItem Value="false">Селин Дион</asp:ListItem>
                <asp:ListItem Value="true">Елтон Јон</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View38" runat="server">
            <asp:Label ID="Label37" runat="server" Text="Како се вика бродот на Џек Спероу во филмот Пиратите од Карибите?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers38" runat="server">
                <asp:ListItem Value="false">Дејви Џоунс</asp:ListItem>
                <asp:ListItem Value="true">Црниот Бисер</asp:ListItem>
                <asp:ListItem Value="false">Кралицата Елизабета</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View39" runat="server"><asp:Label ID="Label38" runat="server" Text="За колку кралста се работи во серијата Игра на троновите?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers39" runat="server">
                <asp:ListItem Value="true">7</asp:ListItem>
                <asp:ListItem Value="false">5</asp:ListItem>
                <asp:ListItem Value="false">3</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View40" runat="server">
            <asp:Label ID="Label39" runat="server" Text="Што е Hachiko?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers40" runat="server">
                <asp:ListItem Value="false">Глувче</asp:ListItem>
                <asp:ListItem Value="true">Куче</asp:ListItem>
                <asp:ListItem Value="false">Маче</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View41" runat="server">
            <asp:Label ID="Label40" runat="server" Text="Кој актер го глуми главниот лик во филмот Edge of Tomorrow?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers41" runat="server">
                <asp:ListItem Value="false">Leonardo DiCaprio</asp:ListItem>
                <asp:ListItem Value="true">Tom Cruise</asp:ListItem>
                <asp:ListItem Value="false">Johnny Depp</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View42" runat="server">
            <asp:Label ID="Label41" runat="server" Text="Кој актер го глуми императорот на Рома во филмот Gladiator?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers42" runat="server">
                 <asp:ListItem Value="false">Joaquin Phoenix</asp:ListItem>
                <asp:ListItem Value="true">Tom Cruise</asp:ListItem>
                <asp:ListItem Value="false">Russell Crowe</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View43" runat="server"><asp:Label ID="Label42" runat="server" Text="Кое е името на компанијата која доведува до уништување на светот во филмот The Terminator?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers43" runat="server">
                <asp:ListItem Value="false">InGen</asp:ListItem>
                <asp:ListItem Value="false">InTech</asp:ListItem>
                <asp:ListItem Value="true">Skynet</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View44" runat="server">
            <asp:Label ID="Label43" runat="server" Text="Кој година излезе филмот Mad Max?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers44" runat="server">
             <asp:ListItem Value="false">2014</asp:ListItem>
             <asp:ListItem Value="false">2012</asp:ListItem>
             <asp:ListItem Value="true">2015</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View45" runat="server">
            <asp:Label ID="Label44" runat="server" Text="Која година се појави првиот дел на филмот The Hunger Games?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers45" runat="server"> 
                <asp:ListItem Value="true">2012</asp:ListItem>
                <asp:ListItem Value="false">2010</asp:ListItem>
                <asp:ListItem Value="false">2014</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View46" runat="server">
            <asp:Label ID="Label45" runat="server" Text="За која игра станува збор во филмот Free to Play?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers46" runat="server">
                <asp:ListItem Value="true">Dota 2</asp:ListItem>
                <asp:ListItem Value="false">League of Legends</asp:ListItem>
                <asp:ListItem Value="false">World of Warcraft</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View47" runat="server">
            <asp:Label ID="Label46" runat="server" Text="Каде се наоѓа Холивуд?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers47" runat="server">
                <asp:ListItem Value="false">1=Њу Јорк</asp:ListItem>
                <asp:ListItem Value="false">Лас Вегас</asp:ListItem>
                <asp:ListItem Value="true">Лос Анџелес</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View48" runat="server">
            <asp:Label ID="Label47" runat="server" Text="Според чија вистинска приказна е направен филмот Спасувајќи го господин Бенкс?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers48" runat="server">
                <asp:ListItem Value="true">Памела Линдон Траверс</asp:ListItem>
                <asp:ListItem Value="false">Розалинд Лејкер</asp:ListItem>
                <asp:ListItem Value="false">Кен Фолет</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View49" runat="server"><asp:Label ID="Label48" runat="server" Text="Доврши го името на филмот Тор:....свет?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers49" runat="server">
                <asp:ListItem Value="false">Светлиот</asp:ListItem>
                <asp:ListItem Value="true">Мрачниот</asp:ListItem>
                <asp:ListItem Value="false">Ниту едно од наведените.</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
        <asp:View ID="View50" runat="server">
            <asp:Label ID="Label49" runat="server" Text="Кој од следниве филмови не е на Дизни?"></asp:Label>
            <asp:RadioButtonList ID="rblAnswers50" runat="server">
                <asp:ListItem Value="false">Дневниците на принцезата</asp:ListItem>
                <asp:ListItem Value="false">Спасувајќи го господин Бенкс</asp:ListItem>
                <asp:ListItem Value="true">Добра Година</asp:ListItem>
            </asp:RadioButtonList>
        </asp:View>
    </asp:MultiView>
    <br /><br />
    <asp:Button ID="btnNext" runat="server" Text="Следно >>" CssClass="steps-btn" OnClick="btnNext_Click" /> &nbsp; &nbsp; &nbsp;
    <asp:Label ID="lblPoeni" runat="server" Text="Имате освоено: 0 поени." Visible="True"></asp:Label><asp:Button ID="odPocetok" runat="server" Text="Почни од почеток!" style="float:right;margin-right:10%" OnClick="odPocetok_Click" Visible="False"/>
    </div>
</asp:Content>
