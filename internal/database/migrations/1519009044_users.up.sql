CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users
 ( id         SERIAL
 , uuid       UUID      DEFAULT uuid_generate_v1mc()
 , created_at TIMESTAMP NOT NULL DEFAULT NOW()
 , updated_at TIMESTAMP NOT NULL DEFAULT NOW()
 , username   TEXT      NOT NULL
 , discord_id TEXT      NOT NULL
 , is_admin   BOOLEAN   NOT NULL DEFAULT FALSE
 );

CREATE INDEX IF NOT EXISTS users_uuid ON users(uuid);
CREATE INDEX IF NOT EXISTS users_discord_id on users(discord_id);
