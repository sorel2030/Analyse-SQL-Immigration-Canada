# 🇨🇦 Analyse SQL de l’Immigration au Canada

## 📌 Contexte du projet

Le Canada est reconnu comme l’un des principaux pays d’accueil pour l’immigration qualifiée. Cependant, les différentes provinces canadiennes appliquent des stratégies et des processus administratifs distincts qui peuvent influencer l’attraction, l’intégration et la mobilité des immigrants.

Ce projet explore les tendances de l’immigration au Canada à travers une comparaison analytique entre le Québec et l’Ontario, avec un intérêt particulier pour :

- les délais administratifs,
- les profils linguistiques des immigrants,
- l’immigration économique,
- et les dynamiques de mobilité des travailleurs qualifiés.

L’objectif est de démontrer comment les données peuvent être utilisées pour analyser un enjeu de société complexe à l’aide de SQL, Python et de la visualisation de données.

---

# 🎯 Objectifs de l’analyse

Cette étude vise à :

- comparer les tendances d’immigration entre le Québec et l’Ontario ;
- analyser les délais de traitement des différents programmes ;
- observer les profils linguistiques et géographiques des immigrants ;
- étudier l’évolution de l’immigration économique ;
- identifier certaines tendances liées à la mobilité interprovinciale des travailleurs qualifiés.

---

# 🧠 Questions analytiques explorées

Le projet cherche notamment à répondre aux questions suivantes :

- Quelles provinces attirent le plus de travailleurs qualifiés ?
- Quels profils linguistiques dominent au Québec comparativement à l’Ontario ?
- Comment les délais administratifs évoluent-ils selon les programmes ?
- Quels groupes d’immigration semblent les plus sensibles aux délais prolongés ?
- Existe-t-il des tendances observables dans la mobilité des travailleurs qualifiés entre provinces ?

---

# 🛠️ Technologies utilisées

- SQL
- SQLite
- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook

---

# 💾 Compétences SQL démontrées

Ce projet met en pratique plusieurs concepts SQL essentiels dans les postes d’analyste de données :

- Création de tables relationnelles
- Clés primaires et clés étrangères
- Jointures (`JOIN`)
- Agrégations (`SUM`, `AVG`, `COUNT`)
- Groupements (`GROUP BY`)
- Sous-requêtes
- Filtres (`WHERE`, `HAVING`)
- Analyse comparative et calculs de tendances

---

# 📂 Structure du projet

```text
Analyse-SQL-Immigration-Canada/

README.md

data/
│
├── immigration_data.csv
├── processing_times.csv

sql/
│
├── create_tables.sql
├── cleaning.sql
├── exploratory_analysis.sql
├── trends_analysis.sql

notebooks/
│
├── immigration_analysis.ipynb

images/
│
├── dashboard.png

requirements.txt
```

---

# 📊 Résultats attendus

L’analyse permettra de mettre en évidence plusieurs tendances liées :

- aux délais administratifs ;
- aux catégories d’immigration ;
- aux profils linguistiques des immigrants ;
- à l’immigration économique ;
- et aux différences observées entre le Québec et l’Ontario.

---

#  Perspectives d’amélioration

Si davantage de temps et de données étaient disponibles, ce projet pourrait être enrichi avec :

- un tableau de bord interactif Streamlit ;
- des données gouvernementales plus détaillées ;
- des analyses prédictives sur les délais de traitement ;
- une étude plus approfondie de la mobilité interprovinciale ;
- des visualisations interactives avancées ;
- une comparaison avec d’autres provinces canadiennes.
  

---
---

##  Interprétation des Résultats : Analyse des Délais de Traitement

Voici le rendu visuel des tendances clés extraites de notre base de données :

![Évolution des délais de traitement](dashboard.png)

L'analyse comparative des délais de traitement entre le Québec et l'Ontario (2022-2024) met en lumière une divergence opérationnelle majeure entre les deux provinces.

### 1. Québec : Un engorgement structurel
On observe une hausse continue et marquée des délais de traitement au Québec, qui passent de **18 mois en 2022 à 26 mois en 2024**. 
* **Facteur explicatif :** Cette tendance reflète l'effet de goulot d'étranglement provoqué par des politiques de sélection plus restrictives et l'imposition de plafonds d'admissions annuelles. Les volumes de demandes d'immigration dépassent la capacité d'absorption réglementaire, ce qui fait gonfler l'inventaire des dossiers en attente et étire les délais.

### 2. Ontario : Une fluidité opérationnelle
À l'inverse, l'Ontario maintient une stabilité remarquable avec un délai moyen constant de **6 mois** sur toute la période.
* **Facteur explicatif :** Le modèle ontarien démontre une plus grande agilité face aux volumes élevés, s'appuyant sur des processus d'admissions en continu (via le système Entrée express fédérale) qui alignent le rythme de traitement sur les besoins immédiats du marché du travail, évitant ainsi l'accumulation de dossiers.

> 💡 **Conclusion  :** Le fossé qui se creuse entre les deux courbes illustre parfaitement le coût opérationnel d'une politique de gestion des flux par quotas stricts (Québec) face à une approche axée sur la vitesse de traitement et la demande du marché (Ontario).

#  Auteur

Tiokap Guemdjou  
Analyste de données junior | Python • SQL • Visualisation de données

GitHub : https://github.com/sorel2030
