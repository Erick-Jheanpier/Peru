CREATE DATABASE IF NOT EXISTS AprendePeru;
USE AprendePeru;

CREATE TABLE evaluaciones (
  id_evaluacion INT AUTO_INCREMENT PRIMARY KEY,
  administrador VARCHAR(400) NOT NULL,
  categoria VARCHAR(400) NOT NULL,
  titulo VARCHAR(400) NOT NULL,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  duracion_minutos INT,
  fecha_inicio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  fecha_fin DATE
);

CREATE TABLE preguntas (
  id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
  id_evaluacion INT,
  pregunta VARCHAR(4000) NOT NULL,
  puntaje INT,
  FOREIGN KEY (id_evaluacion) REFERENCES evaluaciones(id_evaluacion)
);

CREATE TABLE alternativas (
  id_alternativa INT AUTO_INCREMENT PRIMARY KEY,
  id_pregunta INT,
  texto VARCHAR(4000) NOT NULL,
  escorrecta ENUM('SI','NO'),
  FOREIGN KEY (id_pregunta) REFERENCES preguntas(id_pregunta)
);

INSERT INTO evaluaciones (administrador, categoria, titulo, duracion_minutos, fecha_fin) VALUES
('Erick', 'Parcial I', 'Fundamentos de Java', 45, '2025-06-20'),
('Ana', 'Parcial I', 'Lógica de Programación', 60, '2025-06-20'),
('Luis', 'Parcial II', 'Estructuras de Datos', 50, '2025-06-20'),
('Sofía', 'Final', 'Base de Datos', 70, '2025-06-20'),
('Carlos', 'Final', 'POO en Java', 80, '2025-06-20'),
('Valeria', 'Parcial I', 'Algoritmos', 55, '2025-06-20'),
('Marco', 'Parcial II', 'Redes I', 60, '2025-06-20'),
('Carmen', 'Parcial I', 'Matemática Discreta', 40, '2025-06-20'),
('José', 'Parcial II', 'Sistemas Operativos', 65, '2025-06-20'),
('Lucía', 'Final', 'Arquitectura de Computadoras', 90, '2025-06-20'),
('Erick', 'Extra', 'Taller de Java', 35, '2025-06-20'),
('Ana', 'Extra', 'HTML y CSS', 30, '2025-06-20'),
('Luis', 'Extra', 'Javascript Básico', 45, '2025-06-20'),
('Sofía', 'Parcial I', 'TIC I', 60, '2025-06-20'),
('Carlos', 'Parcial II', 'TIC II', 60, '2025-06-20'),
('Valeria', 'Final', 'TIC III', 75, '2025-06-20'),
('Marco', 'Parcial I', 'Programación Web', 50, '2025-06-20'),
('Carmen', 'Parcial II', 'Programación Móvil', 70, '2025-06-20'),
('José', 'Final', 'Seguridad Informática', 80, '2025-06-20'),
('Lucía', 'Extra', 'Inglés Técnico', 45, '2025-06-20');

INSERT INTO preguntas (id_evaluacion, pregunta, puntaje) VALUES
(1, '¿Qué es una clase en Java?', 5),
(2, '¿Cuál es la diferencia entre while y for?', 4),
(3, 'Define pila y cola.', 6),
(4, '¿Qué es una llave primaria?', 5),
(5, 'Explica el concepto de herencia.', 6),
(6, '¿Qué es un algoritmo?', 4),
(7, '¿Cuál es la capa de red del modelo OSI?', 5),
(8, '¿Qué es un conjunto finito?', 3),
(9, '¿Qué es un kernel?', 6),
(10, '¿Qué es la CPU?', 4),
(11, '¿Qué es un método en Java?', 5),
(12, '¿Qué es una etiqueta HTML?', 3),
(13, '¿Qué hace el operador "===" en JavaScript?', 5),
(14, '¿Qué significa TIC?', 2),
(15, 'Define software y hardware.', 4),
(16, '¿Qué es HTTP?', 3),
(17, '¿Qué es una API?', 4),
(18, '¿Qué es una aplicación nativa?', 5),
(19, '¿Qué es un firewall?', 6),
(20, '¿Qué es un manual técnico?', 3);


INSERT INTO alternativas (id_pregunta, texto, escorrecta) VALUES
(1, 'Una plantilla para crear objetos.', 'SI'), (1, 'Una función.', 'NO'), (1, 'Un ciclo.', 'NO'), (1, 'Una variable.', 'NO'),
(2, 'Se usan para iterar.', 'SI'), (2, 'Ambos son iguales.', 'NO'), (2, 'Uno se usa con arrays solamente.', 'NO'), (2, 'For no tiene condición.', 'NO'),
(3, 'Una pila es LIFO, una cola es FIFO.', 'SI'), (3, 'Ambas son iguales.', 'NO'), (3, 'Las pilas no existen.', 'NO'), (3, 'La cola va adelante.', 'NO'),
(4, 'Una clave única.', 'SI'), (4, 'Una base de datos.', 'NO'), (4, 'Un valor duplicado.', 'NO'), (4, 'Un índice.', 'NO'),
(5, 'Capacidad de una clase para heredar atributos y métodos.', 'SI'), (5, 'Crear una base de datos.', 'NO'), (5, 'Ejecutar código.', 'NO'), (5, 'Asignar variables.', 'NO'),
(6, 'Secuencia de pasos para resolver un problema.', 'SI'), (6, 'Una fórmula.', 'NO'), (6, 'Un software.', 'NO'), (6, 'Una red.', 'NO'),
(7, 'La tercera capa del modelo OSI.', 'SI'), (7, 'Primera capa.', 'NO'), (7, 'No existe en OSI.', 'NO'), (7, 'Una aplicación.', 'NO'),
(8, 'Conjunto con número limitado de elementos.', 'SI'), (8, 'Infinito.', 'NO'), (8, 'Vacío.', 'NO'), (8, 'Desordenado.', 'NO'),
(9, 'Núcleo del sistema operativo.', 'SI'), (9, 'Una interfaz.', 'NO'), (9, 'Un driver.', 'NO'), (9, 'Un archivo.', 'NO'),
(10, 'Unidad central de procesamiento.', 'SI'), (10, 'Memoria RAM.', 'NO'), (10, 'Tarjeta gráfica.', 'NO'), (10, 'Fuente de poder.', 'NO'),
(11, 'Una función dentro de una clase.', 'SI'), (11, 'Una variable.', 'NO'), (11, 'Un ciclo.', 'NO'), (11, 'Un paquete.', 'NO'),
(12, 'Elemento estructural de HTML.', 'SI'), (12, 'Un estilo.', 'NO'), (12, 'Una variable.', 'NO'), (12, 'Un evento.', 'NO'),
(13, 'Comparación estricta en JS.', 'SI'), (13, 'Operador lógico.', 'NO'), (13, 'Operador aritmético.', 'NO'), (13, 'No existe.', 'NO'),
(14, 'Tecnologías de la Información y la Comunicación.', 'SI'), (14, 'Tareas Informáticas Computacionales.', 'NO'), (14, 'Técnico de Internet.', 'NO'), (14, 'Ninguna.', 'NO'),
(15, 'Software es lo intangible, hardware lo físico.', 'SI'), (15, 'Ambos son físicos.', 'NO'), (15, 'Ambos son intangibles.', 'NO'), (15, 'Software es hardware.', 'NO'),
(16, 'Protocolo de transferencia de hipertexto.', 'SI'), (16, 'Lenguaje de programación.', 'NO'), (16, 'Base de datos.', 'NO'), (16, 'Interfaz.', 'NO'),
(17, 'Interfaz de programación de aplicaciones.', 'SI'), (17, 'Sistema operativo.', 'NO'), (17, 'Base de datos.', 'NO'), (17, 'Lenguaje de marcado.', 'NO'),
(18, 'Aplicación hecha para una plataforma específica.', 'SI'), (18, 'Página web.', 'NO'), (18, 'Aplicación universal.', 'NO'), (18, 'Driver.', 'NO'),
(19, 'Sistema de protección contra accesos no autorizados.', 'SI'), (19, 'Un software espía.', 'NO'), (19, 'Un virus.', 'NO'), (19, 'Un driver.', 'NO'),
(20, 'Documento que explica el uso de un sistema.', 'SI'), (20, 'Manual de usuario.', 'NO'), (20, 'Video.', 'NO'), (20, 'Mensaje de error.', 'NO');

select * from alternativas;