USE materiasTec;

/*USUARIOS*/
INSERT INTO usuario (clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, usuario, contrasena, horas, rol) 
values('U01', 'ING.', 'ANTONIO', 'AGUILA', 'REYES', 'aaguila01', '01123', 5, 'jefe'),
	  ('U02', 'ING.', 'EFRAIN', 'BERMUDEZ', 'GUADALUPE', 'ebermudez02', '02123', 5, 'maestro'),
	  ('U03', 'ING.', 'JOS� FERNANDO', 'HERN�NDEZ', 'RODR�GUEZ', 'jfhernandez03', '03123', 5, 'maestro'),
	  ('U04', 'ING.', 'MAR�A MINERVA', 'SAUCEDO', 'TORRES ', 'mmsaucedo04', '04123', 5, 'maestro'),
	  ('U05', 'ING.', 'JOSE GERARDO', 'CARPIO', 'FLORES', 'jgcarpio05', '05123', 5, 'maestro'),
	  ('U06', 'ING.', 'LUIS EDUARDO', 'GUTIERREZ', 'AYALA', 'legutierrez06', '06123', 5, 'maestro'),
	  ('U07', 'ING.', 'RUTH', 'SAEZ DE NANCLARES', 'RODRIGUEZ', 'rsaez07', '07123', 5, 'maestro'),
	  ('U08', 'ING.', 'DENY', 'MARTINEZ', 'TREJO', 'dmartinez08', '08123', 5, 'maestro'),
	  ('U09', 'ING.', 'PAOLA VIRGINIA', 'GALVAN', 'JARAMILLO', 'pvgalvan09', '09123', 5, 'maestro'),
	  ('U10', 'ING.', 'JOSE ALEJANDRO', 'RODRIGUEZ', 'RENTERIA', 'jarodriguez10', '10123', 5, 'maestro'),
	  ('U11', 'LIC.', 'IRMA DE JESUS', 'RAMIREZ', 'ALVAREZ', 'iramirez11', '11123', 5, 'maestro'),
	  ('U12', 'ING.', 'ANA COLUMBA ZURITA', 'MARTINEZ', 'AGUILAR', 'aczmartinez12', '12123', 5, 'maestro'),
	  ('U13', 'ING.', 'JOSE ELIAS', 'MARTINEZ', 'ARIAS', 'jemartinez13', '13123', 5, 'maestro'),
	  ('U14', 'ING.', 'LAURA PATRICIA', 'GUEVARA', 'RANGEL', 'lpguevara14', '14123', 5, 'maestro'),
	  ('U15', 'LIC.', 'ROXANA NOEMI', 'MORENO', 'REAL', 'rnmoreno15', '15123', 5, 'maestro'),
	  ('U16', 'ING.', 'EUGENIO CONRADO', 'MARIN', 'GONZALEZ', 'ecmarin16', '16123', 5, 'maestro'),
	  ('U17', 'ING.', 'IVAN', 'VIGUERAS', 'MONTA�O', 'ivigueras17', '17123', 5, 'maestro'),
	  ('U18', 'ING.', 'ALEJANDRO', 'GARCIA', 'TRUJILLO', 'agarcia18', '18123', 5, 'maestro'),
	  ('U19', 'ING.', 'DENISSE', 'MEDINA', 'L�PEZ', 'dmedina19', '19123', 5, 'maestro'),
	  ('U20', 'LIC.', 'ELIZABETH', 'CASTELLANOS', 'NOLASCO', 'ecastellanos20', '20123', 5, 'maestro'),
	  ('U21', 'ING.', 'RUBEN', 'TRUJILLO', 'CORONA', 'rtrujillo21', '21123', 5, 'maestro'),
	  ('U22', 'M.C.', 'MARTHA ALICIA', 'ROCHA', 'SANCHEZ', 'marocha22', '22123', 5, 'maestro'),
	  ('U23', 'ING.', 'HECTOR FEDERICO', 'GODINEZ', 'CABRERA', 'hfgodinez23', '23123', 5, 'maestro'),
	  ('U24', 'ING.', 'JUAN IGNACIO', 'GUIZAR', 'RUIZ', 'jiguizar24', '24123', 5, 'maestro'),
	  ('U25', 'ING.', 'LUZ DEL CARMEN', 'RUIZ', 'GAYTAN', 'lcruiz25', '25123', 5, 'maestro'),
	  ('U26', 'ING.', 'CIRINO', 'SILVA', 'TOVAR', 'csilva26', '26123', 5, 'maestro'),
	  ('U27', 'ING.', 'MANUEL', 'ORNELAS', 'RODRIGUEZ', 'mornelas27', '27123', 5, 'maestro'),
	  ('U28', 'DR.', 'JUAN FRANCISCO', 'MOSI�O', '', 'jfmosino28', '28123', 5, 'maestro'),
	  ('U29', 'ING.', 'OSCAR ANDRES', 'MORALES', 'REYES', 'oamorales29', '29123', 5, 'maestro'),
	  ('U30', 'MTRA.', 'ANG�LICA JOSEFINA', 'P�REZ', 'FLORES', 'ajperez30', '30123', 5, 'maestro'),
	  ('U31', 'LIC.', 'ANGELICA MARIA', 'ORTIZ', 'GAUCIN', 'amortiz31', '31123', 5, 'maestro'),
	  ('U32', 'LIC.', 'DAVID EVERARDO', 'LUGO', 'PEDROZA', 'delugo32', '32123', 5, 'maestro'),
	  ('U33', 'LIC.', 'HECTOR JOSE', 'PUGA', 'SOBERANES', 'hjpuga33', '33123', 5, 'maestro'),
	  ('U34', 'ING.', 'JOSE ALFREDO', 'GASCA', 'GONZALEZ', 'jagasca34', '34123', 5, 'maestro'),
	  ('U35', 'ING.', 'CARLOS RAFAEL', 'LEVY', 'ROJAS', 'cflevy35', '35123', 5, 'maestro'),
	  ('U36', 'ING.', 'EDUARDO JOSE', 'PEREZ', 'PINTOR', 'ejperez36', '36123', 5, 'maestro'),
	  ('U37', 'DRA.', 'MARIA DEL ROSARIO', 'BALTAZAR', 'FLORES', 'mbaltazar37', '37123', 5, 'maestro'),
	  ('U38', 'ING.', 'LAURA', 'JUAREZ', 'GUERRA', 'ljuarez38', '38123', 5, 'maestro'),
	  ('U39', 'DR.', 'JUAN MARTIN', 'CARPIO', 'VALADEZ', 'jmcarpio39', '39123', 5, 'maestro'),
	  ('U40', 'ING.', 'MARIA DE LOS ANGELES', 'ARELLANO', 'VERA', 'maarellano40', '40123', 5, 'maestro'),
	  ('U41', 'MTRA.', 'MA. CONCEPCI�N ROC�O', 'S�NCHEZ', 'CANO', 'masanchez41', '41123', 5, 'maestro'),
	  ('U42', 'LIC.', 'GUSTAVO ADOLFO', 'RODR�GUEZ', 'MU�OZ', 'garodriguez42', '42123', 5, 'maestro'),
	  ('U43', 'ING.', 'IVAN', 'VIGUERAS', 'MONTA�O', 'ivigueras43', '43123', 5, 'maestro'),
	  ('U44', 'ING.', 'ANGELICA BENITA', 'HERNANDEZ', 'CARRANZA', 'abhernandez44', '44123', 5, 'maestro'),
	  ('U45', 'ING.', 'MIGUEL �NGEL', 'PE�A', 'L�PEZ', 'mapena45', '45123', 5, 'maestro'),
	  ('U46', 'DR.', 'RA�L', 'SANTIAGO', 'MONTERO', 'rsantiago46', '46123', 5, 'maestro'),
	  ('U47', 'DR.', 'VICTOR MANUEL', 'ZAMUDIO', 'RODRIGUEZ', 'vmzamudio47', '47123', 5, 'maestro'),
	  ('U48', 'ING.', 'JUAN CARLOS', 'AGUILERA', 'CRUZ', 'jcaguilera48', '48123', 5, 'maestro'),
	  ('U49', 'ING.', 'LUIS ROBERTO', 'GALLEGOS', 'MU�OZ', 'lrgallegos49', '49123', 5, 'maestro'),
	  ('U50', 'ING.', 'DOMINGO', 'GARCIA', 'ORNELAS', 'dgarcia50', '50123', 5, 'maestro'),
	  ('U51', 'ING.', 'MA. CONCEPCION', 'SANDOVAL', 'SOLIS', 'masandoval51', '51123', 5, 'maestro'),
	  ('U52', 'ING.', 'PATRICIA MARIA', 'CASTILLO', 'MART�NEZ', 'pmcastillo52', '52123', 5, 'maestro'),
	  ('U53', 'LIC.', 'CARLOS ALBERTO', 'TRUJILLO', 'CASTELLANOS', 'catrujillo53', '53123', 5, 'maestro'),
	  ('U54', 'ING.', 'ADOLFO', 'GAMI�O', 'GUERRERO', 'agamino54', '54123', 5, 'maestro'),
	  ('U55', 'ING.', 'MA. VERONICA', 'TAPIA', 'IBARRA', 'matapia55', '55123', 5, 'maestro'),
	  ('U56', 'ING.', 'JUAN PABLO', 'MURILLO', 'RUIZ', 'jpmurillo56', '56123', 5, 'maestro'),
	  ('U57', 'ING.', 'JAVIER IVAN', 'MANZANARES', 'CUADROS', 'jimanzanares57', '57123', 5, 'maestro'),
	  ('U58', 'M.C.', 'CARLOS', 'LINO', 'RAMIREZ', 'clino58', '58123', 5, 'maestro'),
	  ('U59', 'ING.', 'JOSE LUIS FERNANDO', 'SUAREZ Y GOMEZ', '', 'jflsuarez59', '59123', 5, 'maestro'),
	  ('U60', 'ING.', 'EDNA MILITZA', 'MARTINEZ', 'PRADO', 'emmartinez60', '60123', 5, 'maestro');
	
/*MATERIAS*/
INSERT INTO materia (clave_materia, nombre, abreviatura_carrera, carrera, semestre, horas_t, horas_p, creditos) 
values('ACF0901', 'C�LCULO DIFERENCIAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 1, 3, 2, 5),
	  ('AED1285', 'FUNDAMENTOS DE PROGRAMACI�N', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 1, 2, 3, 5),
	  ('AEF1041', 'MATEM�TICAS DISCRETAS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 1, 3, 2, 5),
	  ('SCH1024', 'TALLER DE ADMINISTRACI�N', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 1, 1, 3, 4),
	  ('ACC0906', 'FUNDAMENTOS DE INVESTIGACI�N', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 1, 2, 2, 4),
	  ('ACA0907', 'TALLER DE �TICA', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 1, 0, 4, 4),
	  ('ACF0902', 'C�LCULO INTEGRAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 2, 3, 2, 5),
	  ('ACF0903', '�LGEBRA LINEAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 2, 3, 2, 5),
	  ('AED1286', 'PROGRAMACI�N ORIENTADA A OBJETOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 2, 2, 3, 5),
	  ('AEC1008', 'CONTABILIDAD FINANCIERA', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 2, 2, 2, 4),
	  ('AEC1058', 'QU�MICA', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 2, 2, 2, 4),
	  ('AEF1052', 'PROBABILIDAD Y ESTAD�STICA', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 2, 3, 2, 5),
	  ('ACF0904', 'C�LCULO VECTORIAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 3, 3, 2, 5),
	  ('AED1026', 'ESTRUCTURA DE DATOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 3, 2, 3, 5),
	  ('SCF1006', 'F�SICA GENERAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 3, 3, 2, 5),
	  ('SCC1013', 'INVESTIGACI�N DE OPERACIONES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 3, 2, 2, 4),
	  ('SCC1005', 'CULTURA EMPRESARIAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 3, 2, 2, 4),
	  ('ACD0908', 'DESARROLLO SUSTENTABLE', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 3, 2, 3, 5),
	  ('ACF0905', 'ECUACIONES DIFERENCIALES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 4, 3, 2, 5),
	  ('SCD1027', 'T�PICOS AVANZADOS DE PROGRAMACI�N', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 4, 2, 3, 5),
	  ('SCD1018', 'PRINCIPIOS EL�CTRICOS Y APLICACIONES DIGITALES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 4, 2, 3, 5),
	  ('AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 4, 3, 2, 5),
	  ('SCD1022', 'SIMULACI�N', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 4, 2, 3, 5),
	  ('SCC1017', 'M�TODOS NUM�RICOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 4, 2, 2, 4),
	  ('SCD1003', 'ARQUITECTURA DE COMPUTADORAS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 5, 2, 3, 5),
	  ('SCA1025', 'TALLER DE BASE DE DATOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 5, 0, 4, 4),
	  ('SCC1010', 'GRAFICACI�N', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 5, 2, 2, 4),
	  ('AEC1034', 'FUNDAMENTOS DE TELECOMUNICACIONES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 5, 2, 2, 4),
	  ('SCC1007', 'FUNDAMENTOS DE INGENIER�A DE SOFTWARE', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 5, 2, 2, 4),
	  ('AEC1061', 'SISTEMAS OPERATIVOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 5, 2, 2, 4),
	  ('SCC1014', 'LENGUAJES DE INTERFAZ', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 6, 2, 2, 4),
	  ('SCB1001', 'ADMINISTRACI�N DE BASE DE DATOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 6, 1, 4, 5),
	  ('SCD1021', 'REDES DE COMPUTADORAS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 6, 2, 3, 5),
	  ('SCA1026', 'TALLER DE SISTEMAS OPERATIVOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 6, 0, 4, 4),
	  ('SCD1011', 'INGENIER�A DE SOFTWARE', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 6, 2, 3, 5),
	  ('SCD1015', 'LENGUAJES Y AUT�MATAS I', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 6, 2, 3, 5),
	  ('SCC1023', 'SISTEMAS PROGRAMABLES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 7, 2, 2, 4),
	  ('DAD1401', 'BASES DE DATOS AVANZADAS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 7, 2, 3, 5),
	  ('SCD1004', 'CONMUTACI�N Y ENRUTAMIENTO EN REDES DE DATOS', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 7, 2, 3, 5),
	  ('SCG1009', 'GESTI�N DE PROYECTOS DE SOFTWARE', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 7, 3, 3, 6),
	  ('SCD1016', 'LENGUAJES Y AUT�MATAS II', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 7, 2, 3, 5),
	  ('ACA0909', 'TALLER DE INVESTIGACI�N I', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 7, 0, 4, 4),
	  ('SCA1002', 'ADMINISTRACI�N DE REDES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 8, 0, 4, 4),
	  ('ACA0910', 'TALLER DE INVESTIGACI�N II', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 8, 0, 4, 4),
	  ('SCC1019', 'PROGRAMACI�N L�GICA Y FUNCIONAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 8, 2, 2, 4),
	  ('AEB1055', 'PROGRAMACI�N WEB', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 8, 1, 4, 5),
	  ('DAD1402', 'DESARROLLO DE APLICACIONES EMPRESARIALES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 8, 2, 3, 5),
	  ('SCC1012', 'INTELIGENCIA ARTIFICIAL', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 9, 2, 2, 4),
	  ('DAD1403', 'PROGRAMACI�N WEB AVANZADA', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 9, 2, 3, 5),
	  ('DAD1404', 'ARQUITECTURA DE APLICACIONES EMPRESARIALES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 9, 2, 3, 5),
	  ('DAB1405', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS M�VILES', 'ISX', 'INGENIER�A EN SISTEMAS COMPUTACIONALES', 9, 2, 3, 5);
	  
INSERT INTO horario (id_usuario,id_materia,clave_horario,clave_grupo,grupo,aula,lunes,martes,miercoles,jueves,viernes,periodo,turno,alumnos)
values(2, 1,'4007','G01','A','D1','','08:45-10:25','','08:45-10:25','09:35-10:25','Agosto-Diciembre/2020','Matutino',34),
	  (3, 1,'4008','G01','B','D2','','07:00-08:40','','07:00-08:40','07:50-08:40','Agosto-Diciembre/2020','Matutino',25),
	  (4, 1,'4009','G03','C','D3','','12:15-13:55','','12:15-13:55','13:05-13:55','Agosto-Diciembre/2020','Matutino',35),
	  (4, 1,'4010','G04','D','D4','','10:30-12:10','','10:30-12:10','11:20-12:10','Agosto-Diciembre/2020','Matutino',30),
	  (1, 1,'4011','G05','E','D5','10:30-12:10','','10:30-12:10','','10:30-11:20','Agosto-Diciembre/2020','Matutino',31),
	  (3, 1,'4012','G06','F','X3','12:15-13:55','','12:15-13:55','','12:15-13:05','Agosto-Diciembre/2020','Matutino',7),
	  (5, 2,'4013','G07','A','LC3','','12:15-13:55','','12:15-13:55','13:05-13:55','Agosto-Diciembre/2020','Matutino',35),
	  (6, 2,'4014','G08','B','LC3','','10:30-12:10','','10:30-12:10','11:20-12:10','Agosto-Diciembre/2020','Matutino',30),
	  (6, 2,'4015','G09','C','LC3','','08:45-10:25','','08:45-10:25','09:35-10:25','Agosto-Diciembre/2020','Matutino',34),
	  (7, 2,'4016','G10','D','LC3','','07:00-08:40','','07:00-08:40','07:50-08:40','Agosto-Diciembre/2020','Matutino',32),
	  (6, 2,'4017','G11','E','LC3','07:00-08:40','','07:00-08:40','','07:00-07:50','Agosto-Diciembre/2020','Matutino',32),
	  (8, 3,'4018','G12','A','D1','12:15-13:55','','12:15-13:55','','12:15-13:05','Agosto-Diciembre/2020','Matutino',35),
	  (9, 3,'4020','G13','C','D3','08:45-10:25','','08:45-10:25','','08:45-09:35','Agosto-Diciembre/2020','Matutino',35),
	  (9, 3,'4021','G14','D','D4','07:00-08:40','','07:00-08:40','','07:00-07:50','Agosto-Diciembre/2020','Matutino',30),
	  (10, 3,'4022','G15','E','D5','','07:00-08:40','','07:00-08:40','07:50-08:40','Agosto-Diciembre/2020','Matutino',31),
	  (11, 4,'4023','G16','A','D1','07:00-08:40','','07:00-08:40','','','Agosto-Diciembre/2020','Matutino',34),
	  (12, 4,'4024','G17','B','D2','08:45-10:25','','08:45-10:25','','','Agosto-Diciembre/2020','Matutino',26),
	  (11, 4,'4025','G18','C','D3','10:30-12:10','','10:30-12:10','','','Agosto-Diciembre/2020','Matutino',35),
	  (13, 4,'4026','G19','D','D4','12:15-13:55','','12:15-13:55','','','Agosto-Diciembre/2020','Matutino',31),
	  (11, 4,'4027','G20','E','D5','','12:15-13:55','','12:15-13:55','','Agosto-Diciembre/2020','Matutino',31),
	  (11, 5,'4028','G21','A','D1','','07:00-08:40','','07:00-08:40','','Agosto-Diciembre/2020','Matutino',34),
	  (14, 5,'4029','G22','B','D2','','08:45-10:25','','08:45-10:25','','Agosto-Diciembre/2020','Matutino',25),
	  (15, 5,'4030','G23','C','D3','','10:30-12:10','','10:30-12:10','','Agosto-Diciembre/2020','Matutino',34),
	  (15, 5,'4031','G24','D','D4','','12:15-13:55','','12:15-13:55','','Agosto-Diciembre/2020','Matutino',31),
	  (11, 5,'4032','G25','E','D5','12:15-13:55','','12:15-13:55','','','Agosto-Diciembre/2020','Matutino',34),
	  (14, 6,'4033','G26','A','D1','10:30-12:10','','10:30-12:10','','','Agosto-Diciembre/2020','Matutino',34),
	  (14, 6,'4034','G27','B','D2','12:15-13:55','','12:15-13:55','','','Agosto-Diciembre/2020','Matutino',25),
	  (16, 6,'4035','G28','C','D3','07:00-08:40','','07:00-08:40','','','Agosto-Diciembre/2020','Matutino',35),
	  (16, 6,'4036','G29','D','D4','08:45-10:25','','08:45-10:25','','','Agosto-Diciembre/2020','Matutino',30),
	  (4, 6,'4037','G30','E','D5','','08:45-10:25','','08:45-10:25','','Agosto-Diciembre/2020','Matutino',32),
	  (17, 7,'4038','G31','A','D8','12:15-13:55','','12:15-13:55','','12:15-13:05','Agosto-Diciembre/2020','Matutino',32),
	  (18, 7,'4039','G32','B','D8','10:30-12:10','','10:30-12:10','','10:30-11:20','Agosto-Diciembre/2020','Matutino',29),
	  (19, 8,'4040','G33','A','D3','','07:00-08:40','','07:00-08:40','07:50-08:40','Agosto-Diciembre/2020','Matutino',30),
	  (20, 9,'4041','G34','A','D15','10:30-12:10','','10:30-12:10','','10:30-11:20','Agosto-Diciembre/2020','Matutino',20),
	  (5, 9,'4042','G35','B','D15','12:15-13:55','','12:15-13:55','','12:15-13:05','Agosto-Diciembre/2020','Matutino',22),
	  (5, 9,'4043','G36','C','D15','07:00-08:40','','07:00-08:40','','07:00-07:50','Agosto-Diciembre/2020','Matutino',20),
	  (20, 9,'4044','G37','D','D15','08:45-10:25','','08:45-10:25','','08:45-09:35','Agosto-Diciembre/2020','Matutino',21),
	  (11, 10,'4045','G38','A','D2','','10:30-12:10','','10:30-12:10','','Agosto-Diciembre/2020','Matutino',26),
	  (21, 11,'4046','G39','A','D5','08:45-10:25','','08:45-10:25','','','Agosto-Diciembre/2020','Matutino',30),
	  (22, 12,'4047','G40','A','X1','','08:45-10:25','','08:45-10:25','09:35-10:25','Agosto-Diciembre/2020','Matutino',33),
	  (23, 13,'4048','G41','A','F8','12:15-13:55','','12:15-13:55','','12:15-13:05','Agosto-Diciembre/2020','Matutino',35),
	  (24, 13,'4049','G42','B','F8','10:30-12:10','','10:30-12:10','','10:30-11:20','Agosto-Diciembre/2020','Matutino',36),
	  (23, 13,'4050','G43','C','F8','08:45-10:25','','08:45-10:25','','08:45-09:35','Agosto-Diciembre/2020','Matutino',37),
	  (25, 14,'4051','G44','A','D6','10:30-12:10','','10:30-12:10','','10:30-11:20','Agosto-Diciembre/2020','Matutino',27),
	  (26, 14,'4052','G45','B','D6','12:15-13:55','','12:15-13:55','','12:15-13:05','Agosto-Diciembre/2020','Matutino',26),
	  (26, 14,'4053','G46','C','D6','07:00-08:40','','07:00-08:40','','07:00-07:50','Agosto-Diciembre/2020','Matutino',22),
	  (6, 14,'4054','G47','D','D6','08:45-10:25','','08:45-10:25','','08:45-09:35','Agosto-Diciembre/2020','Matutino',25),
	  (10, 15,'4055','G48','A','D8','07:00-08:40','','07:00-08:40','','07:00-07:50','Agosto-Diciembre/2020','Matutino',27),
	  (27, 15,'4056','G49','B','D8','08:45-10:25','','08:45-10:25','','08:45-09:35','Agosto-Diciembre/2020','Matutino',32),
	  (28, 15,'4057','G50','C','F6','10:30-12:10','','10:30-12:10','','10:30-11:20','Agosto-Diciembre/2020','Matutino',36);


	  
	  
	  
	  
	  
	  
	  