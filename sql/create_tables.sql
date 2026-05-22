-- Création de la table des provinces

CREATE TABLE provinces (
    province_id INTEGER PRIMARY KEY,
    province_name TEXT
);

-- Création de la table des pays d'origine

CREATE TABLE origin_countries (
    country_id INTEGER PRIMARY KEY,
    country_name TEXT,
    primary_language TEXT,
    continent TEXT
);

-- Création de la table des flux d'immigration

CREATE TABLE immigration_flows (
    immigration_id INTEGER PRIMARY KEY,
    province_id INTEGER,
    country_id INTEGER,
    immigration_year INTEGER,
    immigration_category TEXT,
    number_of_immigrants INTEGER,
    processing_time_months INTEGER,

    FOREIGN KEY (province_id)
        REFERENCES provinces(province_id),

    FOREIGN KEY (country_id)
        REFERENCES origin_countries(country_id)
);
