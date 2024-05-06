CREATE TABLE pokemons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_pokedex VARCHAR(255),
    nombre VARCHAR(255) NOT NULL,
    tipo VARCHAR(255),
    rareza VARCHAR(255),
    caught BOOLEAN,
    hp INT,
    atk INT,
    atk_esp INT,
    def INT,
    def_esp INT,
    vel INT
);