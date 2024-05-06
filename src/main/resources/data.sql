INSERT INTO movimientos (nombre, danio) VALUES ('Ataque Rápido', 40);
INSERT INTO movimientos (nombre, danio) VALUES ('Rabia', 20);
INSERT INTO movimientos (nombre, danio) VALUES ('Autodestrucción', 200);
INSERT INTO movimientos (nombre, danio) VALUES ('Bombazo Huevo', 100);
INSERT INTO movimientos (nombre, danio) VALUES ('Látigo', 20);
INSERT INTO movimientos (nombre, danio) VALUES ('Polución', 20);
INSERT INTO movimientos (nombre, danio) VALUES ('Lodo', 65);
INSERT INTO movimientos (nombre, danio) VALUES ('Hueso Palo', 65);
INSERT INTO movimientos (nombre, danio) VALUES ('Llamarada', 110);
INSERT INTO movimientos (nombre, danio) VALUES ('Cascada', 80);
INSERT INTO movimientos (nombre, danio) VALUES ('Oscuro', 35);
INSERT INTO movimientos (nombre, danio) VALUES ('Rapidez', 60);
INSERT INTO movimientos (nombre, danio) VALUES ('Escudo', 100);
INSERT INTO movimientos (nombre, danio) VALUES ('Cañonazo', 20);
INSERT INTO movimientos (nombre, danio) VALUES ('Restricción', 10);
INSERT INTO movimientos (nombre, danio) VALUES ('Patada Salto', 130);
INSERT INTO movimientos (nombre, danio) VALUES ('Comesueños', 100);
INSERT INTO movimientos (nombre, danio) VALUES ('Golpe Aéreo', 140);
INSERT INTO movimientos (nombre, danio) VALUES ('Burbuja', 40);
INSERT INTO movimientos (nombre, danio) VALUES ('Martillazo', 90);
INSERT INTO movimientos (nombre, danio) VALUES ('Explosión', 250);
INSERT INTO movimientos (nombre, danio) VALUES ('Huesomerang', 50);
INSERT INTO movimientos (nombre, danio) VALUES ('Tumba Rocas', 75);
INSERT INTO movimientos (nombre, danio) VALUES ('Hipercolmillo', 80);
INSERT INTO movimientos (nombre, danio) VALUES ('Triataque', 80);
INSERT INTO movimientos (nombre, danio) VALUES ('Corte', 70);
INSERT INTO movimientos (nombre, danio) VALUES ('Combate', 50);

/*------------------------------------------------------------------------*/

-- Bulbasaur
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0001', 'Bulbasaur', 'Planta/Veneno', 'common', false, 45, 49, 65, 49, 65, 45,m1.id, m2.id, m3.id, m4.id
    FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Ivysaur
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0002', 'Ivysaur', 'Planta/Veneno', 'common', false, 60, 62, 80, 63, 80, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Venusaur
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0003', 'Venusaur', 'Planta/Veneno', 'rare', false, 80, 82, 100, 83, 100, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Charmander
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0004', 'Charmander', 'Fuego', 'common', false, 39, 52, 60, 43, 50, 65,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Charmeleon
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0005', 'Charmeleon', 'Fuego', 'common', false, 58, 64, 80, 58, 65, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Charizard
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0006', 'Charizard', 'Fuego/Volador', 'rare', false, 78, 84, 109, 78, 85, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Squirtle
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0007', 'Squirtle', 'Agua', 'common', false, 44, 48, 50, 65, 64, 43,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Wartortle
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0008', 'Wartortle', 'Agua', 'common', false, 59, 63, 65, 80, 80, 58,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Blastoise
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0009', 'Blastoise', 'Agua', 'rare', false, 79, 83, 85, 100, 105, 78,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Caterpie
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0010', 'Caterpie', 'Bicho', 'common', false, 45, 30, 20, 35, 20, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Metapod
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0011', 'Metapod', 'Bicho', 'uncommun', false, 50, 20, 25, 55, 25, 30,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Butterfree
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0012', 'Butterfree', 'Bicho/Volador', 'uncommun', false, 60, 45, 50, 50, 80, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Weedle
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0013', 'Weedle', 'Bicho/Veneno', 'common', false, 40, 35, 30, 30, 20, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Kakuna
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0014', 'Kakuna', 'Bicho/Veneno', 'uncommun', false, 45, 25, 50, 50, 25, 35,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Beedrill
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0015', 'Beedrill', 'Bicho/Veneno', 'uncommun', false, 65, 80, 40, 40, 80, 75,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Pidgey
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0016', 'Pidgey', 'Normal/Volador', 'common', false, 40, 45, 40, 40, 35, 56,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Pidgeotto
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0017', 'Pidgeotto', 'Normal/Volador', 'uncommun', false, 63, 60, 55, 55, 50, 71,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Pidgeot
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0018', 'Pidgeot', 'Normal/Volador', 'rare', false, 83, 80, 75, 75, 70, 101,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Rattata
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0019', 'Rattata', 'Normal', 'common', false, 30, 56, 35, 35, 25, 72,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Raticate
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0020', 'Raticate', 'Normal', 'uncommun', false, 55, 81, 60, 60, 50, 97,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Spearow
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0021', 'Spearow', 'Normal/Volador', 'common', false, 40, 60, 30, 30, 31, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Fearow
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0022', 'Fearow', 'Normal/Volador', 'uncommun', false, 65, 90, 65, 65, 61, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Ekans
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0023', 'Ekans', 'Veneno', 'common', false, 35, 60, 44, 44, 40, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Arbok
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0024', 'Arbok', 'Veneno', 'uncommun', false, 60, 85, 69, 69, 65, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Pikachu
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0025', 'Pikachu', 'Eléctrico', 'common', false, 35, 55, 50, 40, 50, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Raichu
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0026', 'Raichu', 'Eléctrico', 'uncommun', false, 60, 90, 85, 55, 80, 110,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Sandshrew
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0027', 'Sandshrew', 'Tierra', 'common', false, 50, 75, 85, 90, 90, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Sandslash
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0028', 'Sandslash', 'Tierra', 'uncommun', false, 75, 100, 110, 120, 120, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Nidoran♀
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0029', 'Nidoran♀', 'Veneno', 'common', false, 55, 47, 52, 40, 40, 41,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Nidorina
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0030', 'Nidorina', 'Veneno', 'uncommun', false, 70, 62, 67, 55, 55, 56,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Nidoqueen
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0031', 'Nidoqueen', 'Veneno/Tierra', 'rare', false, 90, 92, 87, 75, 85, 76,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Nidoran♂
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0032', 'Nidoran♂', 'Veneno', 'common', false, 46, 57, 40, 40, 40, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Nidorino
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0033', 'Nidorino', 'Veneno', 'uncommun', false, 61, 72, 57, 55, 55, 65,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Nidoking
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0034', 'Nidoking', 'Veneno/Tierra', 'rare', false, 81, 102, 77, 85, 75, 85,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Clefairy
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0035', 'Clefairy', 'Hada', 'uncommun', false, 70, 45, 48, 48, 65, 35,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Clefable
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0036', 'Clefable', 'Hada', 'rare', false, 95, 70, 73, 73, 90, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Vulpix
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0037', 'Vulpix', 'Fuego', 'uncommun', false, 38, 41, 50, 40, 65, 65,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Ninetales
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0038', 'Ninetales', 'Fuego', 'rare', false, 73, 76, 81, 75, 100, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Jigglypuff
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0039', 'Jigglypuff', 'Normal/Hada', 'uncommun', false, 115, 45, 20, 20, 25, 20,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Wigglytuff
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0040', 'Wigglytuff', 'Normal/Hada', 'rare', false, 140, 70, 45, 45, 50, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Zubat
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0041', 'Zubat', 'Veneno/Volador', 'common', false, 40, 45, 35, 35, 40, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Golbat
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0042', 'Golbat', 'Veneno/Volador', 'uncommun', false, 75, 80, 70, 70, 75, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Oddish
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0043', 'Oddish', 'Planta/Veneno', 'common', false, 45, 50, 75, 65, 75, 30,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Gloom
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0044', 'Gloom', 'Planta/Veneno', 'uncommun', false, 60, 65, 85, 75, 85, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Vileplume
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0045', 'Vileplume', 'Planta/Veneno', 'rare', false, 75, 80, 110, 90, 100, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Paras
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0046', 'Paras', 'Bicho/Planta', 'common', false, 35, 70, 55, 55, 55, 25,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Parasect
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0047', 'Parasect', 'Bicho/Planta', 'uncommun', false, 60, 95, 80, 80, 80, 30,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Venonat
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0048', 'Venonat', 'Bicho/Veneno', 'common', false, 60, 55, 50, 45, 55, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Venomoth
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0049', 'Venomoth', 'Bicho/Veneno', 'uncommun', false, 70, 65, 90, 60, 75, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Diglett
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0050', 'Diglett', 'Tierra', 'common', false, 10, 55, 25, 35, 45, 95,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Dugtrio
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0051', 'Dugtrio', 'Tierra', 'uncommun', false, 35, 80, 50, 50, 70, 120,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Meowth
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0052', 'Meowth', 'Normal', 'common', false, 40, 45, 35, 35, 40, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Persian
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0053', 'Persian', 'Normal', 'uncommun', false, 65, 70, 60, 60, 65, 115,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Psyduck
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0054', 'Psyduck', 'Agua', 'common', false, 50, 52, 65, 48, 50, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Golduck
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0055', 'Golduck', 'Agua', 'uncommun', false, 80, 82, 95, 78, 80, 85,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Mankey
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0056', 'Mankey', 'Lucha', 'common', false, 40, 80, 35, 35, 45, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Primeape
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0057', 'Primeape', 'Lucha', 'uncommun', false, 65, 105, 60, 60, 70, 95,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Growlithe
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0058', 'Growlithe', 'Fuego', 'uncommun', false, 55, 70, 50, 50, 60, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Arcanine
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0059', 'Arcanine', 'Fuego', 'rare', false, 90, 110, 80, 80, 90, 95,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Poliwag
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0060', 'Poliwag', 'Agua', 'common', false, 40, 50, 40, 40, 40, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Poliwhirl
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0061', 'Poliwhirl', 'Agua', 'uncommun', false, 65, 65, 65, 65, 50, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Poliwrath
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0062', 'Poliwrath', 'Agua/Lucha', 'rare', false, 90, 95, 95, 95, 70, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Abra
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0063', 'Abra', 'Psíquico', 'common', false, 25, 20, 105, 55, 85, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Kadabra
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0064', 'Kadabra', 'Psíquico', 'uncommun', false, 40, 35, 120, 70, 85, 105,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Alakazam
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0065', 'Alakazam', 'Psíquico', 'rare', false, 55, 50, 135, 85, 95, 120,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Machop
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0066', 'Machop', 'Lucha', 'common', false, 70, 80, 50, 50, 35, 35,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Machoke
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0067', 'Machoke', 'Lucha', 'uncommun', false, 80, 100, 70, 70, 50, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Machamp
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0068', 'Machamp', 'Lucha', 'rare', false, 90, 130, 80, 80, 65, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Bellsprout
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0069', 'Bellsprout', 'Planta/Veneno', 'common', false, 50, 75, 35, 35, 70, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Weepinbell
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0070', 'Weepinbell', 'Planta/Veneno', 'uncommun', false, 65, 90, 50, 50, 85, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Victreebel
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0071', 'Victreebel', 'Planta/Veneno', 'rare', false, 80, 105, 65, 65, 100, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Tentacool
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0072', 'Tentacool', 'Agua/Veneno', 'common', false, 40, 40, 50, 40, 100, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Tentacruel
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0073', 'Tentacruel', 'Agua/Veneno', 'uncommun', false, 80, 70, 80, 65, 120, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Geodude
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0074', 'Geodude', 'Roca/Tierra', 'common', false, 40, 80, 100, 100, 30, 20,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Gravel
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0075', 'Graveler', 'Roca/Tierra', 'uncommun', false, 55, 95, 115, 115, 45, 35 ,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Golem
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0076', 'Golem', 'Roca/Tierra', 'rare', false, 80, 120, 130, 130, 55, 45,m1.id, m2.id, m3.id, m4.id
    FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Ponyta
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0077', 'Ponyta', 'Fuego', 'uncommun', false, 50, 85, 55, 55, 65, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Rapidash
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0078', 'Rapidash', 'Fuego', 'rare', false, 65, 100, 70, 70, 80, 105,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Slowpoke
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0079', 'Slowpoke', 'Agua/Psíquico', 'uncommun', false, 90, 65, 40, 40, 40, 15,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Slowbro
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0080', 'Slowbro', 'Agua/Psíquico', 'rare', false, 95, 75, 80, 110, 80, 30,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Magnemite
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0081', 'Magnemite', 'Eléctrico/Acero', 'uncommun', false, 25, 35, 60, 70, 95, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Magneton
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0082', 'Magneton', 'Eléctrico/Acero', 'rare', false, 50, 60, 95, 110, 120, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Farfetch’d
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0083', 'Farfetch’d', 'Normal/Volador', 'rare', false, 52, 65, 58, 55, 62, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Doduo
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0084', 'Doduo', 'Normal/Volador', 'common', false, 35, 85, 45, 45, 35, 75,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Dodrio
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0085', 'Dodrio', 'Normal/Volador', 'uncommun', false, 60, 110, 70, 70, 60, 110,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Seel
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0086', 'Seel', 'Agua', 'uncommun', false, 65, 45, 55, 55, 45, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Dewgong
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0087', 'Dewgong', 'Agua/Hielo', 'rare', false, 90, 70, 80, 80, 70, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Grimer
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0088', 'Grimer', 'Veneno', 'common', false, 80, 80, 50, 50, 40, 25,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Muk
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0089', 'Muk', 'Veneno', 'uncommun', false, 105, 105, 65, 65, 75, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Shellder
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0090', 'Shellder', 'Agua', 'common', false, 30, 65, 45, 100, 25, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Cloyster
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0091', 'Cloyster', 'Agua/Hielo', 'uncommun', false, 50, 95, 65, 180, 45, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Gastly
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0092', 'Gastly', 'Fantasma/Veneno', 'uncommun', false, 30, 35, 100, 30, 35, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Haunter
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0093', 'Haunter', 'Fantasma/Veneno', 'rare', false, 45, 50, 115, 45, 55, 95,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Gengar
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0094', 'Gengar', 'Fantasma/Veneno', 'epic', false, 60, 65, 130, 60, 75, 110,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Onix
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0095', 'Onix', 'Roca/Tierra', 'uncommun', false, 35, 45, 60, 160, 70, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Drowzee
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0096', 'Drowzee', 'Psíquico', 'uncommun', false, 60, 48, 60, 45, 90, 42,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Hypno
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0097', 'Hypno', 'Psíquico', 'rare', false, 85, 73, 115, 70, 115, 67,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Krabby
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0098', 'Krabby', 'Agua', 'common', false, 30, 105, 90, 90, 25, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Kingler
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0099', 'Kingler', 'Agua', 'uncommun', false, 55, 130, 115, 115, 50, 75,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Voltorb
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0100', 'Voltorb', 'Eléctrico', 'common', false, 40, 30, 55, 55, 55, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Electrode
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0101', 'Electrode', 'Eléctrico', 'uncommun', false, 60, 50, 80, 80, 80, 140,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Exeggcute
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0102', 'Exeggcute', 'Planta/Psíquico', 'uncommun', false, 60, 40, 60, 80, 60, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Exeggutor
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0103', 'Exeggutor', 'Planta/Psíquico', 'rare', false, 95, 95, 125, 85, 65, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Cubone
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0104', 'Cubone', 'Tierra', 'common', false, 50, 50, 50, 95, 110, 45,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Marowak
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0105', 'Marowak', 'Tierra', 'uncommun', false, 60, 80, 80, 110, 125, 65,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Hitmonlee
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0106', 'Hitmonlee', 'Lucha', 'rare', false, 50, 120, 35, 53, 110, 87,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Hitmonchan
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0107', 'Hitmonchan', 'Lucha', 'rare', false, 50, 105, 79, 53, 110, 76,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Lickitung
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0108', 'Lickitung', 'Normal', 'uncommun', false, 90, 55, 60, 75, 75, 30,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Koffing
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0109', 'Koffing', 'Veneno', 'uncommun', false, 40, 65, 95, 95, 45, 35,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Weezing
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0110', 'Weezing', 'Veneno', 'rare', false, 65, 90, 120, 120, 70, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Rhyhorn
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0111', 'Rhyhorn', 'Tierra/Roca', 'uncommun', false, 80, 85, 30, 95, 30, 25,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Rhydon
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0112', 'Rhydon', 'Tierra/Roca', 'rare', false, 105, 130, 45, 120, 45, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Chansey
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0113', 'Chansey', 'Normal', 'rare', false, 250, 5, 5, 5, 105, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Tangela
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0114', 'Tangela', 'Planta', 'rare', false, 65, 55, 100, 115, 40, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Kangaskhan
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0115', 'Kangaskhan', 'Normal', 'rare', false, 105, 95, 80, 80, 40, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Horsea
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0116', 'Horsea', 'Agua', 'uncommun', false, 30, 40, 70, 70, 70, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Seadra
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0117', 'Seadra', 'Agua', 'rare', false, 55, 65, 95, 95, 95, 85,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Goldeen
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0118', 'Goldeen', 'Agua', 'uncommun', false, 45, 67, 60, 60, 50, 63,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Seaking
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0119', 'Seaking', 'Agua', 'rare', false, 80, 92, 65, 65, 80, 68,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Staryu
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0120', 'Staryu', 'Agua', 'uncommun', false, 30, 45, 85, 85, 55, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Starmie
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0121', 'Starmie', 'Agua/Psíquico', 'rare', false, 60, 75, 100, 100, 85, 115,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Mr. Mime
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0122', 'Mr. Mime', 'Psíquico/Hada', 'rare', false, 40, 45, 100, 120, 90, 105,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Scyther
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0123', 'Scyther', 'Bicho/Volador', 'rare', false, 70, 110, 80, 80, 55, 105,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Jynx
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0124', 'Jynx', 'Hielo/Psíquico', 'rare', false, 65, 50, 115, 35, 95, 95,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Electabuzz
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0125', 'Electabuzz', 'Eléctrico', 'rare', false, 65, 83, 95, 57, 85, 105,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Magmar
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0126', 'Magmar', 'Fuego', 'rare', false, 65, 95, 100, 57, 85, 93,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Pinsir
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0127', 'Pinsir', 'Bicho', 'rare', false, 65, 125, 100, 100, 55, 85,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Tauros
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0128', 'Tauros', 'Normal', 'rare', false, 75, 100, 95, 80, 70, 110,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Magikarp
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0129', 'Magikarp', 'Agua', 'common', false, 20, 10, 15, 55, 20, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Gyarados
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0130', 'Gyarados', 'Agua/Volador', 'epic', false, 95, 125, 100, 79, 100, 81,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Lapras
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0131', 'Lapras', 'Agua/Hielo', 'epic', false, 130, 85, 85, 80, 95, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Ditto
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0132', 'Ditto', 'Normal', 'epic', false, 48, 48, 48, 48, 48, 48,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Eevee
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0133', 'Eevee', 'Normal', 'rare', false, 55, 55, 55, 50, 65, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Vaporeon
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0134', 'Vaporeon', 'Agua', 'epic', false, 130, 65, 60, 60, 95, 65,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Jolteon
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0135', 'Jolteon', 'Eléctrico', 'epic', false, 65, 65, 110, 60, 95, 130,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Flareon
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0136', 'Flareon', 'Fuego', 'epic', false, 65, 130, 60, 60, 110, 65,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Porygon
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0137', 'Porygon', 'Normal', 'epic', false, 65, 60, 70, 70, 75, 40,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Omanyte
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0138', 'Omanyte', 'Roca/Agua', 'epic', false, 35, 40, 70, 100, 100, 35,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Omastar
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0139', 'Omastar', 'Roca/Agua', 'legendary', false, 70, 60, 115, 125, 70, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Kabuto
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0140', 'Kabuto', 'Roca/Agua', 'epic', false, 30, 80, 90, 90, 45, 55,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Kabutops
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0141', 'Kabutops', 'Roca/Agua', 'legendary', false, 60, 115, 105, 115, 70, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Aerodactyl
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0142', 'Aerodactyl', 'Roca/Volador', 'legendary', false, 80, 105, 65, 130, 75, 60,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Snorlax
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0143', 'Snorlax', 'Normal', 'legendary', false, 160, 110, 65, 65, 110, 30,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Articuno
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0144', 'Articuno', 'Hielo/Volador', 'mythical', false, 90, 85, 95, 100, 125, 85,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Zapdos
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0145', 'Zapdos', 'Eléctrico/Volador', 'mythical', false, 90, 90, 125, 85, 90, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Moltres
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0146', 'Moltres', 'Fuego/Volador', 'mythical', false, 90, 100, 125, 85, 90, 90,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Dratini
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0147', 'Dratini', 'Dragón', 'rare', false, 41, 64, 45, 45, 50, 50,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Dragonair
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0148', 'Dragonair', 'Dragón', 'rare', false, 61, 84, 65, 65, 70, 70,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Dragonite
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0149', 'Dragonite', 'Dragón/Volador', 'legendary', false, 91, 134, 95, 95, 100, 80,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Mewtwo
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel,movimiento1_id,movimiento2_id,movimiento3_id,movimiento4_id)
SELECT '0150', 'Mewtwo', 'Psíquico', 'legendary', false, 106, 110, 154, 90, 90, 130,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;

-- Mew
INSERT INTO pokemons (num_pokedex, nombre, tipo, rareza, caught, hp, atk, atk_esp, def, def_esp, vel, movimiento1_id, movimiento2_id, movimiento3_id, movimiento4_id)
SELECT '0151', 'Mew', 'Psíquico', 'mythical', false, 100, 100, 100, 100, 100, 100,m1.id, m2.id, m3.id, m4.id
FROM (SELECT id FROM movimientos ORDER BY RAND() LIMIT 4) AS movIDs join movimientos m1 on movIDs.id = m1.id join movimientos m2 on m2.id != movIDs.id join movimientos m3 on m3.id != m2.id and m3.id != m1.id join movimientos m4 on m4.id != m3.id and m4.id != m2.id and m4.id != m1.id order by rand() limit 1;
