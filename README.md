# ☁️ Mini Project - Building Pipeline in Redshift using DBT-MySQL

Ce projet vise à construire un pipeline de données complet à partir d’un jeu de données brut. L’objectif est de transformer les données brutes en un schéma adapté pour un **Data Warehouse**, permettant d’effectuer des analyses efficaces. Nous débuterons par une exploration du schéma initial, qui nécessitera une **dénormalisation** afin de répondre aux besoins analytiques spécifiques.
Le jeu de données utilisé dans ce projet provient d'une entreprise de vente au détail souhaitant optimiser ses opérations commerciales. Ce jeu de données contient des informations détaillées sur plusieurs aspects de l'activité, notamment :

- **Suivi des commandes clients** : Identifier qui achète quoi, quand, et dans quel magasin.
- **Gestion des stocks** : Suivre les produits commandés et gérer les niveaux d'approvisionnement.
- **Analyse des performances des magasins** : Mesurer l'efficacité des magasins en fonction des commandes traitées, des ventes réalisées, et des taux de taxe appliqués.
- **Optimisation des coûts** : Évaluer les coûts des approvisionnements, particulièrement ceux des articles périssables, pour mieux gérer les marges.

L’objectif global pour l’entreprise est de mieux comprendre son activité et de prendre des décisions éclairées concernant :
- La gestion des stocks.
- L’optimisation des prix.
- La maximisation des ventes.

## 🎯**Objectifs et technologies**
Le projet repose sur l’utilisation de **DBT (Data Build Tool)** pour orchestrer les transformations de données, et d’**Amazon Redshift** pour héberger l’entrepôt de données. Ce cadre technique nous permettra de travailler efficacement sur la transformation et la structuration des données tout en améliorant nos compétences en **SQL** et en modélisation.

1. **Créer un schéma adapté pour un Data Warehouse** :
   - Simplifier les requêtes analytiques.
   - Optimiser les performances pour l’analyse.

2. **Implémenter un pipeline de données reproductible** :
   - Transformer les données brutes en tables dénormalisées prêtes à l’analyse.

3. **Améliorer les compétences techniques** :
   - Appliquer les concepts de modélisation des données.
   - Renforcer l'expertise en **ETL (Extract, Transform, Load)** et en **data modeling**.
  
## 🚀**Etapes clés**
1. **Data Modeling**
   - Analyser le jeu de données brut.
   - Concevoir le schéma physique des données.
   - Déterminer les besoins de dénormalisation pour créer un schéma adapté au DataWareHouse.
  
2. **Intégration des Données dans Redshift**
   - Mettre en place un entrepôt de données sur Amazon Redshift.
   - Créer et configurer un cluster Redshift Serverless.
   - Importer les données brutes dans Redshift.
     
3. **Transformation des Données, Testing et Documentation à l'aide de DBT**
   - Utiliser DBT pour orchestrer les transformations de données.
   - Créer des modèles DBT pour structurer les données selon le schéma dénormalisé.
   - Effectuer des tests pour valider les transformations.
   - Documenter les transformations et les modèles dans DBT.
  
4. **Requêtes Analytiques**
   - Identifier les indicateurs clés de performance (KPI) pertinents.
   - Écrire des requêtes SQL pour extraire des insights analytiques à partir des données transformées.
   - Créer des rapports et des visualisations basés sur les résultats des requêtes analytiques à l'aide de librairies Python au choix.

## 🧠**KPIs principaux**
1. **Quel est le total des ventes par client au cours de la dernière année ?**
   - KPI : Total des ventes par client
   - Utilité : Permet de mesurer la contribution des clients aux revenus totaux.
2. **Quel est le montant moyen des commandes par magasin ?**
   - KPI : Montant moyen des commandes par magasin
   - Utilité : Aide à comparer la performance des magasins et à identifier ceux qui génèrent plus de revenus.
3. **Quelle est la répartition des ventes par catégorie de produit ?**
   - KPI : Répartition des ventes par catégorie de produit
   - Utilité : Permet de comprendre quelles catégories de produits sont les plus populaires et rentables.
4. **Quelle est la taxe totale collectée par rapport au montant total des ventes ?**
   - KPI : Ratio de la taxe totale par rapport aux ventes totales
   - Utilité : Assure que la taxe est correctement appliquée et permet de vérifier la conformité fiscale.
5. **Quel est le revenu total généré par les clients classés comme Gold ?**
   - KPI : Revenu total par classe de client (Gold)
   - Utilité : Permet de cibler les clients Gold et d’évaluer leur impact sur les revenus.
          
## 📂**Structure du dépôt**

```
project-root/
|  README.md
|  dbt/
|    ├── models/
|    │  ├── staging/
|    │  ├── intermediate/
|    │  └── data_mart/
|    ├── seeds/
|    ├── tests/
|    └── analysis/
|  data/
|    ├── datasets/
|    ├── images/
|  notebook/
|    └── analysis_notebook.ipynb
```

## 📌**Outils utilisés**

- **DBT (Data Build Tool)** : Pour orchestrer les transformations et la documentation.
- **Amazon Redshift** : Entrepôt de données cloud pour stocker les tables.
- **Python** : Pour le chargement des données et les visualisations analytiques.
- **SQLAlchemy** : Pour interagir avec Redshift via Python.
- **Jupyter Notebook** : Pour analyser et visualiser les données.
<br>
