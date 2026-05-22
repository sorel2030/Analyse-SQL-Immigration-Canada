-- =====================================================================
-- PROJET : ANALYSE COMPARATIVE DES FLUX ET DÉLAIS D'IMMIGRATION
-- SCRIPT : sql/cleaning.sql
-- DESCRIPTION : Nettoyage, standardisation et validation des données
-- =====================================================================

-- 1. Suppression des espaces invisibles en début et fin de chaîne (Trimming)
UPDATE provinces 
SET province_name = TRIM(province_name);

UPDATE origin_countries 
SET country_name = TRIM(country_name),
    primary_language = TRIM(primary_language),
    continent = TRIM(continent);

UPDATE immigration_flows 
SET immigration_category = TRIM(immigration_category);


-- 2. Validation et intégrité des données numériques
-- Suppression des lignes contenant des valeurs négatives ou aberrantes
DELETE FROM immigration_flows 
WHERE number_of_immigrants < 0 
   OR processing_time_months < 0;


-- 3. Uniformisation de la casse pour la cohérence des filtres
-- On s'assure que 'Economic' ou 'Family' commencent par une majuscule
UPDATE immigration_flows
SET immigration_category = UPPER(SUBSTR(immigration_category, 1, 1)) || LOWER(SUBSTR(immigration_category, 2));
