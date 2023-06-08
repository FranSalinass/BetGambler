USE 5to_BetGambler;

INSERT INTO Continente (idContinente, continente)
VALUES	(1, "América del Norte"),
		(2, "América del Sur"),
		(3, "Europa"),
		(4, "Asia"),
		(5, "Oceania"),
		(6, "Africa");
		
INSERT INTO Pais(idPais, pais, idContinente)
VALUES	(1, "Argentina", 2),
		(2, "Brasil", 2),
		(3, "Chile", 2),
		(4, "Paraguay", 2),
		(5, "Estados Unidos", 1),
		(6, "Canada", 1),
		(7, "Mexico", 1),
		(8, "España", 3),
		(9, "Francia", 3),
		(10, "Portugal", 3),
		(11, "Alemania", 3),
		(12, "Inglaterra", 3),
		(13, "Rusia", 4),
		(14, "China", 4),
		(15, "Japon", 4);
	
INSERT INTO Estado_Apuesta (idEstado, estado)
VALUES	(1, "En Proceso"),
		(2, "Empezada"),
		(3, "Terminada");
		
INSERT INTO Temporada(idTemporada, temporada)
VALUES	(1, 2023);

INSERT INTO Tipo_Apuesta (tipoApuesta, apuesta)
VALUES	(1, "Goles"),
		(2, "Resultado");
	
INSERT INTO Equipo (nombre, idPais, entrenador)
VALUES	("Boca Juniors", 1, "Jorge Almirón"),
		("River Plate", 1, "Martin Demichelis");
	
INSERT INTO Liga (idLiga, nombre, idTemporada, idPais)
VALUES 	(1, "Liga Profesional de Futbol", 1, 1),
		(2, "Master League Soccer", 1, 5),
		(3, "Ligue 1", 1, 9),
		(4, "Primera B Nacional", 1, 1),
		(5, "La Liga", 1, 8),
		(6, "Bundesliga", 1, 11),
		(7, "Premier League", 1, 12);

INSERT INTO Estadio (idEstadio, nombre, informacion)
VALUES 	(1, "La Bombonera", "Estadio de Boca Juniors, ubicado en La Boca."),
		(2, "El Monumental", "Estadio de River Plate, ubicado en Nuñez"),
		(3, "El Cilindro", "Estadio de Racing Club, ubicado en Avellaneda"),
		(4, "El Bosque", "Estadio de Gimnasia, ubicado en La Plata");

INSERT INTO Copa (idCopa, nombre, idTemporada, idContinente)
VALUES (1, "CONMEBOL Libertadores de América", 1, 2);

INSERT INTO Fecha_Partido (fecha)
VALUES	(1),
		(2),
		(3),
		(4),
		(5),
		(6),
		(7),
		(8),
		(9),
		(20),
		(11),
		(12),
		(13),
		(14),
		(15),
		(16),
		(17),
		(18);
	
INSERT INTO Estado_Partido (idEstado, estado)
VALUES	(1, "A disputar"),
		(2, "En Juego"),
		(3, "Suspendido"),
		(4, "Postergado"),
		(5, "Terminado");
		
INSERT INTO Partido (idPartido, equipo_local, equipo_visitante, idFecha, idEstadio, idEstado)
VALUES (1, 1, 2, 15, 1, 2);

INSERT INTO Partido_Liga (idPartido, idLiga)
VALUES (1, 1);
	
CALL AltaUsuario ("SoyAdmin", "Administrador", "adminroot@gmail.com", 999.99, 18, "2004-12-25");

CALL AltaPartidoLiga(1, 1, 2, 15, 1); 

CALL AltaApuestaGol ();




-- Procedimientos NO CORRESPONDIENTES al código final. 


UPDATE Usuario 
SET mail = "adminroot@gmail.com",
nombre = "Administrador"
WHERE idUsuario = 1;

DELETE FROM Partido WHERE idPartido = 8;
DELETE FROM Equipo WHERE idEquipo=3;
DELETE FROM Equipo WHERE idEquipo=4;

