-- 📊 Analyse des tendances d'immigration dans le temps

-- 1. Évolution annuelle de l'immigration totale

SELECT
    immigration_year,
    SUM(number_of_immigrants) AS total_immigration
FROM immigration_flows
GROUP BY immigration_year
ORDER BY immigration_year;


-- 2. Comparaison Québec vs Ontario

SELECT
    p.province_name,
    i.immigration_year,
    SUM(i.number_of_immigrants) AS total_immigration
FROM immigration_flows i
JOIN provinces p
    ON i.province_id = p.province_id
WHERE p.province_name IN ('Quebec', 'Ontario')
GROUP BY p.province_name, i.immigration_year
ORDER BY i.immigration_year;


-- 3. Évolution des délais de traitement

SELECT
    immigration_year,
    AVG(processing_time_months) AS avg_processing_time
FROM immigration_flows
GROUP BY immigration_year
ORDER BY immigration_year;


-- 4. Immigration économique vs autres catégories

SELECT
    immigration_category,
    SUM(number_of_immigrants) AS total
FROM immigration_flows
GROUP BY immigration_category
ORDER BY total DESC;
