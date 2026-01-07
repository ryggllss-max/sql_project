# Projekt z SQL

Tento projekt se skládá ze dvou částí. Nejdříve jsem musel vytvořit dvě hlavní tabulky z dostupných datových sad a ve druhé části jsem pomocí těchto tabulek odpověděl na pět výzkumných otázek.

---

## První část: Vytvoření a obsah primární a sekundární tabulky

### Primární tabulka
Primární tabulku jsem sestavil z tabulky `czechia_payroll`, která obsahuje informace o mzdách v různých odvětvích za několikaleté období (zdroj: Portál otevřených dat ČR), a z tabulky `czechia_price`, která obsahuje informace o cenách vybraných potravin (zdroj: Portál otevřených dat ČR).

Tabulky jsem očistil o sloupce, které nepotřebuji pro zodpovězení výzkumných otázek. Po jejich spojení a vyčištění jsem vytvořil primární tabulku.

V primární tabulce jsou data za tato období:
* **Mzdy:** 2000 až 2021
* **Ceny potravin:** 2006 až 2018 (v letech 2000–2005 a 2019–2021 jsou hodnoty `NULL`).

**Název tabulky:** `t_Daniel_Rygl_project_SQL_primary_final`.

Data z této tabulky jsem použil k zodpovězení prvních 4 výzkumných otázek.

### Sekundární tabulka
Sekundární tabulku jsem vytvořil spojením tabulek:
* `countries`: obsahuje informace o zemích (hlavní město, měna, národní jídlo, průměrná výška populace).
* `economies`: obsahuje HDP, GINI, daňovou zátěž atd. pro daný stát a rok.

Data jsem vyfiltroval pouze pro evropské státy dle požadavku projektu a následně odstranil nepotřebné sloupce.

**Název tabulky:** `t_Daniel_Rygl_project_SQL_secondary_final`.

Data z této tabulky jsem použil k zodpovězení páté výzkumné otázky.

---

## Druhá část: Odpovědi na výzkumné otázky

### 1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
Ano, mzdy vzrostly ve všech odvětvích v měřených datech od roku 2000 do 2021.

Růst mezd samozřejmě kopíruje ekonomiku. V roce 2008 při velké finanční krizi, v letech 2012–2013 při stagnaci české ekonomiky a během covidové krize v roce 2020 mohou platy v jednotlivých odvětvích stagnovat nebo i klesnout, což se projevilo i v datech. Celkově však mzdy rostou ve všech odvětvích.

### 2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období?
První porovnatelná data máme v roce **2006** a poslední v roce **2018**.

* **Chléb:** V roce 2006 jsme si mohli koupit 1 313 kg, v roce 2018 to bylo 1 365 kg (nárůst o 52 kg).
* **Mléko:** V roce 2006 jsme si mohli koupit 1 466 l, v roce 2018 to bylo 1 670 l (nárůst o 204 l).

Z výsledků vyplývá, že si v roce 2018 můžeme koupit více chleba i mléka než v roce 2006.

### 3. Která kategorie potravin zdražuje nejpomaleji?
**Rajská jablka červená kulatá** zdražovala nejpomaleji (resp. zlevnila o 30,28 % v roce 2007). Na druhém místě se umístilo **pečivo pšeničné bílé** s poklesem 28,5 % v roce 2009.

### 4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (> 10 %)?
Z dostupných dat takový rok neexistuje. V letech 2006 až 2018 byla inflace potravin stabilní kolem 3 %.

Větší problém s vysokou inflací nastal až po covidové krizi v letech 2022–2024, kdy v roce 2022 dosahovala rekordních výšek kolem 15 %. To bychom mohli prověřit při dodání novějších dat.

### 5. Má výška HDP vliv na změny ve mzdách a cenách potravin?
> Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?

Ano, dle dostupných dat má HDP vliv na růst mezd i cen potravin.

* **Mzdy:** V datech je vidět, že když výrazně vzroste HDP, v následujícím roce výrazněji vzrostou i mzdy.
* **Potraviny:** Platí to také, ale nemusí to být pravidlem. Například v roce 2015 vzrostlo HDP výrazně a následující rok ceny potravin mírně klesly.

Celkově v období měřených dat (2000–2020) rostou HDP, mzdy i ceny potravin (u potravin máme dostupná data za roky 2006–2018).
