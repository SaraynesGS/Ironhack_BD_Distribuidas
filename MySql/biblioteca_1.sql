-- =========================================================
-- DATOS DE PROYECTO "BIBLIOTECA"
-- Esquema esperado (simple, sin índices especiales):
--   Autor (id_autor, nombre, apellido_1, apellido_2, nacionalidad)
--   Autor_has_Libro (id, Autor_id_autor, Libro_id_libro)
--   Estado (id_estado, Estado)
--   Genero (id_genero, genero)
--   Libro (id_libro, titulo, fecha_publicacion, paginas, id_genero)
--   Libro_detalle (id_detalle, Libro-id_libro, edicion_n, fecha_edicion, fecha_registro)
--   Libro_movimiento (id_libro_mov, fecha, Libro_detalle_id_detalle, Prestamo_id_prestamo, Estado_id_estado)
--   Prestamo (id_prestamo, id_usuario, fecha_solicitud, fecha_prestamo, fecha_devolucion)
--   Usuario (id_usuario, usuario_alias, fecha_creacion_usuario, 
--           bloqueado, nombre, apellido_1, apellido_2, fecha_nacimiento, direccion, mail, telefono, celular, dni)
-- =========================================================
USE biblioteca;

INSERT INTO Autor (id_autor, nombre, apellido_1, apellido_2, nacionalidad) VALUES
(1, 'Gabriel', 'García', 'Márquez', 'Colombiana'),
(2, 'Jane', 'Austen', NULL, 'Británica'),
(3, 'George', 'Orwell', NULL, 'Británica'),
(4, 'Agatha', 'Christie', NULL, 'Británica'),
(5, 'J.K.', 'Rowling', NULL, 'Británica'),
(6, 'Mark', 'Twain', NULL, 'Estadounidense'),
(7, 'Leo', 'Tolstoy', NULL, 'Rusa'),
(8, 'Ernest', 'Hemingway', NULL, 'Estadounidense'),
(9, 'Isaac', 'Asimov', NULL, 'Rusa-Estadounidense'),
(10, 'Stephen', 'King', NULL, 'Estadounidense'),
(11, 'Haruki', 'Murakami', NULL, 'Japonesa'),
(12, 'J.R.R.', 'Tolkien', NULL, 'Británica'),
(13, 'Dan', 'Brown', NULL, 'Estadounidense'),
(14, 'Fyodor', 'Dostoevsky', NULL, 'Rusa'),
(15, 'Charles', 'Dickens', NULL, 'Británica'),
(16, 'Herman', 'Melville', NULL, 'Estadounidense'),
(17, 'Virginia', 'Woolf', NULL, 'Británica'),
(18, 'Edgar', 'Allan', 'Poe', 'Estadounidense'),
(19, 'F. Scott', 'Fitzgerald', NULL, 'Estadounidense'),
(20, 'H.P.', 'Lovecraft', NULL, 'Estadounidense');

-- Genero ()
INSERT INTO Genero (id_genero, genero) VALUES
(1, 'Ficción'),
(2, 'No ficción'),
(3, 'Misterio'),
(4, 'Romance'),
(5, 'Educativo');

-- Libro (30+ libros, algunos del mismo autor) 
INSERT INTO Libro (id_libro, titulo, fecha_publicacion, paginas, Genero_id_genero) VALUES
(1, 'Cien años de soledad', '1967-05-30', 432, 1),
(2, 'Orgullo y Prejuicio', '1813-01-28', 279, 4),
(3, '1984', '1949-06-08', 328, 3),
(4, 'Asesinato en el Orient Express', '1934-01-01', 256, 3),
(5, 'Harry Potter y la piedra filosofal', '1997-06-26', 223, 1),
(6, 'El señor de los anillos', '1954-07-29', 1216, 1),
(7, 'Crimen y castigo', '1866-01-01', 671, 3),
(8, 'Matar a un ruiseñor', '1960-07-11', 281, 2),
(9, 'El gran Gatsby', '1925-04-10', 180, 1),
(10, 'El viejo y el mar', '1952-09-01', 127, 2),
(11, 'Fahrenheit 451', '1953-10-19', 194, 1),
(12, 'La metamorfosis', '1915-01-01', 74, 1),
(13, 'Drácula', '1897-05-26', 418, 3),
(14, 'Frankenstein', '1818-01-01', 280, 3),
(15, 'Los miserables', '1862-01-01', 1463, 1),
(16, 'La Odisea', '0800-01-01', 541, 5),
(17, 'El Quijote', '1605-01-01', 1072, 1),
(18, 'Guerra y paz', '1869-01-01', 1225, 1),
(19, 'El retrato de Dorian Gray', '1890-07-01', 254, 1),
(20, 'La isla del tesoro', '1883-05-23', 292, 1),
(21, 'Los pilares de la tierra', '1989-09-01', 973, 1),
(22, 'El código Da Vinci', '2003-03-18', 689, 3),
(23, 'El hobbit', '1937-09-21', 310, 1),
(24, 'Donde los árboles cantan', '2011-10-04', 477, 4),
(25, 'El alquimista', '1988-01-01', 208, 2),
(26, 'El principito', '1943-04-06', 96, 1),
(27, 'En llamas', '2009-09-01', 391, 1),
(28, 'Los juegos del hambre', '2008-09-14', 374, 1),
(29, 'El arte de la guerra', '0500-01-01', 273, 5),
(30, 'El guardián entre el centeno', '1951-07-16', 277, 1),
(31, 'Rayuela', '1963-06-28', 736, 1),
(32, 'Cumbres borrascosas', '1847-12-01', 464, 4),
(33, 'La sombra del viento', '2001-05-04', 576, 1),
(34, 'American Gods', '2001-06-19', 635, 1),
(35, 'Las cenizas de Ángela', '1996-09-05', 368, 2),
(36, 'It', '1986-09-15', 1138, 3);

-- Usuario (10+ usuarios)
INSERT INTO Usuario (id_usuario, usuario_alias, fecha_creacion_usuario, bloqueado, nombre, apellido_1, apellido_2, fecha_nacimiento, direccion, mail, telefono, celular, dni) VALUES
(1, 'usuario1', '2023-01-01', 'N', 'Ana', 'Martínez', 'López', '1990-03-20', 'Calle 123', 'ana@example.com', '123456789', '987654321', 'X1234567L'),
(2, 'usuario2', '2023-02-15', 'N', 'Carlos', 'García', 'Pérez', '1985-07-12', 'Avenida 456', 'carlos@example.com', '987654321', '123456789', 'Y1234567Z'),
(3, 'usuario3', '2023-01-22', 'N', 'Lucía', 'Hernández', 'Gómez', '1975-06-30', 'Calle 789', 'lucia@example.com', '111222333', '444555666', 'Z9876543X'),
(4, 'usuario4', '2023-03-01', 'N', 'Miguel', 'Fernández', 'Castro', '1991-11-15', 'Avenida 101', 'miguel@example.com', '999888777', '666555444', 'A1234567B'),
(5, 'usuario5', '2023-04-05', 'S', 'Elena', 'Torres', 'Marín', '1980-02-20', 'Calle Las Flores', 'elena@example.com', '222111000', '555444333', 'C9876543D'),
(6, 'usuario6', '2023-03-18', 'N', 'Roberto', 'Suárez', 'López', '2000-05-22', 'Avenida Siempre Viva', 'roberto@example.com', '333222111', '222111333', 'E1234567F'),
(7, 'usuario7', '2023-05-10', 'N', 'Marta', 'Romero', 'Castro', '1995-08-14', 'Calle del Sol', 'marta@example.com', '444333222', '111222444', 'G9876543H'),
(8, 'usuario8', '2023-08-19', 'N', 'Antonio', 'Ramos', 'Marin', '1978-10-11', 'Avenida Libertad', 'antonio@example.com', '555444333', '000999111', 'I1234567J'),
(9, 'usuario9', '2023-02-28', 'S', 'Claudia', 'Reyes', 'Pérez', '1999-12-01', 'Calle Luna', 'claudia@example.com', '666555444', '123000999', 'K9876543L'),
(10, 'usuario10', '2023-09-12', 'N', 'Javier', 'Ortiz', 'Martín', '1988-07-22', 'Avenida Centro', 'javier@example.com', '777666555', '444222333', 'M1234567N'),
(11, 'usuario11', '2023-06-01', 'N', 'Teresa', 'Méndez', 'Sánchez', '1995-12-23', 'Calle Norte', 'teresa@example.com', '888777666', '555333222', 'O1234567P'),
(12, 'usuario12', '2023-07-25', 'N', 'Ricardo', 'Vega', 'Mamani', '1981-04-19', 'Avenida Sur', 'ricardo@example.com', '858757666', '555334222', 'O1234567P');

-- Prestamo (10+ solicitudes de libros con múltiples por usuario y por libro)
INSERT INTO Prestamo (id_prestamo, Usuario_id_usuario, fecha_solicitud, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2023-09-01 10:00:00', '2023-09-02 10:00:00', '2023-09-15 10:00:00'),
(2, 2, '2023-09-01 11:00:00', '2023-09-03 10:00:00', '2023-09-20 10:00:00'),
(3, 3, '2023-09-02 12:30:00', '2023-09-04 11:00:00', '2023-09-21 11:00:00'),
(4, 1, '2023-09-05 09:15:00', '2023-09-06 09:00:00', NULL),
(5, 4, '2023-09-07 15:45:00', '2023-09-08 14:00:00', '2023-09-25 14:00:00'),
(6, 2, '2023-09-08 10:30:00', '2023-09-09 10:00:00', '2023-09-26 10:00:00'),
(7, 3, '2023-09-10 11:15:00', '2023-09-11 11:00:00', '2023-09-28 11:00:00'),
(8, 5, '2023-09-12 16:45:00', '2023-09-13 15:00:00', '2023-09-30 15:00:00'),
(9, 6, '2023-09-13 14:00:00', '2023-09-14 13:00:00', '2023-10-01 13:00:00'),
(10, 4, '2023-09-15 09:30:00', '2023-09-16 09:00:00', NULL),
(11, 7, '2023-09-17 14:30:00', '2023-09-18 14:00:00', '2023-10-05 14:00:00'),
(12, 1, '2023-09-19 10:00:00', '2023-09-20 09:30:00', NULL),
(13, 2, '2023-09-20 11:45:00', '2023-09-21 11:00:00', '2023-10-06 11:00:00'),
(14, 8, '2023-09-22 12:00:00', '2023-09-23 11:30:00', NULL),
(15, 9, '2023-09-24 13:15:00', '2023-09-25 13:00:00', NULL),
(16, 9, '2023-09-26 10:30:00', '2023-09-27 10:00:00', NULL),
(17, 1, '2023-09-27 15:50:00', '2023-09-28 10:00:00', NULL);

INSERT INTO Estado (id_estado, estado) VALUES
(1, 'Disponible'),
(2, 'Prestado'),
(3, 'Reservado'),
(4, 'En reparación'),
(5, 'Perdido');

INSERT INTO Autor_has_Libro (id, Autor_id_autor, Libro_id_libro) VALUES
(1, 1, 1),    -- Gabriel García Márquez - Cien años de soledad
(2, 2, 2),    -- Jane Austen - Orgullo y Prejuicio
(3, 3, 3),    -- George Orwell - 1984
(4, 4, 4),    -- Agatha Christie - Asesinato en el Orient Express
(5, 5, 5),    -- J.K. Rowling - Harry Potter y la piedra filosofal
(6, 12, 6),   -- J.R.R. Tolkien - El señor de los anillos
(7, 14, 7),   -- Fyodor Dostoevsky - Crimen y castigo
(8, 8, 8),    -- Harper Lee - Matar a un ruiseñor
(9, 19, 9),   -- F. Scott Fitzgerald - El gran Gatsby
(10, 8, 10),  -- Ernest Hemingway - El viejo y el mar
(11, 10, 11), -- Ray Bradbury - Fahrenheit 451
(12, 14, 14), -- Mary Shelley - Frankenstein
(13, 18, 36); -- Stephen King - It

INSERT INTO Libro_detalle (id_detalle, Libro_id_libro, edicion_n, fecha_edicion, fecha_registro) VALUES
(1, 1, 1, '2010-01-01', '2023-03-01'),
(2, 1, 2, '2015-05-15', '2023-03-01'),
(3, 2, 1, '2012-05-01', '2023-04-01'),
(4, 3, 1, '2011-06-01', '2023-05-01'),
(5, 4, 1, '2013-07-01', '2023-05-01'),
(6, 5, 1, '2014-08-01', '2023-06-01'),
(7, 6, 1, '2015-09-01', '2023-07-01'),
(8, 7, 1, '2016-10-01', '2023-08-01'),
(9, 8, 1, '2017-11-01', '2023-09-01'),
(10, 9, 1, '2010-12-01', '2023-09-01');

INSERT INTO Libro_movimiento (id_libro_mov, fecha, Libro_detalle_id_detalle, Prestamo_id_prestamo, Estado_id_estado) VALUES
(1, '2023-09-02', 1, 1, 2),  -- Prestado estado
(2, '2023-09-03', 2, 2, 2),
(3, '2023-09-04', 3, 3, 2),
(4, '2023-09-06', 4, 4, 2),
(5, '2023-09-08', 5, 5, 2),
(6, '2023-09-09', 6, 6, 2),
(7, '2023-09-11', 7, 7, 2),
(8, '2023-09-13', 8, 8, 2),
(9, '2023-09-14', 9, 9, 2),
(10, '2023-09-16', 10, 10, 2);
