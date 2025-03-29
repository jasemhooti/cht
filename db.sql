
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    user_id INTEGER UNIQUE,
    username TEXT,
    balance INTEGER DEFAULT 0,
    register_date TEXT
);
CREATE TABLE IF NOT EXISTS plans (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price INTEGER,
    volume INTEGER,
    duration INTEGER,
    details TEXT
);
CREATE TABLE IF NOT EXISTS orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    plan_id INTEGER,
    status TEXT,
    created_at TEXT
);
CREATE TABLE IF NOT EXISTS games (
    id INTEGER PRIMARY KEY,
    player1 INTEGER,
    player2 INTEGER,
    amount INTEGER,
    status TEXT,
    winner INTEGER
);
CREATE TABLE IF NOT EXISTS tickets (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    message TEXT,
    status TEXT
);
