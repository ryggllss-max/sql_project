# Projekt z SQL

Tento projekt se skládá ze dvou částí. V první části jsem vytvořil dvě hlavní tabulky z dostupných datových sad a ve druhé části jsem pomocí těchto tabulek odpověděl na pět výzkumných otázek.

---

## První část: vytvoření a obsah primární a sekundární tabulky

### Primární tabulka

Primární tabulku jsem sestavil z tabulky `czechia_payroll`, která obsahuje informace o mzdách v různých odvětvích za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR. Dále jsem použil tabulku `czechia_price`, která obsahuje informace o cenách vybraných potravin za několikaleté období a rovněž pochází z Portálu otevřených dat ČR.

Obě tabulky jsem očistil od sloupců, které nebyly potřebné pro zodpovězení výzkumných otázek. Po jejich spojení a vyčištění jsem vytvořil primární tabulku.

V primární tabulce jsou dostupné mzdy za období let 2000 až 2021 a ceny potravin za období let 2006 až 2018. Z toho důvodu jsou u cen potravin v letech 2000–2005 a 2019–2021 hodnoty `NULL`.

Tabulku jsem pojmenoval:

`t_Daniel_Rygl_project_SQL_primary_final`

Data z této primární tabulky jsem použil k zodpovězení prvních čtyř výzkumných otázek.

---

### Sekundární tabulka

Sekundární tabulku jsem vytvořil spojením tabulek `countries`, která obsahuje informace o jednotlivých státech světa, a tabulky `economies`, která obsahuje údaje o HDP, GINI koeficientu, daňové zátěži apod.

Z tabulek jsem vyfiltroval pouze evropské státy dle zadání projektu a následně odstranil nepotřebné sloupce.

Tabulku jsem pojmenoval:

`t_Daniel_Rygl_project_SQL_secondary_final`

Data z této tabulky jsem použil k zodpovězení páté výzkumné otázky.

---

## Druhá část: odpovědi na výzkumné otázky

### 1. Rostou v průběhu let mzdy ve všech odvětvích?

Ano, mzdy ve všech sledovaných odvětvích v období let 2000 až 2021 celkově rostly.

### 2. Kolik je možné si koupit mléka a chleba?

V roce 2006 bylo možné koupit 1 313 kg chleba a 1 466 l mléka.  
V roce 2018 to bylo 1 365 kg chleba a 1 670 l mléka.

### 3. Která kategorie potravin zdražuje nejpomaleji?

Nejpomaleji zdražovala položka rajská jablka červená kulatá.

### 4. Existuje rok s výrazně vyšší inflací potravin než růstem mezd?

Na základě dostupných dat takový rok neexistuje.

### 5. Má HDP vliv na mzdy a ceny potravin?

Ano, HDP má vliv na růst mezd i cen potravin.
