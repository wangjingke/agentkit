-- Create table
CREATE TABLE COMMITS (
    id TEXT,
    recurring_deviation TEXT,
    desc_en TEXT,
    justification_en TEXT,
    summary_en TEXT,
    cause_en TEXT
);

-- Copy CSV
COPY COMMITS (id, recurring_deviation, desc_en, justification_en, summary_en, cause_en)
FROM '/docker-entrypoint-initdb.d/translated_deviation_data_sample_agentkit.csv'
WITH CSV HEADER;