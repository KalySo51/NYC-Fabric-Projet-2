Ceci est le README pour le projet. 

Le but est d'analyser le trafic (heure de pointe, villes touristiques, CA , etc. ) pour une entreprise de location de voitures. 💯 ✨

Le process est le suivant : 

1️⃣ - Définition du besoin et identification des KPIs 
2️⃣ - Ingestion des fichiers Parquet dans le Lakehouse 
3️⃣ - Construction de pipeline pour nettoyer les données depuis les fichiers parquet et les charger dans un data warehouse (Silver) => confer le dossier sur les pipelines 
pour voir tous les pipelines.
4️⃣ - Création de la table de log à l'aide de procédure stockée 
5️⃣ - Construction d'un dataflow pour intégrer et joindre les données provenant de sources différentes => Le fichier dataflow est une version json du dataflow utilisé.
6️⃣ - Chargement des données dans la couche Gold

Voici le lien pour le jeu de données : https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page. 

Enjoy and sahre ! 
