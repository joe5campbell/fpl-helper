CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    second_name VARCHAR(50),
    team VARCHAR(50),
    position VARCHAR(20),
    cost DECIMAL(5,2),
    total_points INTEGER,
    points_per_game DECIMAL(5,2)
);