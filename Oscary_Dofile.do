*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************
***************************************************************OGÓLNE STATYSTYKI************************************************************************************
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************

//Statystki zmiennej zale|nej
tab oscar

//statystyki zmiennych niezaleznych
sum budzet2000
hist budzet2000

sum przychody2000
hist przychody2000

tab gatunek

tab ekranizacja

tab kraj_prod

tab milosc

sum czas_trwania
hist czas_trwania

tab nominacje

tab zlote_globy

tab bafta

*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************
**********************************************************************LINIOWY MODEL P-STWA***********************************************************************************
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************

//Model 1:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
fitstat
//chce usunac zmienna _Igatunek_7
test _Igatunek_7
//usuwamy zmienna _Igatunek_7 z modelu

//Model 2:
reg oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_8 _Igatunek_9 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna roi
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi
//usuwamy zmienna roi z modelu

//Model 3:
reg oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_8 _Igatunek_9 ekranizacja kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_8
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8
//usuwamy zmienna _Igatunek_8 z modelu

//Model 4:
reg oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_9 ekranizacja kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna budzet2000
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000
//usuwamy zmienna budzet2000 z modelu

//Model 5:
reg oscar  _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_9 ekranizacja kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_9
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9
//usuwamy zmienna _Igatunek_9 z modelu

//Model 6:
reg oscar  _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 ekranizacja kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna ekranizacja
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9 ekranizacja
//usuwamy zmienna ekranizacja z modelu

//Model 7:
reg oscar  _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_1
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9 ekranizacja _Igatunek_1
//usuwamy zmienna _Igatunek_1 z modelu

//Model 8:
reg oscar _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_5
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9 ekranizacja _Igatunek_1  _Igatunek_5
//usuwamy zmienna _Igatunek_5 z modelu

//Model 9:
reg oscar _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_3
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9 ekranizacja _Igatunek_1  _Igatunek_5 _Igatunek_3
//usuwamy zmienna _Igatunek_3 z modelu

//Model 10:
reg oscar _Igatunek_2 _Igatunek_4 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_4
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9 ekranizacja _Igatunek_1  _Igatunek_5 _Igatunek_3 _Igatunek_4
//usuwamy zmienna _Igatunek_4 z modelu

//Model 11:
reg oscar _Igatunek_2 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna przychody2000
//Model ogólny:
xi: reg oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 roi _Igatunek_8 budzet2000 _Igatunek_9 ekranizacja _Igatunek_1  _Igatunek_5 _Igatunek_3 _Igatunek_4 przychody2000
//usuwamy zmienna przychody2000 z modelu

//Model Finalny:
reg oscar _Igatunek_2 _Igatunek_6 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
hettest,rhs  //test na heteroskedastycznosc
//w modelu wystepuje heteroskedastycznosc,  p-value=0.0000 <0.05 odrzucamy hipoteze zerowa mowiaca o homoskedastycznosci

//sprawdzamy, czy wartosci dopasowane wychodza poza przedial [0,1]
predict xb1,xb
sum xb1
//jak widac wartosci dopasowane naleza do przedzialu [-0.096738;1,528635] - kolejna wada LMP

//sprawdze ile jest takich wartosci dopasowanych, ktore wykraczaja poza przedzial [0;1]
count if xb1<0 | xb1>1
//jest ich 425 z 1663, co oznacza okolo 25,56% wartosci nie jestesmy w stanie interpretowac

//postaram sie pozbyc problemu heteroskedastycznosci stosujac macierz wariancji-kowariancji White'a
reg oscar _Igatunek_2 _Igatunek_6 kraj_prod nominacje zlote_globy bafta milosc czas_trwania, robust

hettest,rhs  //nie dziala po robust :(
rvfplot
whitetst //p-value < 0.05 - odrzucamy H0 o homoskedasytcznosci
// robust nic nie pomógl, nie mozemy uzyc LMP

*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************
***************************************************************LOGIT*******************************************************************************************
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************

//Od ogolu do szczegolu:

//Model 1:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
//wiekszosc skladnikow zmiennej gatunek nieistotna tylko jedna istotna dlatego przetestuje laczna nieistotnosc zmiennej
test _Igatunek_7
//  usuwamy zmienna _Igatunek_7 z modelu

//Model 2:
logit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_8 _Igatunek_9 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_8
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 
// usuwamy zmienna _Igatunek_8 z modelu

//Model 3:
logit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_9 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_9
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9
//usuwamy zmienna _Igatunek_9 z modelu

//Model 4:
logit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_1
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1
//usuwamy zmienna _Igatunek_1 z modelu

//Model 5:
logit oscar  budzet2000 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna ekranizacja
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja
//usuwamy zmienna ekranizacja z modelu

//Model 6:
logit oscar  budzet2000 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna budzet2000
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000
//usuwamy zmienna budzet2000 z modelu

//Model 7:
logit oscar _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_5
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000 _Igatunek_5
//usuwamy zmienna _Igatunek_5 z modelu

//Model 8:
logit oscar _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna czas_trwania
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000 _Igatunek_5 czas_trwania
//usuwamy zmienna czas_trwania z modelu

//Model 9:
logit oscar _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna roi
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000 _Igatunek_5 czas_trwania roi
//usuwamy zmienna roi z modelu

//Model 10:
logit oscar _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna _Igatunek_4
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000 _Igatunek_5 czas_trwania roi _Igatunek_4
//usuwamy zmienna _Igatunek_4 z modelu

//Model 11:
logit oscar _Igatunek_2 _Igatunek_3 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna _Igatunek_3
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000 _Igatunek_5 czas_trwania roi _Igatunek_5 _Igatunek_3
//usuwamy zmienna _Igatunek_3 z modelu

//Model 12:
logit oscar _Igatunek_2 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna _Igatunek_6
//Model ogólny:
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 _Igatunek_9 _Igatunek_1 ekranizacja budzet2000 _Igatunek_5 czas_trwania roi _Igatunek_5 _Igatunek_3 _Igatunek_6
//usuwamy zmienna _Igatunek_6 z modelu

//Model Finalny:
logit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
linktest // linktest nie wychodzi
estat gof //gof nie wychodzi
lfit, group(10) table // TEst  Hosmer-Lemeshowa nie wychodzi

//Porównianie modelu ogólnego i zagniezdzonego
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
fitstat, saving(m1)
logit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
fitstat, using(m1) force

//INTERAKCJE
gen var0=_Igatunek_6*milosc // brak obserwacji
gen var1=_Igatunek_6*kraj_prod // nieistotne
gen var3=_Igatunek_6*nominacje // nieistotne
gen var4=_Igatunek_6*zlote_globy // nieistotne
gen var5=_Igatunek_6*bafta // brak obserwacji
gen var6=_Igatunek_6*nominacje // nieistotne
gen var7=_Igatunek_6*przychody2000 // nieistotne

gen var8=przychody2000*czas_trwania //nieistotne ale bilskie 0.10
gen var9=przychody2000*nominacje //istotne, ale przychody staja sie nie istotne, a linktest sie pogorsza
gen var10=przychody2000*zlote_globy //nieistotne
gen var11=przychody2000*bafta //istotne, ale przychody staja sie nie istotne, a linktest sie pogorsza
gen var12=przychody2000*kraj_prod //nieistotne
gen var13=przychody2000*milosc //nieistotne
gen var14=przychody2000*kraj_prod*zlote_globy //nieistotne

gen var20=nominacje*bafta //nieistotne

//Nic nie daja, dalej linktest nie wychodzi

//Sprawdzamy czy niektore zmienne nalezaloby przeksztalcic, zeby uzyskac poprawna forme funkcyjna
boxtid logit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc, zero(nominacje zlote_globy bafta) //sprawdza czy zmienne maja liniowa forme
//Przeksztalcamy nominacje, zlote_globy i bafta, bo maja p-value mniejsze od 0.05 (odpowiednio P=0.0000, P = 0.017 i P = 0.012),
//potrzeba transformacji tych zmiennych wynika prawdopodobnie ze spadajacych efektów krancowych

gen ln_nom=ln(nominacje)
recode ln_nom .=0  //ze wzgledu na generowanie brakow obserwacji przy zerowej wartosci zmiennej bazowej
gen ln_zg=ln(zlote_globy)
recode ln_zg .=0 //ze wzgledu na generowanie brakow obserwacji przy zerowej wartosci zmiennej bazowej
gen ln_baf=ln(bafta)
recode ln_baf .=0 //ze wzgledu na generowanie brakow obserwacji przy zerowej wartosci zmiennej bazowej

//Testy dla modelu przetransformowanego
logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
linktest
est store log_final2
estat gof
lfit, group(10) table
lstat  //tablica trafnosci dopasowan
fitstat

lroc //wykres krzywej RoC i ile procent znajduje sie nad nia
lsens // wykres krzywej wrazliwosci i specyficznosci
//lsens wskazuja na przeciecie w okolicach 0.05
lstat,cutoff(0.05)

findit collin //pakiet potrzebny do testowania korelacji zmiennych

collin oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
// 4.21 czyli mniej niz 10, wszystko ok 

//Porównanie dopasowania modelu bez przeksztalcen i z przeksztalceniami
//Bez przeksztalcen
logit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
fitstat, saving(m2)
//Z przeksztalceniami
logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
fitstat, using(m2) 
// model bez zmiennej przetransformowanej jest lepszy, 

logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
mfx compute
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************
******************************************************************************PROBIT*******************************************************************************************
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************

// Od ogólu do szczególu:

//Model 1:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_7
test _Igatunek_7
//  usuwamy zmienna _Igatunek_7 z modelu

//Model 2:
probit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_8 _Igatunek_9 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_8
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8
// usuwamy zmienna _Igatunek_8 z modelu

//Model 3:
probit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_9 ekranizacja kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna ekranizacja
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja
// usuwamy zmienna ekranizacja z modelu

//Model 4:
probit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 _Igatunek_9 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_9
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9
// usuwamy zmienna _Igatunek_9 z modelu

//Model 5:
probit oscar  budzet2000 _Igatunek_1 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_1
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1
// usuwamy zmienna _Igatunek_1 z modelu

//Model 6:
probit oscar  budzet2000 _Igatunek_2 _Igatunek_3 _Igatunek_4 _Igatunek_5 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna _Igatunek_4
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4
// usuwamy zmienna _Igatunek_4 z modelu

//Model 7:
probit oscar budzet2000 _Igatunek_2 _Igatunek_3 _Igatunek_5 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc czas_trwania
//chce usunac zmienna czas_trwania
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4  czas_trwania
// usuwamy zmienna czas_trwania z modelu

//Model 8:
probit oscar budzet2000 _Igatunek_2 _Igatunek_3 _Igatunek_5 _Igatunek_6 kraj_prod roi przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna roi
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4  czas_trwania roi
// usuwamy zmienna roi z modelu

//Model 9:
probit oscar budzet2000 _Igatunek_2 _Igatunek_3 _Igatunek_5 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna budzet2000
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4  czas_trwania roi budzet2000
// usuwamy zmienna budzet2000 z modelu

//Model 10:
probit oscar _Igatunek_2 _Igatunek_3 _Igatunek_5 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna _Igatunek_3
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4  czas_trwania roi budzet2000 _Igatunek_3
// usuwamy zmienna _Igatunek_3 z modelu

//Model 11:
probit oscar _Igatunek_2 _Igatunek_5 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna _Igatunek_5
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4  czas_trwania roi budzet2000 _Igatunek_3 _Igatunek_5
// usuwamy zmienna _Igatunek_5 z modelu

//Model 12:
probit oscar _Igatunek_2 _Igatunek_6 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
//chce usunac zmienna _Igatunek_6
//Model ogólny:
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
test _Igatunek_7 _Igatunek_8 ekranizacja _Igatunek_9 _Igatunek_1 _Igatunek_4  czas_trwania roi budzet2000 _Igatunek_3 _Igatunek_5 _Igatunek_6
// usuwamy zmienna _Igatunek_6 z modelu

//Model 13: Model Finalny
probit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
linktest
estat gof
lfit, group(10) table

//Porównianie modelu ogólnego i zagniezdzonego
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
fitstat, saving(m1)
probit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
fitstat, using(m1) force

//INTERAKCJE
gen pvar0=_Igatunek_6*milosc // brak obserwacji
gen pvar1=_Igatunek_6*kraj_prod // nieistotne
gen pvar3=_Igatunek_6*nominacje // nieistotne
gen pvar4=_Igatunek_6*zlote_globy // nieistotne
gen pvar5=_Igatunek_6*bafta // brak obserwacji
gen pvar6=_Igatunek_6*nominacje // nieistotne
gen pvar7=_Igatunek_6*przychody2000 // nieistotne

gen pvar8=przychody2000*czas_trwania //nieistotne ale bilskie 0.10
gen pvar9=przychody2000*nominacje //istotne, ale przychody staja sie nie istotne, a linktest sie pogorsza
gen pvar10=przychody2000*zlote_globy //nieistotne
gen pvar11=przychody2000*bafta //istotne, ale przychody staja sie nie istotne, a linktest sie pogorsza
gen pvar12=przychody2000*kraj_prod //nieistotne
gen pvar13=przychody2000*milosc //nieistotne
gen pvar14=przychody2000*kraj_prod*zlote_globy //nieistotne

gen pvar20=nominacje*bafta //nieistotne

//Nic nie daja, dalej linktest nie wychodzi

// Uzyjemy testu Boxa_Tidwell, |eby sprawdzic czy wszystkie zmienne maja odpowiednia postac
boxtid probit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc, zero (nominacje zlote_globy bafta) //sprawdza czy zmienne maja liniowa forme
//mamy juz te zmienne zlogarytmowane w bazie

probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc 
linktest // p-value dla _hatsq=0.385  - model ma poprawna forme funkcyjna
estat gof
lfit, group(10) table //grupujem zmienne na 10 grup zawzgledu na obecnosc zmiennej ciaglej "czas_trwania" w modelu
// p-value=0.0665 > 0.05 - poprawna forma funkcyjna wg testu Hosmera i Lemeshowa, 
lstat //tablica trafnosci dopasowan
fitstat

lroc //wykres krzywej RoC i ile procent znajduje sie nad nia
lsens // wykres krzywej wrazliwosci i specyficznosci
//lsens wskazuja na przeciecie w okolicach 0.05
lstat,cutoff(0.05)

//Porównianie modelu ogólnego i zagniezdzonego
probit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
fitstat, saving(m1)
probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc 
fitstat, using(m1) force

probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
mfx compute

*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************
**********************************************************************PORÓWNANIE LOGITU I PROBITU***********************************************************************
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************

//Porównanie logitu i probitu za pomoca fitstat
qui logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc 
qui fitstat, save
qui probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc 
fitstat, dif force
//chyba probit jednak

//Korelacja pomiedzy logitem, a probitem
qui logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc  
est store log_final
predict prlogit
label var prlogit "Logit: Pr(lfp)"

qui probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc 
est store prob_final
predict prprobit
label var prprobit "Probit: Pr(lfp)"
pwcorr prlogit prprobit // Korelacja wynosi 0.9994

//Wykresy ROC dla obu model
logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
predict logit_fin, xb
lroc, nograph

probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc

predict probit_fin, xb
lroc, nograph

roccomp oscar logit_fin probit_fin, graph summary


*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************
**********************************************************************TABELE***********************************************************************************
*****************************************************************************************************************************************************************************
*****************************************************************************************************************************************************************************

*********TABELA LOGIT I PROBIT EFEKTY CZASTKOWE*******************************
logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
mfx compute
eststo
probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
mfx compute
eststo

esttab, margin no nopar mtitles("Logit" "Probit") starlevels(* 0.10 ** 0.05 *** 0.01)


**********TABELA Z OSZACOWANIAMI PARAMETRÓW*********************

eststo: xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania 
mfx compute
eststo: logit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc 
eststo: logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
eststo: xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
eststo: probit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
eststo: probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
eststo: xi: reg oscar budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
eststo: reg oscar _Igatunek_2 _Igatunek_6 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
esttab, se pr2 ar2 aic bic starlevels(* 0.10 ** 0.05 *** 0.01) scalars("ll Log Wiarygodnosci" "chi2 Chi-kwadrat" "F Statystyka F") label replace booktabs mgroups(Logit Probit LMP, pattern(1 0 0 1 0 0 1 0) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) alignment(D{.}{.}{-1}) page(dcolumn) nonumber mtitles("Logit Ogolny" "Logit Zagniezdzony" "Logit Przetransformowy" "Probit Ogolny" "Probit Zagniezdzony" "Probit Przetransformowy" "LMP Ogolny" "LMP Finalny")

eststo clear

**********TABELA Z EFEKTAMI CZASTKOWYMI*********************
xi: logit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania 
mfx compute
eststo
logit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc 
mfx compute
eststo
logit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
mfx compute
eststo
xi: probit oscar  budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
mfx compute
eststo
probit oscar _Igatunek_2 kraj_prod przychody2000 nominacje zlote_globy bafta milosc
mfx compute
eststo
probit oscar _Igatunek_2 kraj_prod przychody2000 ln_nom ln_zg ln_baf milosc
mfx compute
eststo
xi: reg oscar budzet2000 i.gatunek ekranizacja roi przychody2000 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
mfx compute
eststo
reg oscar _Igatunek_2 _Igatunek_6 kraj_prod nominacje zlote_globy bafta milosc czas_trwania
mfx compute
eststo
esttab, margin style(fixed) pr2 ar2 aic bic starlevels(* 0.10 ** 0.05 *** 0.01) scalars("ll Log Wiarygodnosci" "chi2 Chi-kwadrat" "F Statystyka F") label replace booktabs mgroups(Logit Probit LMP, pattern(1 0 0 1 0 0 1 0) prefix(\multicolumn{@span}{c}{) suffix(}) span erepeat(\cmidrule(lr){@span})) alignment(D{.}{.}{-1}) page(dcolumn) nonumber mtitles("Logit Ogolny" "Logit Zagniezdzony" "Logit Przetransformowy" "Probit Ogolny" "Probit Zagniezdzony" "Probit Przetransformowy" "LMP Ogolny" "LMP Finalny")

eststo clear
********************************************************************************************************************
