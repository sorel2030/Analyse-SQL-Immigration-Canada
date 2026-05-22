-- Analyse 1 : Nombre total d'immigrants par province

SELECT
    p.province_name,
    SUM(i.number_of_immigrants) AS total_immigrants
FROM immigration_flows i
JOIN provinces p
    ON i.province_id = p.province_id
GROUP BY p.province_name
ORDER BY total_immigrants DESC;


-- Analyse 2 : Délai moyen de traitement par province

SELECT
    p.province_name,
    AVG(i.processing_time_months) AS average_processing_time
FROM immigration_flows i
JOIN provinces p
    ON i.province_id = p.province_id
GROUP BY p.province_name
ORDER BY average_processing_time DESC;


-- Analyse 3 : Principaux pays d'origine des immigrants

SELECT
    c.country_name,
    SUM(i.number_of_immigrants) AS total_immigrants
FROM immigration_flows i
JOIN origin_countries c
    ON i.country_id = c.country_id
GROUP BY c.country_name
ORDER BY total_immigrants DESC
LIMIT 10;


-- Analyse 4 : Immigration économique par province

SELECT
    p.province_name,
    SUM(i.number_of_immigrants) AS economic_immigration
FROM immigration_flows i
JOIN provinces p
    ON i.province_id = p.province_id
WHERE i.immigration_category = 'Economic'
GROUP BY p.province_name
ORDER BY economic_immigration DESC;
