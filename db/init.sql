-- Ye script sirf PEHLI BAAR container start hone par chalta hai
-- (Postgres image ka /docker-entrypoint-initdb.d/ mechanism)

CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    done BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Kuch sample data taaki fresh setup pe empty na dikhe
INSERT INTO tasks (title, done) VALUES
    ('Docker Compose master karna', TRUE),
    ('GitHub Actions homework complete karna', FALSE),
    ('Terraform shuru karna', FALSE);
