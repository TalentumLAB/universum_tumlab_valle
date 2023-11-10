SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
USE uv_universum_db;
SET time_zone = "+00:00";

CREATE TABLE `activities` (
  `id` int NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `objetive` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `evidence` longtext COLLATE utf8mb4_general_ci,
  `indicators` longtext COLLATE utf8mb4_general_ci,
  `slug` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `dba` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dba2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `performance_levels` longtext COLLATE utf8mb4_general_ci,
  `reinforce` tinyint NOT NULL DEFAULT '0',
  `zone` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `grade_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `activities` (`id`, `name`, `description`, `objetive`, `evidence`, `indicators`, `slug`, `dba`, `dba2`, `performance_levels`, `reinforce`, `zone`, `subject_id`, `grade_id`) VALUES
(1, 'Al rescate de las normas', 'El estudiante llega a la calle del planeta y estando allí, debe decidir el momento indicado para cruzar el semáforo.', 'Anticipa algunas consecuencias de las decisiones que toma.', 'Desarrollar en el estudiante, la capacidad de tomar decisiones, frente a las situaciones que se le presentan.', '-Cantidad de movimientos acertados al momento de cruzar. -Cantidad de movimientos no acertados al momento de cruzar. -Cantidad de veces que realizó el juego. -Tiempo que tardó en tomar la decisión', 'al_rescate_de_las_normas', 'Toma decisiones frente a algunas situaciones cotidianas.', NULL, 'Bajo: Se le dificulta responder a interrogantes sencillos que se le plantean. Básico: Responde ante interrogantes sencillos que se le plantean. Alto: Diferencia situaciones correctas e incorrectas de la vida cotidiana. Superior: Decide frente a situaciones que se le presentan en la cotidianidad.', 0, 1, 1, 10),
(2, 'Una vida saludable, para cuidar la tierra', 'Para esta actividad, se muestran algunos implementos de higiene personal y alimentos saludables, pero también, elementos que no corresponden a esas categorias, por lo que el estudiante deberá arrastrar cada uno de estos al lugar que corresponda, ya sea la repisa del baño, la nevera, la alacena o la basura..', 'Muestra independencia en la realización de prácticas de higiene y alimentación saludables.', 'Clasificar los elementos que hacen parte de los hábitos de higiene personal y aquellos alimentos que son considerados saludables.', '-Cantidad de elementos ubicados en el lugar incorrecto. -Cantidad de elementos ubicados en el lugar correcto. -Cantidad de veces que el estudiante ingresó.', 'una_vida_saludable_para_cuidar_la_tierra', 'Se apropia de hábitos y prácticas para el cuidado personal y de su entorno.', NULL, 'Bajo: Se le dificulta identificar elementos de higiene, así como alimentos saludables. Básico: Identifica elementos de higiene y alimentos saludables. Alto: Compara elementos de higiene y alimentos saludables con otros que no corresponden. Superior: Ordena elementos de higiene y alimentos saludables, siguiendo instrucciones.', 0, 1, 2, 10),
(3, 'Emociones', 'Inicialmente, el estudiante se encuentra con una serie de situaciones representadas en imágenes y debe dar clic en la cara feliz sí le gusta o en la cara triste sí le disgusta. Posteriormente, tendrá disponible ocho botones que al dar clic, se reproduce un sonido, el cual deberá asociar con emoticones de enojo, tristeza, felicidad, repugnancia, miedo, sorpresa, vergüenza y amor.', 'Manifiesta sus gustos y disgustos frente a diferentes situaciones y reconoce paulatinamente sus emociones.', 'Expresar corporalmente, diferentes situaciones, manifestando su agrado o desagrado.', '-Cantidad de similitudes seleccionadas en relación a las caracteristicas del avatar y el segundo personaje. -Cantidad de diferencias seleccionadas en relación a las caracteristicas del avatar y el segundo personaje. -Cantidad de veces que el estudiante cambió su elección respecto al avatar. -Tiempo utlizado en la actividad.', 'emociones', 'Identifica y valora las características corporales y emocionales en sí mismo y en los demás.', NULL, 'Bajo:Se le dificulta responder a interrogantes sencillos que se le plantean. Básico: Responde ante interrogantes sencillos que se le plantean. Alto: Diferencia situaciones correctas e incorrectas de la vida cotidiana. Superior: Decide frene a situaciones que se le presentan en la cotidianidad.', 0, 1, 3, 10),
(4, 'Compartiendo valores', 'Para esta actividad el estudiante debe de decidir la opción correcta, teniendo en cuenta los acuerdos de convivencia realizados previamente; estos acuerdos se relacionan con cada una de las situaciones que se le presentan: ❖ Acuerdo # 1: Aprende a ser solidario 1. Aparece un compañero que no tiene lonchera para el recreo y el jugador está a un lado comiendo la suya; por lo cual debe escoger si compartir la lonchera con el que no tiene o comer solo. ❖ Acuerdo # 2: : La importancia de compartir con los compañeros 1. El jugador se encuentra en el patio jugando con una pelota y no desea jugar con nadie más, mientras los demás compañeros lo analizan. El jugador debe elegir si juega con sus compañeros o sigue jugando solo. ❖ Acuerdo # 3: La importancia del respeto por el otro 1. El jugador analiza que dos compañeros están golpeándose, por lo cual debe elegir si acercarse a pelear o llamar a un docente. Sí en los tres acuerdos el estudiante no elige la opción adecuada, aparece un mensaje indicándole que no ha cumplido el acuerdo; si por el contrario elige la opción adecuada, aparece un mensaje de felicitación.', 'Muestra respeto por los acuerdos de convivencia que se construyen en su familia, con sus pares y otros miembros de su comunidad.', 'Evidenciar los valores trabajados en clase, en situaciones que requieren responsabilidad, equilibrio y respeto por el otro.', '-Cantidad de elecciones incorrectas, que no coinciden con el acuerdo. -Cantidad de elecciones correctas que coinciden con el acuerdo. -Cantidad de veces que el estudiante ingresó.', 'compartiendo_valores', 'Participa en la construcción colectiva de acuerdos, objetivos y proyectos comunes.', NULL, 'Bajo: Con dificultad reconoce los valores trabajados en clase, en situaciones de la vida cotidiana. Básico: Reconoce que en actividades de interacción es necesario establecer acuerdos. Alto: Valora la importancia de respetar al otro. Superior: Evidencia sus aprendizajes relacionados con el respeto por el otro,ante situaciones que requieren interactuar con sus compañeros.', 0, 1, 4, 10),
(5, 'Cada cosa en su lugar', 'Aparece un mapa perteneciente al contexto de un pueblo, por consiguiente debe organizar las imágenes de los elementos que hacen falta en cada espacio correspondiente del mapa.', 'Crea ambientes haciendo uso de objetos, materiales y espacios.', 'Ordenar los elementos disponibles, en el espacio al que pertenecen.', '-Cantidad de veces que el estudiante ubicó los elementos en el espacio que no correspondía. -Cantidad de veces que el estudiante ubicó los elementos en el espacio correspondiente. -Tiempo utilizado en la actividad. -Cantidad de veces que realizó la actividad.', 'cada_cosa_en_su_lugar', 'Crea situaciones y propone alternativas de solución a problemas cotidianos a partir de sus conocimientos e imaginación.', NULL, 'Bajo: Presenta dificultades para reconocer elementos de su entorno. Básico: Identifica diferentes espacios de su cotidianidad, así como los elementos que pertenecen al mismo. Alto: Clasifica elementos según sus características físicas y el lugar al que pertenecen. Superior: Ubica elementos según sus características físicas y el lugar al que pertenecen.', 0, 1, 5, 10),
(6, 'Desafía tu ingenio', 'El juego consta de cuatro obstáculos los cuales el estudiante debe superar. OBSTÁCULO 1: Tiene la misión de encontrar una llave la cual le permite salir de la habitación. OBSTÁCULO 2: Cruzar y superar un laberinto. OBSTACULO 3: Consiste en caminar sobre unas baldosas que cambian de color, en las que deberá formar la figura que se le muestra al frente, con el objetivo abrir la puerta y terminar las misiones. Al finalizar la actividad, el estudiante redactará una historia corta, sobre las situaciones que experimentó y lo que hizo para llegar al final.', 'Construye textos cortos para relatar, comunicar ideas o sugerencias y hacer peticiones al interior del contexto en el que interactúa.', 'Redactar textos cortos para comunicar ideas o sugerencias y hacer peticiones al interior del contexto en el que interactúa.', '-Tiempo utilizado en la actividad.', 'desafia_tu_ingenio', 'Escribe palabras que le permiten comunicar sus ideas, preferencias y aprendizajes.', NULL, 'Bajo: Presenta dificultad para reconocer la estructura de un texto. Básico: Identifica los componentes de un texto corto. Alto: Organiza información importante que le permite construir un texto corto. Superior: Produce textos cortos en los cuales transmite ideas o sugerencias a partir de experiencias propias.', 0, 1, 6, 11),
(7, 'Misiones misteriosas', 'El estudiante llega a un entorno donde debe acercarse a 3 personajes que le entregan una serie de misiones, las cuales consisten en encontrar elementos de diferentes regiones: ● Personaje 1 Entrega la misión correspondiente de los elementos de Medellín Elementos: (Silleta, Monumento, Parque botero, Música de la región, El metro, jeep) ● Personaje 2 Entrega la misión correspondiente de los elementos de Cali. Elementos: (Monumento del Perro, El Gato de Tejada, La Tertulia, La Ermita, Música Salsa) ● Personaje 3 Entrega la misión correspondiente de los elementos de Barranquilla Elementos: (La ventana al mundo, Acordeón, Máscara, Marimonda, Sombrero volteado, Música de barranquilla)', 'Identifica diversas manifestaciones artísticas como la escultura, la pintura y la danza, y relaciona su contenido con el contexto en el que vive.', 'Reconocer elementos propios e importantes de diferentes regiones,así como su historia.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'misiones_misteriosas', 'Comprende que algunos escritos y manifestaciones artísticas pueden estar compuestos por texto, sonido e imágenes.', NULL, 'Bajo: Con dificultad reconoce elementos culturales. Básico: Identifica diferentes elementos que hacen parte de la cultura propia de cada región. Alto: Clasifica elementos de acuerdo a la ciudad o región a la que pertenecen, en relación con sus costumbres y cultura. Superior: Explica la importancia de reconocer y preservar el legado perteneciente a cada región, representado en costumbres y cultura.', 0, 1, 6, 13),
(8, 'Un viaje entre figuras', 'El estudiante llega a un laberinto que contiene frases con figuras literarias, deberá caminar por éste y selecciona el tipo de figura la figura contenido en la frase que lee y/o escucha;una vez identificadas las figuras en las frases dadas, deberá crear un texto donde emplee figuras literarias.', ' Emplea figuras literarias en la producción de textos literarios.', ' Conocer las figuras literarias y hacer uso de ellas en la producción de diferentes textos.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'un_viaje_entre_figuras', 'Crea textos literarios en los que articula lecturas previas e impresiones sobre un tema o situación.', NULL, 'Bajo: Con cierta dificultad reconoce algunas figuras literarias. Básico: Reconoce los nombres de las figuras literarias en los textos que lee. Alto: Establece relación entre las expresiones que lee o escucha y las figuras literarias. Superior: Produce textos literarios haciendo uso adecuado de las figuras literarias.', 0, 1, 6, 14),
(9, 'El reto literario', 'El estudiante se encuentra en un bosque en el que hay agentes contaminantes para los árboles. Para salvarlos tendrá que avanzar con su Pacman, tragarlos y dejar con vida sólo los géneros literarios. Después de dejarlos con vida, encuentrará tres árboles al final del bosque, en los cuales deberá cargar los frutos que representan elementos de cada género literario.', ' Identifica las características de los géneros literarios y establece nexos entre sus elementos constitutivos.', 'Identificar los diferentes géneros literarios y relacionarlos con sus elementos principales.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'el_reto_literario', 'Comprende los roles que asumen los personajes en las obras literarias y su relación con la temática y la época en las que estas se desarrollan.', NULL, 'Bajo: Con dificultad reconoce los géneros literarios. Básico: Nombra los géneros literarios que permiten identificar diferentes textos. Alto: Selecciona textos literarios de acuerdo al género literario al que pertenecen. Superior: Identifica los diferentes géneros literarios y los relaciona con sus elementos principales.', 0, 1, 6, 15),
(10, 'El mundo de los medios', 'Para esta actividad, el estudiante llega a una ciudad en la que se ha prohibido la publicidad y el uso excesivo de los medios de comunicación, por lo que se le presentarán algunas situaciones en las que deberá generar una solución, entregando un medio de comunicación.', 'Contrasta las características de diferentes medios de comunicación masiva a partir de la manera como presentan la información.', 'Reconocer la importancia y uso de los medios de comunicación con los que se relaciona.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'el_mundo_de_los_medios', 'Identifica las características de los medios de comunicación masiva a los que tiene acceso.', NULL, 'Bajo: Con dificultad reconoce los medios de comunicación. Básico: Identifica medios de comunicación cercanos a su contexto. Alto: Utiliza medios de comunicación como periódicos, revistas, noticieros, entre otros. Superior: Explora y recibe información, a través de los medios de comunicación de su entorno.', 0, 1, 6, 12),
(11, 'Riquezas regionales', 'Para esta actividad, se presentan las 5 regiones de Colombia (Caribe, Andina, Pacífica, Orinoquía y Amazonía), con la opción de que el estudiante pueda elegir a cuál de ellas pertenece. Posteriormente debe trasladar hasta ella las actividades económicas que allí se desarrollan.', 'Identifica los trabajos u oficios que las personas de su comunidad realizan para obtener su sustento y el de la familia.', ' Identificar la región a la que pertenece, así como las actividades propias que en ella se realizan: agricultura, ganadería, pesca, industria, minería o servicios.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'riquezas_regionales', 'Analiza las actividades económicas de su entorno y el impacto de estas en la comunidad.', NULL, 'Bajo: Muestra dificultad para reconocer su región. Básico: Señala su región entre otras. Alto: Relaciona actividades con la región a la que pertenece. Superior: Reconoce la región a la que pertenece y ubica en ella las actividades que se realizan:agricultura, ganadería, pesca, industria, minería o servicios.', 0, 1, 7, 12),
(12, 'Crea tu evento', 'El estudiante observa en un plano las características de los diferentes grupos humanos, por lo cual debe leer y caminar por los alrededores buscando a que grupo humano pertenece cada uno de ellos y llevarlo al lugar correspondiente.', 'Caracteriza aquellos grupos humanos que habitan en su región (afrodescendientes, raizales, blancos, indígenas, gitanos y/o mestizos)', ' Ubicar los grupos humanos presentes en nuestro país, en el contexto al que pertenecen, teniendo en cuenta sus características.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'crea_tu_evento', 'Analiza las contribuciones de los grupos humanos que habitan en su departamento, municipio o lugar donde vive, a partir de sus características culturales: lengua, organización social, tipo de vivienda, cosmovisión y uso de suelo.', NULL, 'Bajo: Presenta dificultad en el momento de seleccionar grupos humanos existentes en nuestro país. Básico: Reconoce los diferentes grupos humanos existentes en nuestro país. Alto: Clasifica los grupos humanos existentes en nuestro país a partir de sus características. Superior: Organiza los grupos humanos presentes en nuestro país, según el contexto al que pertenecen teniendo en cuenta sus características.', 0, 1, 7, 13),
(13, 'Decubre tu territorio', 'El estudiante ingresa al juego por un camino central, a la derecha encuentra un mapa de ciudad y a la izquierda un mapa del campo. Cada mapa contiene diferentes espacios. La misión es caminar alrededor de los mapas, tomar las palabras correspondientes (comercial, industrial, habitacional, deportivo, educativo, agrícola, ganadero, minero, forestal y turístico), para posteriormente ubicarlas en el espacio asignado, identificando también el uso de suelo.', 'Reconoce los usos del suelo propios de las ciudades (comercial, industrial, habitacional, deportivo y educativo, entre otros) y los del campo (agrícola, ganadero, minero, forestal y turístico, entre otros) a partir de la lectura de mapas temáticos.', ' Asignar el suelo adecuado según las características del mismo ( urbano o rural) para diferentes espacios usados por el ser humano.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'decubre_tu_territorio', 'Diferencia las características geográficas del medio urbano y el medio rural, mediante el reconocimiento de la concentración de la población y el uso del suelo, que se da en ellos.', NULL, 'Bajo: Se le difuculta establecer diferencias entre el suelo urbano y rural. Básico: Establece diferencias entre el suelo urbano y rural. Alto: Clasifica características propias del suelo urbano y rural para ubicar diferentes espacios. Superior: Determina el suelo más adecuado entre urbano y rural, para ubicar diferentes espacios.', 0, 1, 7, 14),
(14, 'Raíces vivas', 'El estudiante encuentra tres estaciones relacionadas con tribus indígenas a las cuales debe ayudar a encontrar su lugar. Al dar clic sobre ellas, se despliega la información que cada una contiene; así como también una imagen representativa de cada pueblo indígena. Después de realizar la lectura, debe ubicar el nombre de cada tribu con el pueblo indígena al que pertenece la información. Posteriormente, carga cada imagen hasta el mapa de Colombia que se encuentra demarcado por regiones y la ubica en el espacio que corresponde.', 'Utilizar sus habilidades para ubicar tribus indígenas, a partir de sus características y situarlas en el espacio correspondiente.', 'En los zapatos de los demás (Ayuda en lo que es bueno)', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'raices_vivas', 'Empatía', NULL, 'Bajo:Con dificultad reconoce las tribus indígenas de nuestro país. Básico:Reconoce algunas tribus indígenas de nuestro país, así como sus características. Alto:Asigna nombres que identifican las diferentes tribus indígenas. Superior:Utiliza sus destrezas para ubicar geograficamente las tribus indígenas, a partir de sus características y nombres.', 0, 2, 12, 15),
(15, 'Termoaventura', 'Para esta actividad, se muestran cuatro pisos térmicos, con los lugares asignados. El estudiante debe recolectar objetos correspondientes a cada uno de estos ubicarlos en el piso al cual pertenecen. Los pisos son: cálido, templado, frío y páramo. En cada uno de los niveles encuentra elementos que no le pertenecen al piso y debe subir o bajar los elementos dependiendo del piso térmico en el que está. Elementos: Cálido: Región Caribe, Orinoquía, Amazonía -Coco -Palma -Iguana -Caña de azúcar. Templado: Región Andina, Pacífica -Vaca -Café -Aguacate – Papaya. Frío: Región Andina, -Oveja -Frijol -Maíz – Papa. Páramo: Región Andina -Frailejón -Cóndor -Practicar montañismo -Excursiones de flora y fauna y neblina.', 'Relaciona la existencia de los pisos térmicos con los recursos naturales de cada región e identifica su incidencia en la diversidad de cultivos y actividades humanas.', 'Vincular cultivos y actividades humanas con diferentes pisos térmicos ubicados en cada región.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'termoaventura', 'Comprende la organización territorial existente en Colombia y las particularidades geográficas de las regiones.', NULL, 'Bajo: Se le dificulta identificar los diferentes pisos térmicos. Básico: Reconoce las características de los diferentes pisos térmicos. Alto: Relaciona las características propias de objetos con el piso térmico al que pertenecen. Superior: Organiza diferentes objetos y actividades humanas en el piso térmico y la región a la que pertenecen.', 0, 1, 7, 15),
(16, 'Jugando con la naturaleza', 'El estudiante se encuentra en un invernadero, en el cual debe caracterizar la intensidad de la luz que reciben las plantas, por lo que empleará diversos tipos de techo, los cuales podrán ser opacos, de papel o transparente.', 'Describe y caracteriza, utilizando la vista, diferentes tipos de luz (color, intensidad y fuente)', ' Clasificar utilizando la vista, los diferentes tipos de luz (intensidad)', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'jugando_con_la_naturaleza', 'Comprende que los sentidos le permiten percibir algunas características de los objetos que nos rodean (temperatura, sabor, sonidos, olor, color, texturas y formas.', NULL, 'Bajo: Muestra dificultades para identificar las caracteríticas de las fuentes de luz. Básico: Reconoce la importancia que tienen las fuentes de luz solar para las plantas. Alto: Determina los daños que pueden causar la exposición de las plantas ante la luz directa sin ningún tipo de protección. Superior: Elige de manera apropiada la fuente necesaria para que la luz solar se propague y beneficie las plantas.', 0, 1, 8, 11),
(17, 'Las aventuras del agua', 'En este juego, el estudiante inicia una carrera en la cual debe superar diversos desafíos relacionados con los estados del agua. Cada desafío requiere que supere un obstáculo. A medida que avanza obtiene información sobre el estado actual del agua. Tiene que superar cada obstáculo transformando el agua de un estado a otro.', 'Clasifica materiales de su entorno segun su estado (sólidos, líquidos o gases) a partir de sus propiedades básicas (si tiene forma propia o adoptan la del recipiente que los contiene, si fluyen, entre otros)', 'Interpretar los diferentes estados de la materia y generar soluciones cuando se requiera.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'las_aventuras_del_agua', 'Comprende que las sustancias pueden encontrarse en distintos estados (sólido, líquido y gaseoso).', NULL, 'Bajo: Con dificultad reconoce los estados de la materia. Básico: Determina que las diferentes temperaturas, varian de acuerdo al estado de la materia. Alto: Describe con características propias, los diferentes estados en los que se puede presentar la materia. Superior: Plantea alternativas que permiten modificar los estados de la materia según se requiera.', 0, 1, 8, 12),
(18, '¡Descrube el camuflaje!', 'El estudiante abre la puerta de un espacio en el que se encuentran varios animales. En el fondo hay una pared con diferentes tonalidades y elementos, por lo cual debe llevar cada animal hasta el espacio más apropiado para camuflarlo.', 'Observa y describe características que le permiten a algunos organismos camuflarse con el entorno, para explicar cómo mejoran su posibilidad de supervivencia.', ' Seleccionar animales cuyas características físicas le permiten camuflarse en la misma naturaleza.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'descrube_el_camuflaje', 'Comprende las relaciones de los seres vivos con otros organismos de su entorno (intra e interespecíficas) y las explica como esenciales para su supervivencia en un ambiente determinado.', NULL, 'Bajo: Se le dificulta reconocer animales que poseen características semejantes a la naturaleza. Básico: Reconoce animales que poseen características semejantes a la naturaleza. Alto: Describe las caracteríticas propias de animales que poseen características semejantes a la naturaleza. Superior: Relaciona y ubica animales que poseen características semejantes a la naturaleza, en espacios donde logran camuflarse.', 0, 1, 8, 13),
(19, 'Ecosistemas en acción', 'Se le muestra al estudiante dos ecosistemas diferentes: Ecosistema terrestre de la Costa Pacífica y Ecosistema acuático de la Región Caribe. Además, se le proporcionan unos elementos, los cuales deberá trasladar hasta el ecosistema y región al que pertenecen.', 'Diferencia tipos de ecosistemas (terrestres y acuáticos) correspondientes a distintas ubicaciones geográficas, para establecer sus principales características.', 'Reconocer las clases de ecosistemas que existen y su clasificación de acuerdo a los diferentes factores que los componen.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'ecosistemas_en_acción', 'Comprende que existen distintos tipos de ecosistemas (terrestres y acuáticos) y que sus características físicas (temperatura, humedad, tipos de suelo, altitud) permiten que habiten en ellos diferentes seres vivos.', NULL, 'Bajo: Se le dificulta reconocer las características de un ecosistema. Básico: Identifica un ecosistema como parte de la naturaleza viva y sus características. Alto: Clasifica los ecosistemas a partir de sus caracterìticas y elementos que lo componen. Superior: Comprende la importancia e incidencia del buen funcionamiento de los ecosistemas para el medio ambiente a partir de los elementos que lo conforman.', 0, 1, 8, 14),
(20, 'Energia en movimiento', 'Al estudiante se le muestra un personaje que está en una carrera de relevos y evidencia como las pulsaciones y la frecuencia respiratoria aumentan a medida que el jugador avanza hacia la meta y la energía comienza a disminuir. La misión consiste en identificar que procesos metabólicos están relacionados con el aumento de las pulsaciones y la frecuencia respiratoria, para ayudar al corredor a superar los obstáculos y terminar la carrera.', 'Explica por qué cuando se hace ejercicio físico aumentan tanto la frecuencia cardíaca como la respiratoria y vincula la explicación con los procesos de obtención de energía de las células.', 'Explicar la influencia del ejercicio físico en el aumento de la frecuencia cardiaca y respiratoria; vinculando la energía que lleva a las células.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'energia_en_movimeinto', 'Comprende que en los seres humanos (y en muchos otros animales) la nutrición involucra el funcionamiento integrado de un conjunto de sistemas de órganos: digestivo, respiratorio y circulatorio.', NULL, 'Bajo: Con dificultad reconoce los cambios efectuados en el cuerpo al realizar ejercicio físico. Básico: Reconoce que algunos procesos en su cuerpo cambian al realizar ejercicio físico. Alto: Observa el aumento de la frecuencia cardiaca y respiratoria al realizar ejercicio físico. Superior: Explica la incidencia del ejercicio físico, al aumentar la frecuencia cardiaca y respiratoria en el cuerpo, trasladando energía a las células.', 0, 1, 8, 15),
(21, 'SumaCósmica', 'El estudiante deberá calcular la cantidad de contaminantes que se han filtrado en el aire y arrojarlos al agujero negro.', 'Hace estimaciones de longitud, área, volumen, peso y tiempo según su necesidad en la situación.', 'Determinar el resultado de diferentes situaciones matemáticas en las que se estima longitud, área, volumen, peso y tiempo según se requiera.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'sumacosmica', 'Realiza estimaciones y mediciones de volumen, capacidad, longitud, área, peso de objetos o la duración de eventos como parte del proceso para resolver diferentes problemas.', NULL, 'Bajo:Se le dificulta identificar procesos que le permitan obtener un resultado numérico. Básico: Identifica procesos que le permiten conocer el peso, longitud, área, volumen y tiempo de diferentes objetos. Alto:Resuelve situaciones problemas en las que le es necesario estimar el peso, longitud, área, volumen y tiempo de diferentes objetos. . Superior: Comprueba por medio de situaciones matemáticas, el peso, longitud, área, volumen y tiempo de diferentes objetos.', 0, 1, 9, 13),
(22, 'Dimenzoo: ¡La aventura de las medidas!', 'Al estudiante, se le mostrará diferentes espacios dentro de una casa, en los cuales deberá ubicar elementos faltantes, teniendo en cuenta el area de los mismos, para esto, se le darán varias opciones de elementos.', 'Estima la medida de diferentes magnitudes en situaciones prácticas.', 'Reconocer las medidas de objetos y espacios, estableciendo equivalencia entre ellos.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'dimenzoo_la_aventura_de_las_medidas', 'Compara y explica caracteristicas que se pueden medir, en el proceso de resolución de problemas relativos a la longitud, superficie, velocidad, peso o duración de los eventos entre otros.', NULL, 'Bajo: Con dificultad realiza procesos de medición. Básico: Realiza procesos de medición de objetos y espacios. Alto: Establece equivalencias y diferencias en lo relacionado con medidas de diferentes objetos y espacios. Superior: Propone espacios para objetos de diferentes tamaños utilizando procesos, que le permiten establecer medidas exactas.', 0, 1, 9, 12),
(23, 'Reconociendo figuras', 'El estudiante debe clasificar las siguientes figuras, teniendo en cuenta las semejanzas en la forma: cuadro, cuaderno, pelota, llanta, cono de carro, cono de helado, para esto contará con los siguientes criterios para clasificarlas: es redondo, es cuadrado, tiene puntas. Se clasificará según el criterio facilitado.', 'Agrupa objetos de su entorno de acuerdo con las semejanzas y las diferencias en la forma y en el tamaño y explica el criterio que utiliza. Por ejemplo, si el objeto es redondo, si tiene puntas, ente otras características.', ' Seleccionar figuras teniendo en cuenta sus características geométricas comunes y expresa el proceso.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'reconociendo_figuras', 'Compara objetos del entorno y establece semejanzas y diferencias empleando características geométricas de las formas bidimensionales y tridimensionales (curvo o recto, abierto o cerrado, plano o sólido, número de lados, número de caras, entre otros).', NULL, 'Bajo:Con difucultad identifica figuras geométricas. Básico: Reconoce elementos semejantes a figuras geométricas. Alto:Clasifica figuras geométricas a partir de sus características comunes. Superior: Explica los criterios utilizados para seleccionar figuras geométricas a partir de características comunes.', 0, 1, 9, 11),
(24, 'Aventura matemàgica', 'El estudiante debe usar sus habilidades de estimación para ayudar a un personaje que se ha perdido en el centro de la tierra y está en el bosque encantado. Allí todas las cosas tienen propiedades especiales y tendrá que tener en cuenta aspectos como volumen, área y longitud para resolver las misiones que se le presenten.', 'Estimar volumen, área y longitud de elementos; ante la ausencia de objetos adecuados de medidas.', 'Hace estimaciones de volumen, área y longitud en presencia de los objetos y los instrumentos de medida y en ausencia de ellos.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'aventura_matemagica', 'Realiza estimaciones y mediciones de volumen, capacidad, longitud, área, peso de objetos o la duración de eventos como parte del proceso para resolver diferentes problemas.', NULL, 'Bajo:Se le dificulta reconocer dimensiones básicas de medidas. Básico:Identifica dimensiones básicas de medidas como volumen, área y longitud. Alto:Utiliza elementos con características propias, como instrumentos de medidas de objetos. Superior:Obtiene resultados de volumen, área y longitud de elementos, con instrumentos provisionales de medida.', 0, 4, 9, 15),
(25, 'Trastoaventura', 'El estudiante tiene el desafio de ayuda a un vecino a mudarse, para esto, deberá expresar una misma medida en diferentes unidades y resolver tres misiones relacionadas con la conversión de unidades.', 'Expresa una misma medida en diferentes unidades, establece equivalencias entre ellas y toma decisiones de la unidad más conveniente según las necesidades de la situación.', ' Enunciar medidas en diferentes unidades, estableciendo equivalencias entre ellas .', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'trastoaventura', 'Elige instrumentos y unidades estandarizadas y no estandarizadas para estimar y medir longitud, área, volumen, capacidad, peso y masa, duración, rapidez, temperatura, y a partir de ellos hace los cálculos necesarios para resolver problemas.', NULL, 'Bajo:Con dificultad reconoce medidas en diferentes unidades. Básico:Utliza algunas unidades de medidas. Alto:Establece unidades de medidas. Superior: Expresa medidas en diferentes unidades, que permiten dar solución a situaciones planteadas.', 0, 1, 9, 15),
(26, 'Dominó', 'El estudiante llega a un planeta y encuentra 6 fichas de dominó. El avatar que acompaña el juego de Universum llamado: “Manguito” indica que la primera y la última ficha marcan el camino, las otras están desorganizadas y se necesita organizarlas para restablecer los acuerdos perdidos en el planeta Tierra. Por tal motivo se debe acordar cómo organizar las fichas por el color de los elementos y por la forma. Una vez se acuerde el criterio para organizar las fichas, se da inicio al juego y se indica que debe tener en cuenta las cantidades para organizar las fichas.', 'Generar acuerdos de manera colectiva, que le permitan llevar a cabo procesos de secuencia.', 'Propone su punto de vista en espacios de construcción colectiva', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'domino_infantil', 'Para transición, se habla de propósitos de la primera infancia: Los niños y las niñas construyen su identidad en relacion con los otros: se sienten queridos, y valoran positivamnete pertenecer a una familia, cultura y mundo.', NULL, 'Bajo:Se le dificulta reconocer y establecer acuerdos, así como cantidades mínimas. Básico:Reconoce la importancia de los acuerdos en el momento de realizar actividades sencillas. Alto:Propone acuerdos que le permiten desarrollar actividades de cantidad y secuencia. Superior:Establece acuerdos en procesos colectivos, que le permiten desarrollar actividades de cantidad y secuencia.', 0, 2, 4, 10),
(27, 'Fuerza Aplicada', 'El estudiante llega a un espacio donde tiene la misión de modificar algunos elementos para deshacerse de ellos y limpiar el lugar, pero no sabe cómo hacerlo. Se acerca un personaje y aparece un cuadro de diálogo con dos opciones: ¿Requieres ayuda? ¿Quieres hacerlo solo? Sí el estudiante elige la opción \"Requiero ayuda\", el personaje le propone desformarlos, aplicando la fuerza y clasificarlos desde el menos hasta el más resistente.Sí por el contrario elige la opción \"Hacerlo solo\" Se le recuerda la importancia de recibir ayuda para lograr mejores resultados.', 'Identificar los cambios producidos en ciertos objetos al aplicarles fuerza y clasificarlos de acuerdo a su resistencia.', 'Mi mundo emocional (Pide ayuda cuando se siento abrumado.)', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'fuerza_aplicada', 'Manejo del estrés', NULL, 'Bajo:Con dificultad reconoce los cambios que puede lograr la fuerza aplicada sobre determinados objetos. Básico:Reconoce los cambios que puede lograr la fuerza aplicada sobre determinados objetos. Alto:Analiza los objetos y los cambios que pueden tener al aplicarles fuerza. Superior:Determina los cambios producidos en los objetos al aplicarles fuerza y los clasifica desde el menos hasta el más resistente.', 0, 2, 11, 12),
(28, 'Rompecabezas', 'El estudiante llega a una pequeña ciudad, donde todo tiene forma geométrica,escucha las instrucciones dadas al auxiliar del orden para organizar el espacio. Las instrucciones son las siguientes: \"Toma las figuras y arma varios rompecabezas a partir de fichas que son figuras geométricas de diferentes lados.Algunas figuras podrían ser: cono, cilindro, cuadrado, rectángulo, cubo, triángulo, rombo\" El auxiliar se preocupa un poco pues no conoce muy bien las figuras. La misión del estudiante será ayudarle en el ejercicio, en donde podrán armar un gato, un perro y una mariposa. Se le asignan los elementos que deben armar y ellos tomarán las figuras que requiera.', 'Crear elementos haciendo uso de figuras geométricas.', 'En los zapatos de los demás (Darme cuenta de cuando alguien necesita ayuda.)', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'rompecabezas', 'Empatía', NULL, 'Bajo:Se le dificulta identificar figuras geométricas. Básico:Reconoce figuras geométricas y establece relación entre ellas. Alto:Ubica figuras geométricas, que tienen relación entre sí. Superior:Forma elementos, a partir de figuras geométricas.', 0, 2, 12, 11),
(29, 'Mi casa un lugar seguro', 'Para esta actividad, se visualiza un barrio, en el cual se encuentra un restaurante, un hotel, una escuela, una casa y una tienda. El estudiante tiene que elegir el espacio que considera como su hogar. Al realizar esa elección y dar clic en la casa, debe ingresar a ella y visualizar cada una de sus partes: sala, cocina, comedor, habitación, lavadero, baño, biblioteca. Posteriormente en un cuadro, debe seleccionar su grupo familiar a partir de las imágenes que aparecen en la parte de afuera de la casa, debe llevarlos hasta ella y ubicarlos en el espacio donde considere permanecen la mayor parte del tiempo, estas imágenes están marcadas (Grupo familiar: papá, mamá, abuelo, abuela, tía, tío, hermana mayor, hermana menor, hermano mayor, hermano menor, bebé, prima, primo). Posteriormente en otra ventana selecciona las imágenes que correspondan a las diferentes acciones ejecutadas desde el rol de cada uno dentro de su hogar, que le proporcionan seguridad y cuidado. Ejemplo: -Mamá cocina para que se alimente bien (mamá-Cocinar) -Papá trabaja para llevar provisión a casa (papá-trabajo).', 'Reconoce el valor de la vivienda como el espacio donde tiene lugar su hogar y donde recibe seguridad y cuidado de su familia.', 'Reconocer el valor de la vivienda como el espacio donde tiene lugar su hogar y donde recibe seguridad y cuidado de su familia.', 'Sin Indicadores', 'mi_casa_un_lugar_seguro', 'Comprende cambios en las formas de habitar de los grupos humanos, desde el reconocimiento de los tipos de vivienda que se encuentran en el contexto de su barrio, vereda o lugar donde vive.', NULL, 'Bajo:Con dificultad identifica el lugar donde tiene espacio su hogar. Básico:Reconoce el lugar donde tiene espacio su hogar. Alto:Conoce el lugar donde tiene espacio su hogar y selecciona los miembros de su familia. Superior: Conoce el lugar donde tiene espacio su hogar e identifica los miembros de su familia y los relaciona con las acciones que hacen para contribuir al cuidado de la familia.', 0, 1, 7, 11),
(30, 'El laberinto de los medios', 'El estudiante se desplaza por un laberinto, cuando inicia el recorrido encuentra una mochila que contiene imágenes sobre los medios de comunicación como: radio, prensa y televisión. Para avanzar tiene que dar respuesta a diferentes preguntas, ubicando la imagen correspondiente debajo de cada pregunta. Sí responde de manera correcta, puede avanzar.', 'Comparar contenidos de medios de comunicación masiva, como la prensa, radio y televisión.', 'Identifica las diferencias y semejanzas entre los contenidos provenientes de los diversos medios de comunicación masiva con los que interactúa: radio, televisión, prensa.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'el_laberinto_de_los_medios', 'Identifica las características de los medios de comunicación masiva a los que tiene acceso.', NULL, 'Bajo:Con dificultad identifica los medios de comunicación masiva. Básico:Reconoce los medios de comunicación masiva como la radio, prensa y televisión. Alto:Relaciona el contenido de medios masivos de comunicación, como la radio, prensa y televisión. Superior: Establece semejanzas y diferencias entre el contenido de medios masivos como la prensa, radio y televisión.', 0, 4, 6, 11),
(31, 'Animales en su entorno', 'El estudiante llega al campo y se encuentra con un personaje, por lo cual éste le cuenta que ha organizado algunos animales y vegetales en los diferentes niveles tróficos, a su vez, le manifiesta que ha registrado en el espacio el nivel al que cree que corresponden de la siguiente manera: -De abajo hacia arriba: herbívoros, carnívoros, omnívoros y productores. El estudiante, le sugiere una nueva forma para organizarlos: Productores, herbívoros, omnívoros o carnívoros.', 'Categorizar animales y vegetales en los diferentes niveles tróficos, asignando características propias.', 'Comunicación y conflictos (Mostrar interés sin usar palabras cuando escucha a los demás.)', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'animales_en_su_entorno', 'Manejo de conflictos', NULL, 'Bajo: Se le dificulta reconocer características propias de animales y vegetales. Básico: Reconoce animales y vegetales a partir de sus características propias. Alto:Situa el nombre de cada nivel trófico en el espacio gráfico que corresponde. Superior:Asigna características propias, a cada nivel trófico.', 0, 2, 13, 13),
(32, 'Mate mix', 'El estudiante entra a un campo, en el cual se encuentran unas canastas con variedad de frutas. Las canastas contienen lo siguiente: -542 bananos -4.500 peras -13.025 manzanas -380 piñas -18.538 fresas Teniendo en cuenta el contenido de cada canastas, responde las siguientes situaciones: 1. Suma la cantidad de bananos con la cantidad de peras. 2. Suma la cantidad de peras con la cantidad de manzanas y la cantidad de fresas. 3. Resta al resultado de bananos y peras, la cantidad de piñas. 4. Multiplica la cantidad de canastas por la cantidad de bananos. 5. Divide el resultado de la cantidad de peras y manzanas, entre la cantidad de canastas.', 'Solucionar problemas, empleando operaciones matemáticas básicas.', 'Resuelve problemas aditivos (suma o resta) y multiplicativos (multiplicación o división)de composición de medida y de conteo.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'mate_mix', 'Interpreta, formula y resuelve problemas aditivos de composición, transformación y comparación en diferentes contextos; y multiplicativos, directos e inversos, en diferentes contextos.', NULL, 'Bajo: Con dificultad reconoce la adición y la multiplicación como métodos para resolver situaciones. Básico:Reconoce la adición y la multipicación, como métodos para solucionar situaciones. Alto:Analiza situaciones que requieren solución a partir de la adición y la multiplicación. Superior: Utiliza la adición y la multiplicación, como métodos para solucionar situaciones.', 0, 4, 9, 13),
(33, 'Circuitos', 'El estudiante tiene como misión ayudar al vecino en un cortocircuito que ha tenido y esto generó que se quedará sin energía, debe pensar cómo solucionar el problema y ayudarle. Se le brindan diferentes herramientas para que forme un circuito, con el fin de realizar pruebas y encender un bombillo. Los elementos son: batería, cobre, plástico, hierro, bombillo, radio, switch. Debe tomar los elementos y ubicarlos en el orden adecuado para el tránsito de la corriente, de la siguiente manera: Batería, cobre, switch, hierro y bombilla. (La bombilla también puede ser reemplazada por un radio).', 'Generar soluciones ante situaciones que afectan a los demás, haciendo uso de elementos sencillos.', 'Comunicación y conflictos (Evaluar el problema con calma y pensar en soluciones.)', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'circuitos', 'Manejo de conflictos', NULL, 'Bajo:Con dificultad identifica elementos que pueden producir corriente. Básico:Identifica elementos sencillos que pueden generar corriente. Alto:Analiza situaciones que afectan a otros y genera soluciones con elementos que producen corriente. Superior:Propone soluciones ante situaciones que afectan a otros y organiza elementos de forma adecuada para generar corriente.', 0, 2, 13, 14),
(34, 'La fiesta', 'Felipe y sus amigos han planeado una fiesta, para realizarla todos deben aportar un elemento que pueda ser repartido en partes iguales entre todos los invitados que son trece. En cada situación, el estudiante tiene 3 opciones de respuesta, por lo cual debe marcar la que considere correcta, entre las situaciones presentadas se encuentran: -Martina le corresponde llevar una pizza y debe fraccionarla en 13 porciones iguales. ¿Qué fracción representa lo que debe hacer Martina con la pizza? . Andrés debe llevar caramelos, según sus cuentas le corresponden 3 a cada invitado ¿Cuántos caramelos debe llevar? -Luisa le corresponde la gaseosa, para esto, compró una promoción donde cada botella contiene 1.300 ml, debe decidir cuántas botellas comprar y garantizar que a cada invitado le corresponda la misma cantidad de 200ml.', 'Interpreta y utiliza números naturales y racionales (fraccionarios) asociados con un contexto para solucionar problemas.', 'Interpretar y utilizar números naturales y racionales para solucionar problemas asociados a un contexto.', 'Sin indicadores', 'la_fiesta', 'Interpreta y utiliza los números naturales y racionales en su representación fraccionaria para formular y resolver problemas aditivos, multiplicativos y que involucren operaciones de potenciación.', NULL, 'Bajo:Con dificultad reconoce los números naturales y racionales. Básico:Con apoyo resuelve problemas sencillos que involucren números naturales y racionales. Alto:Utiliza números naturales y racionales para resolver problemas asociados a un contexto. Superior: Interpreta problemas asociados a un contexto y utiliza números naturales y racionales para dar respuesta a los mismos.', 0, 1, 9, 15),
(35, 'CampoFresco Supermarket', 'El estudiante llega a la zona comercial a vender cada uno de sus productos. El pago de dichos productos se le cargan en una billetera virtual, solo puede ser utilizada en la zona comercial. Vende: -Lana= $500 cada ovillo. -Huevos= $100 cada uno. -Leche= $300 cada litro. -Naranja= $50 cada una. -Maíz= $100 cada mazorca. -Papaya= $150 cada una. Vende cada uno de los productos de la granja y de la siembra.', 'Definir el dinero como recurso para adquirir y vender bienes y servicios.', ' Reconoce que el dinero es un recurso y un medio de intercambio para obtener bienes y servicios.', '-Cantidad de cada uno de los objetos vendidos. -Cantidad de objetos vendidos en total. -Cifra de dinero recolectado con la venta. -Tiempo utilizado en la actividad.', 'campofresco_supermarket', '¿Por qué son importantes los recursos con los que cuento?', 'Contextualización financiera', 'Bajo: Con dificultad reconoce el dinero como un recurso económico. Básico: Reconoce el dinero como un recurso económico. Alto:Analiza el precio asignado a diferentes productos. Superior:Determina que el dinero es el recurso utilizado para obtener y vender productos y servicios.', 0, 3, 14, 13),
(36, 'Granja Solidaria', 'El estudiante ingresa a una granja en la que dispone de: 1. Cinco gallinas ponen un huevo por minuto, lo ideal es que permanezca recogiendo huevos durante 5 minutos. 2. Tres vacas lecheras producen 2 litros de leche por día. 3. Una oveja a la que le corta la lana cada tres minutos. Seguido de ello, se le presenta una situación, donde debe ayudar a algunas personas que presentan escasez de algunos recursos: -Tres personas necesitan recursos para el sustento de sus familias, debe revisar si puede proporcionarlos, pues hay escasez en el supermercado local. Necesitan: 3 huevos, tiene 6 huevos. Necesitan 2 litros de leche, tiene 3 litros. Necesitan 5 ovillos de lana para tejer, tiene 5.', 'Establecer diferencias entre la abundancia y la escasez, compartiendo de lo que tiene.', 'Comprende la relación entre la abundancia y la escasez de recursos.', '-Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'granja_solidaria', '¿Qué son los recursos y cómo podemos cuidarlos?', 'Contextualización económica', 'Bajo:Presenta dificultades para reconocer los términos: abundancia y escasez. Básico:Define los términos: abundancia y escasez. Alto:Interpreta que la cantidad de productos que posee, le indican abundacia. Superior:Aplica el valor de compartir, al dar de su abundancia a quienes tienen escasez.', 0, 3, 15, 12);
INSERT INTO `activities` (`id`, `name`, `description`, `objetive`, `evidence`, `indicators`, `slug`, `dba`, `dba2`, `performance_levels`, `reinforce`, `zone`, `subject_id`, `grade_id`) VALUES
(37, 'Aventura Verde', 'La misión del estudiante para esta actividad, es cultivar algunos productos que pueda ofrecer, por lo tanto llega al campo de siembra y aquí se le proporcionan tres clases de semillas, para que las siembre y cuide de ellas. Pasado el tiempo estipulado para cosechar cada semilla, puede recoger el fruto de su trabajo. Entre las semillas se tiene: -Naranja: Tiempo de cosecha un minuto. -Maíz: Tiempo de cosecha dos minutos. -Papaya: Tiempo de cosecha tres minutos. El estudiante debe esperar el tiempo que demora el crecimiento, de lo contrario se mueren sus productos y debe volver a cultivarlo en caso que suceda. Posteriormente, va a uno de los stands de la zona comercial (específicamente al de venta de frutos) y le cargan su billetera virtual por cada producto, así: -Naranja $50 -Maíz $100 -Papaya $150 El dinero ganado en esta actividad va a la billetera virtual que se muestra en todas las actividades de esta zona, por lo cual puede realizar varios intentos.', 'Determinar que la existencia de recursos, garantiza el bienestar de las personas.', 'Comprende la relación existente entre los diversos tipos de recursos y el bienestar de las personas.', '-Cantidad de naranjas sembradas. -Cantidad de naranjas cosechadas. -Cantidad de maiz sembrado. -Cantidad de maiz cosechado. -Cantidad de papaya sembrada. -Cantidad de papaya cosechada. -Cantidad de naranjas vendidas. -Cantidad de maiz vendido. -Cantidad de papayas vendidas. -Cantidad total de objetos vendidos. -Cifra de dinero recolectado. -Tiempo utilizado en la actividad.', 'aventura_verde', '¿Cuál es la relación entre los recursos y el bienestar de las personas?', 'Desarrollo económico', 'Bajo:Demuestra poco conocimiento frente a la definición de recursos. Básico:Reconoce que es un recurso y su importancia. Alto:Genera recursos a partir de las herramientas entregadas, siembra y cosecha. Superior:Explica la importancia de los recursos para el bienestar de las personas.', 0, 3, 15, 11),
(38, 'Moda Mágica', 'El estudiante llega a una de las tiendas de la zona comercial donde la misión es adquirir prendas que pueda pagar con la billetera virtual. El estudiante escoge las prendas, las compra y el avatar se actualiza. Al finalizar la compra, se le mostrará al estudiante cuánto tenía en la billetera virtual y cuáles son los valores de las prendas que compró, la idea es que el estudiante pueda sumar los gastos y los reste con lo que tenía inicialmente, para que pueda relacionar sus ingresos con los gastos.', 'Establecer correspondencia entre sus ingresos y gastos.', '. Relaciona en un presupuesto sus ingresos y sus gastos.', 'Cantidad de prendas compradas. Cantidad de dinero gastado. -Cantidad de aciertos. -Cantidad de errores. -Tiempo utilizado en la actividad.', 'moda_mágica', '¿Cómo mis hábitos contribuyen al cuidado de los recursos y a mis finanzas personales.', 'Contextualización financiera', 'Bajo:Presenta falencias para diferenciar ingresos y gastos. Básico:Diferencia ingresos y gastos en un presupuesto. Alto:Evalua sus necesidades para adquirir productos. Superior:Realiza un presupuesto que le permita gastar a partir de sus ingresos.', 0, 3, 14, 15),
(39, 'Reparación estelar', 'El estudiante llega a la zona comercial de objetos variados con la misión de adquirir elementos para su nave y personalizarla. La nave se ha averiado y necesita repararla, debe revisar su billetera virtual, se le indica que sus gastos no deben ser superiores a $30.000. Los elementos que se muestran son: -Tapete por valor de $300 -Cinta para pegar por valor de $250 -Kit de herramientas $800 -Binoculares por valor de $450 -Espejo por valor de $500 -Bombilla muy luminosa por valor de $100 -Pintura $500 -Rompecabezas por valor de $750 -Video juego por valor de $1.200 -Fichas por valor de $900 Al finalizar la compra, debe seleccionar qué objetos fueron una necesidad para reparar su nave y que objetos fueron un gasto.', 'Especificar los gastos realizados para suplir necesidades y aquellos innecesarios.', 'Identifica los diferentes tipos de ingresos y gastos y reconoce cuáles son sus necesidades y cuáles son sus deseos.', '-Cantidad de cada uno de los objetos comprados. -Cantidad total de los objetos. -Cifra total gastada en la compra. comprados. -Cantidad de objetos comprados necesarios. -Cantidad de objetos comprados por gusto. -Tiempo utilizado en la actividad.', 'reparación_estelar', '¿De qué manera puedo organizar mis ingresos y mis gastos?', 'Presupuesto', 'Bajo:Con dificultad establece diferencia entre necesidades y deseos. Básico:Reconoce aquellos recursos que hacen parte de sus necesidades. Alto:Adquiere productos que permiten suplir sus necesidades y otros sus deseos. Superior:Detalla los gastos realizados para suplir necesidades de aquellos adquiridos por deseo.', 0, 3, 14, 14),
(40, 'Peludos Galácticos', 'El estudiante llega a la zona comercial y allí al stand de mascotas, aparece un menú donde están las opciones de varias mascotas, la misión es adquirir una mascota, que pueda acompañarlo en la nave y cuidar de ella mientras él sale. Mascotas disponibles: -Perro $8.000 -Gato $9.000 -Conejo $5.000 -Hamsters $4.000 -Tortuga $10.000 En el momento en que adquiera la mascota, el valor será descontado de su billetera. Lleva la mascota a la nave y lo espera allí, cada vez que el estudiante finalice una misión.', 'Determinar como la adquisición de recursos, son motivo de bienestar para las personas.', 'Comprende la relación existente entre los diversos tipos de recursos y el bienestar de las personas.', '-Cantidad de cada uno de los objetos comprados. -Cantidad total de los objetos comprados. -Tiempo de la actividad. -Cifra de dinero gastada en la compra.', 'peludos_galácticos', '¿Cuál es la relación entre los recursos y el bienestar de las personas?', 'Desarrollo económico', 'Bajo:Se le dificulta reconocer sus necesidades. Básico:Reconoce los recursos necesarios para su bienestar y el de las personas. Alto:Adquiere productos que permiten suplir sus necesidades. Superior:Explica como el adquirir determinados recursos, es motivo de bienestar para las personas.', 0, 3, 15, 10);

CREATE TABLE `activities_century_skills` (
  `activities_id` int NOT NULL,
  `century_skills_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `activities_century_skills` (`activities_id`, `century_skills_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(6, 4),
(7, 1),
(8, 1),
(8, 3),
(8, 4),
(9, 1),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(30, 1),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 3),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1);

CREATE TABLE `activities_thinking_skills` (
  `activities_id` int NOT NULL,
  `thinking_skills_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `activities_thinking_skills` (`activities_id`, `thinking_skills_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 2),
(5, 4),
(6, 2),
(7, 1),
(8, 2),
(9, 2),
(10, 2),
(11, 1),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 4),
(17, 2),
(18, 4),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 4),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 4),
(30, 4),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 4),
(37, 2),
(38, 4),
(39, 4),
(40, 4);

CREATE TABLE `avatars` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `skin_tone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customizes` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `branches` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `town_id` int DEFAULT NULL,
  `institution_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `branches` (`id`, `name`, `dane_code`, `town_id`, `institution_id`) VALUES
(100, 'SANTA ISABEL', '17656300002402', 10, 100),
(101, 'FRANCISCO ANTONIO ZEA CENTRO', '17656300009107', 10, 101),
(102, 'ALFREDO POSADA CORREA', '17656300082201', 10, 102),
(103, 'ATENEO COMERCIAL FEMENINO', '17656300002401', 10, 100),
(104, 'ANTONIO RICAURTE', '17656300009101', 10, 101),
(105, 'SIMBAD ARTURO BUENO', '27656300004508', 10, 103),
(106, 'MIGUEL DE CERVANTES SAAVEDRA', '17631800026401', 11, 104),
(107, 'LEONIDAS MOSQUERA', '17656300082203', 10, 102),
(108, 'FRANCISCO ANTONIO ZEA', '17656300009102', 10, 101),
(109, 'ALFONSO ZAWADZKY', '17689000030501', 12, 105),
(110, 'MANUELA BELTRAN', '27630600017401', 13, 106),
(111, 'DIEGO RENGIFO SALAZAR', '27689000023708', 12, 107),
(112, 'CONCENTRACION ESCOLAR URBANA', '17660600016301', 14, 108),
(113, 'RODRIGO LLOREDA CAICEDO', '27613000062801', 15, 109),
(114, 'GABRIELA MISTRAL', '27689000009101', 12, 110),
(115, 'SIMON BOLÍVAR', '27604100074607', 16, 111),
(116, 'SANTA ANA DE LOS CABALLEROS', '17604100001601', 16, 112),
(117, 'CRISTOBAL COLON', '27604100074609', 16, 111),
(118, 'SANTA INES', '27604100036301', 16, 113),
(119, 'CONCENTRACION RURAL QUEBRADAGRANDE', '27640000060901', 17, 114),
(120, 'NUESTRA SEÑORA DE LAS MERCEDES', '17689500010901', 18, 115),
(121, 'MAGDALENA ORTEGA', '17640000004301', 17, 116),
(122, 'NORMAL SUPERIOR JORGE ISAACS', '17662200008401', 19, 117),
(123, 'SAN JOSE', '27610000070403', 20, 118),
(124, 'JOSÉ MARÍA CÓRDOBA', '17624300002601', 21, 119),
(125, 'DIONISIO CORTES', '27624300049702', 21, 120),
(126, 'MANUEL DOLORES MONDRAGON', '17610000025401', 20, 121),
(127, 'MANUEL DOLORES MONDRAGON', '27610000051801', 20, 122),
(128, 'CONCENTRACION AGRICOLA', '27610000025901', 20, 123),
(129, 'ROSA ZARATE DE PEÑA', '27686300054302', 22, 124),
(130, 'BELISARIO PEÑA PIÑEIRO', '17662200006801', 19, 125),
(131, 'GILBERTO ALZATE AVENDAÑO', '17605400002301', 23, 126),
(132, 'CAMILO TORRES', '27627500015411', 24, 127),
(133, 'HERNANDO LLORENTE ARROYO', '27661600058101', 25, 128),
(134, 'ARTURO GOMEZ JARAMILLO', '47602000024901', 26, 129),
(135, 'BOLIVARIANO', '17612200038001', 27, 130),
(136, 'JOSE ANTONIO GALAN', '27623300102906', 28, 131),
(137, 'LUIS GABRIEL UMAÑA MORALES', '27689500078201', 18, 132),
(138, 'SIMON BOLIVAR', '27611300001102', 29, 133),
(139, 'GIMNASIO DEL DAGUA QUEREMAL', '27623300065101', 28, 134),
(140, 'LIC FEM NUESTRA SEÑORA DE CHIQUINQUIRA', '17662200007601', 19, 135),
(141, 'BELISARIO PEÑA PIÑEIRO SATELITE', '27662200057717', 19, 136),
(142, 'LEOCADIO SALAZAR', '17684500001901', 30, 137),
(143, 'GILBERTO ALZATE AVENDAÑO CENTRO', '17624600066303', 31, 138),
(144, 'JOSE MARIA FALLA', '17625000026101', 32, 139),
(145, 'ROSA SARATE DE PEÑA', '27625000015012', 32, 140),
(146, 'LA CARMELITA', '27610000070410', 20, 118),
(147, 'JUAN HURTADO', '47605400001905', 23, 141),
(148, 'MANUEL DOLORES MONDRAGON', '27610000070401', 20, 118),
(149, 'PABLO EMILIO CAMACHO', '17689500016802', 18, 142),
(150, 'JULIAN TRUJILLO - ANDINAPOLIS', '27682800011502', 33, 143),
(151, 'MARIA INMACULADA', '27684500010201', 30, 144),
(152, 'SAN VICENTE', '27623300048104', 28, 145),
(153, 'GIMNASIO DEL DAGUA', '17623300065601', 28, 146),
(154, 'SANTIAGO RENGIFO SALCEDO', '17613000046101', 15, 147),
(155, 'GIMNASIO DEL DAGUA', '27623300051102', 28, 148),
(156, 'GIMNASIO DEL DAGUA, TOCOTA', '27623300124001', 28, 149),
(157, 'MARINO RENJIFO SALCEDO', '27613000082201', 15, 150),
(158, 'ANTONIO NARIÑO', '17613000039904', 15, 151),
(159, 'JOSE ANTONIO GALAN', '27613000062805', 15, 109),
(160, 'PANEBIANCO AMERICANO - SEDE PRINCIPAL', '27613000018101', 15, 152),
(161, 'JORGE ISAACS', '17624800002401', 34, 153),
(162, 'SAN PIO X', '17637700025101', 35, 154),
(163, 'ESC NORMAL SUPERIOR MARIA INMACULADA', '17612200037101', 27, 155),
(164, 'JUANA DE ARCO', '27630600033607', 13, 156),
(165, 'CONCENTRACIÓN RURAL AGRIC HERACLIO URIBE URIBE', '47673600025801', 36, 157),
(166, 'BOLIVARIANO LA CAMELIA', '27612200022802', 27, 158),
(167, 'PEDRO VICENTE ABADIA', '17631800070101', 11, 159),
(168, 'CENT EDUC LA BETULIA', '27673600017811', 36, 160),
(169, 'INSTITUTO LAS AMERICAS', '17627500001001', 24, 161),
(170, 'SAN JUAN BOSCO', '27689000023701', 12, 107),
(171, 'FRAY JOSE JOAQUIN ESCOBAR', '17682300006601', 37, 162),
(172, 'SAN JUAN BOSCO', '17673600003303', 36, 163),
(173, 'LA INMACULADA', '17682300038403', 37, 164),
(174, 'SAGRADO CORAZON DE JESUS', '17682800006401', 33, 165),
(175, 'ANTONIO RICAURTE', '27686900013806', 38, 166),
(176, 'SAN JOSE', '17649700009301', 39, 167),
(177, 'LAUREANO GOMEZ', '27637700031104', 35, 168),
(178, 'FRANCISCO DE PAULA SANTANDER', '27637700007800', 35, 169),
(179, 'LA INMACULADA', '17686300033601', 22, 170),
(180, 'CARLOS HOLGUIN SARDI', '27686300054301', 22, 124),
(181, 'LUIS ENRIQUE ZAMORA', '17640300003604', 40, 171),
(182, 'MARIA ANALIA ORTIZ HORMAZA', '27649700060801', 39, 172),
(183, 'GUILLERMO VALENCIA', '27623300048101', 28, 145),
(184, 'JUAN SALVADOR GAVIOTA', '27625000015001', 32, 140),
(185, 'AGRICOLA CAMPOALEGRE', '27603600003700', 41, 173),
(186, 'JOSE ANTONIO AGUILERA', '17667000024001', 42, 174),
(187, 'GIMNASIO DEL CALIMA', '17612600005801', 43, 175),
(188, 'SIMON BOLIVAR', '17612600006601', 43, 176),
(189, 'SAGRADO CORAZON', '17624800001601', 34, 177),
(190, 'JORGE ISAACS EL PLACER', '27624800035501', 34, 178),
(191, 'REGIONAL SIMON BOLIVAR', '27627500027801', 24, 179),
(192, 'PRIMITIVO CRESPO', '17661600001301', 25, 180),
(193, 'NEMESIO RODRIGUEZ', '27661600059001', 25, 181),
(194, 'ABSALON TORRES CAMACHO', '17627500139301', 24, 182),
(195, 'LICEO COMERCIAL FEMENINO', '17627500091501', 24, 183),
(196, 'INMACULADA CONCEPCIÓN', '27630600034401', 13, 184),
(197, 'KWE SX NASA KSXA WNXI', '27627500146101', 24, 185),
(198, 'CAMILO TORRES', '27623300056101', 28, 186),
(199, 'NUESTRA SEÑORA DE LA CONSOLACION', '17682300038401', 37, 164),
(200, 'SEVILLA', '17673600002501', 36, 187),
(201, 'BELLO HORIZONTE', '17656300082204', 10, 102),
(202, 'PEDRO VICENTE ABADIA', '27631800011102', 11, 188),
(203, 'JORGE ELIECER GAITAN', '27631800022604', 11, 189),
(204, 'JOSE MARIA CORDOBA', '27623300065102', 28, 134),
(205, 'MARIA AUXILIADORA', '17602000003202', 26, 190),
(206, 'ANTONIO NARIÑO', '27686900013805', 38, 166),
(207, 'ELEAZAR LIBREROS SALAMANCA', '17603600002401', 41, 191),
(208, 'DIEGO RENGIFO SALAZAR', '17611300037701', 29, 192),
(209, 'ANTONIO NARIÑO', '17611300065201', 29, 193),
(210, 'JORGE ROBLEDO', '17686900002801', 38, 194),
(211, 'JOSE MARIA CABAL', '27623300051101', 28, 148),
(212, 'BENJAMIN HERRERA', '27673600081001', 36, 195),
(213, 'ESC SANTA BARBARA', '27673600028301', 36, 196),
(214, 'JORGE ISAACS SEDE PRINCIPAL', '27624800036301', 34, 197),
(215, 'GABRIELA MISTRAL', '27667000021004', 42, 198),
(216, 'JOSE MARIA CARBONEL', '27673600032103', 36, 199),
(217, 'MARIA AGUSTINA MADRID', '17610000025411', 20, 121),
(218, 'MARCO FIDEL SUAREZ', '27656300022301', 10, 200),
(219, 'SAN ANTONIO DE PIEDRAS', '27689000023711', 12, 107),
(220, 'ALFREDO GARRIDO TOVAR', '27661600065401', 25, 201),
(221, 'I.E. TEODORO MUNERA HINCAPIE - SEDE PORINCIPAL', '27660600054101', 14, 202),
(222, 'ANTONIO NARIÑO', '27611300043602', 29, 203),
(223, 'SAN MIGUEL', '27623300124007', 28, 149),
(224, 'CONC  URB  JOSE EUSEBIO CARO', '17612200038002', 27, 130),
(225, 'GINEBRA LA SALLE', '17630600001301', 13, 204),
(226, 'CAMILO TORRES', '27682800044103', 33, 205),
(227, 'ATANASIO GIRARDOT', '27613000018105', 15, 152),
(228, 'SANTA MATILDE', '27603600003713', 41, 173),
(229, 'CONCENTRACIÓN DE DESARROLLO RURAL SAN JOSE', '27640300020101', 40, 206),
(230, 'ISABEL LA CATOLICA', '27610000054203', 20, 207),
(231, 'LA PEDRERA', '27686900013803', 38, 166),
(232, 'MANUELA BELTRAN', '27631800027702', 11, 208),
(233, 'ENRIQUE OLAYA HERRERA', '27623300102903', 28, 131),
(234, 'CRISTOBAL COLON', '27682800012301', 33, 209),
(235, 'JUAN XXIII', '27604100074602', 16, 111),
(236, 'ARGEMIRO ESCOBAR CARDONA', '17640000027201', 17, 210),
(237, 'JOSE EUSEBIO CARO', '17613000046102', 15, 147),
(238, 'GUILLERMO LEON VALENCIA', '27630600033605', 13, 156),
(239, 'SIMON BOLIVAR', '27631800027701', 11, 208),
(240, 'EUSTAQUIO PALACIOS', '27625000015013', 32, 140),
(241, 'SATELITE PEDRO VICENTE ABADIA', '27631800009903', 11, 211),
(242, 'BELISARIO PEÑA PIÑEIRO- CAJAMARCA', '17662200006808', 19, 125),
(243, 'SANTA TERESITA DEL NIÑO JESUS', '27623300026001', 28, 212),
(244, 'SANTA TERESITA', '27673600017801', 36, 160),
(245, 'ELÍAS E. QUIJANO', '27682800044111', 33, 205),
(246, 'ANTONIO JOSE DE SUCRE', '27603600003704', 41, 173),
(247, 'PRIMITIVO CRESPO', '17673600002502', 36, 187),
(248, 'SAGRADA FAMILIA', '17613000039902', 15, 151),
(249, 'GERMAN NIETO', '17613000039901', 15, 151),
(250, 'GENERAL SANTANDER', '27631800009901', 11, 211),
(251, 'JOSE CELESTINO MUTIS', '17624800002403', 34, 153),
(252, 'MANUEL DOLORES MONDRAGON', '27610000054201', 20, 207),
(253, 'SAN PABLO', '27625000015003', 32, 140),
(254, 'CARMEN ARZAYUS', '17631800070105', 11, 159),
(255, 'EL PLACER', '27604100074601', 16, 111),
(256, 'SANTIAGO GUTIERREZ ANGEL', '47605400001901', 23, 141),
(257, 'JOSE ACEVEDO Y GOMEZ', '27660600029001', 14, 213),
(258, 'SANTA RITA DE CASSIA', '27613000018103', 15, 152),
(259, 'SAN JOSÉ', '17602000003201', 26, 190),
(260, 'JUAN DEL CORRAL', '27623300056106', 28, 186),
(261, 'JORGE ROBLEDO', '17682800002105', 33, 214),
(262, 'JULIO CAICEDO TELLEZ', '27667000020101', 42, 215),
(263, 'LA PRESENTACIÓN', '17624600033701', 31, 216),
(264, 'GILBERTO ALZATE AVENDAÑO', '17624600066301', 31, 138),
(265, 'ANTONIO NARIÑO LA URIBE', '17611300037704', 29, 192),
(266, 'GENERAL SANTANDER', '17673600003301', 36, 163),
(267, 'CONCENTRACION DE DESARROLLO RURAL LA SELVA', '27630600033601', 13, 156),
(268, 'SAN JOSE', '17640000001901', 17, 217),
(269, 'JUAN DE DIOS GIRON', '17640000002701', 17, 218),
(270, 'SANTA TERESITA', '17640300007901', 40, 219),
(271, 'CENT DOC NO 22  GILBERTO ALZATE AVENDAÑO', '27612200020101', 27, 220),
(272, 'CACIQUE UMADA', '27627500146166', 24, 185),
(273, 'SAGRADO CORAZON DE JESUS', '27612200022801', 27, 158),
(274, 'MARIANO OSPINA PEREZ', '17611300037706', 29, 192),
(275, 'JOSE MARIA CORDOBA', '27613000018102', 15, 152),
(276, 'I.E. CAMILO TORRES', '27661600025501', 25, 221),
(277, 'RODRIGO LLOREDA', '27682800038701', 20, 222),
(278, 'I.E. SAN PEDRO CLAVER - SEDE PRINCIPAL', '27623300053701', 28, 223),
(279, 'RICARDO NIETO', '17673600003305', 36, 163),
(280, 'INSTITUTO PROMOCION SOCIAL', '17637700001401', 35, 224),
(281, 'GENERAL SANTANDER SATELITE DE CUMBARCO', '27673600081006', 36, 195),
(282, 'MANUEL ANTONIO BONILLA', '17640300003601', 40, 171),
(283, 'CARLOS VILLAFAÑE', '17662200008403', 19, 117),
(284, 'REPÚBLICA DE VENEZUELA', '27689500078202', 18, 132),
(285, 'MERCEDITAS FORERO DE GONZALEZ', '17627500001004', 24, 161),
(286, 'JORGE ELIÉCER GAITÁN', '17689000030506', 12, 105),
(287, 'MANUEL MARÍA MALLARINO', '27682800044101', 33, 205),
(288, 'POLICARPA SALAVARRIETA', '17686900002802', 38, 194),
(289, 'CANAIMA', '27630600017411', 13, 106),
(290, 'MARIA AUXILIADORA', '27637700038801', 35, 225),
(291, 'NORMAN ZULUAGA JARAMILLO', '17627500001005', 24, 161),
(292, 'ANTONIO NARIÑO', '17689500004401', 18, 226),
(293, 'SIMON BOLIVAR', '17689500026501', 18, 227),
(294, 'JORGE ISAACS', '27604100037101', 16, 228),
(295, 'BELISARIO PEÑA PIÑEIRO', '27662200057701', 19, 136),
(296, 'INSTITUTO AGRICOLA CEILAN', '27611300001101', 29, 133),
(297, 'MIGUEL ANTONIO CARO', '27623300058801', 28, 229),
(298, 'GIMNASIO DEL DAGUA BORRERO AYERBE', '27623300071501', 28, 230),
(299, 'JORGE ELIECER GAITÁN', '27667000020107', 42, 215),
(300, 'I.E. MERCEDES ABREGO - SEDE PRINCIPAL', '27656300004501', 10, 103),
(301, 'ANTONIA SANTOS', '17627500001006', 24, 161),
(302, 'JULIO ARBOLEDA', '17627500139302', 24, 182),
(303, 'ANTONIO NARIÑO CHORRERAS', '17611300037709', 29, 192),
(304, 'GENERAL SANTANDER SATELITE LA CUCHILLA', '27673600048806', 36, 231),
(305, 'JORGE ISAACS', '27624800032101', 34, 232),
(306, 'INSTITUTO AGRICOLA', '17682300033301', 37, 233),
(307, 'MARIA AUXILIADORA', '27673600032101', 36, 199),
(308, 'ANTONIO RICAURTE', '17611300037705', 29, 192),
(309, 'FRANCISCO DE PAULA SANTANDER', '27623300051109', 28, 148),
(310, 'GENERAL SANTANDER SATELITE COLORADAS', '27673600017809', 36, 160),
(311, 'GABRIELA MISTRAL', '17627500091502', 24, 183),
(312, 'EL  PARAISO', '17613000046108', 15, 147),
(313, 'ANTONIO JOSE DE SUCRE', '27686900013801', 38, 166),
(314, 'MANUELA BELTRAN', '27627500015405', 24, 127),
(315, 'GREGORIO RAMOS', '27656300004502', 10, 103),
(316, 'SAN ISIDRO', '27682800017401', 33, 234),
(317, 'MANUELA BELTRAN', '27686900017102', 38, 235),
(318, 'SATELITE LAS AMERICAS', '27627500015402', 24, 127),
(319, 'ATANASIO GIRARDOT', '27627500019701', 24, 236),
(320, 'VEINTE DE JULIO', '27686900017101', 38, 235),
(321, 'MIGUEL A CARO', '27667000021001', 42, 198),
(322, 'JULIAN TRUJILLO', '17682800002101', 33, 214),
(323, 'JORGE ELIECER GAITAN', '17660600042201', 14, 237),
(324, 'NUESTRA SEÑORA DE LA CONSOLACION', '17660600042202', 14, 237),
(325, 'ALMIRANTE PADILLA', '27623300065108', 28, 134),
(326, 'SANTA LUCÍA', '27673600081005', 36, 195),
(327, 'GENERAL CARLOS ALBAN', '27623300053706', 28, 223),
(328, 'EFRAIN VARELA VACA', '17689500016801', 18, 142),
(329, 'KIMI PERNIA DOMICO 2', '27627500146165', 24, 185),
(330, 'ATANASIO GIRARDOT', '27686900013802', 38, 166),
(331, 'CONCENTRACION DE DESARROLLO RURAL', '27637700031101', 35, 168),
(332, 'CACIQUE YAGARI', '27627500146139', 24, 185),
(333, 'NUESTRA SEÑORA DE FATIMA', '17682300033302', 37, 233),
(334, 'JORGE ISAACS', '27613000062802', 15, 109),
(335, 'JOSE MARIA CORDOBA', '27624300007102', 21, 238),
(336, 'CRISTO REY', '17667000024005', 42, 174),
(337, 'ANTONIO RICAURTE', '17623300065603', 28, 146),
(338, 'GENERAL SANTANDER ', '27673600028302', 36, 196),
(339, 'FRANCISCO ANTONIO ZEA', '27656300023102', 10, 239),
(340, 'SANJUAN BOSCO', '27610000054202', 20, 207),
(341, 'SIMON BOLIVAR', '27613000062803', 15, 109),
(342, 'FRANCISCO JOSE DE CALDAS', '27660600029006', 14, 213),
(343, 'GILBERTO ALZATE AVENDAÑO - ALBAN', '17624600066302', 31, 138),
(344, 'PABLO VI', '27612600021400', 43, 240),
(345, 'NUESTRA SEÑORA DEL CARMEN', '27630600017404', 13, 106),
(346, 'CRISTO REY', '27682800044113', 33, 205),
(347, 'CONCENTRACION DE DESARROLLO RURAL SANTA MARTA', '27624300049701', 21, 120),
(348, 'SIMON BOLIVAR', '17640000027202', 17, 210),
(349, 'ANTONIA SANTOS', '17689000030504', 12, 105),
(350, 'GENERAL SANTANDER SATÉLITE MEDIO SAN MARCOS', '27673600081003', 36, 195),
(351, 'POLICARPA SALAVAARRIETA', '27623300102902', 28, 131),
(352, 'DOCE DE OCTUBRE', '27673600014301', 36, 241),
(353, 'MERCEDES ABREGO', '27623300065103', 28, 134),
(354, 'JOSE EUSEBIO CARO', '17627500001002', 24, 161),
(355, 'MARINO OROZCO', '17604100001607', 16, 112),
(356, 'POLICARPA SALAVARRIETA', '17625000026107', 32, 139),
(357, 'ANTONIO JOSE DE SUCRE', '27627500015404', 24, 127),
(358, 'BOYACA', '27624300049707', 21, 120),
(359, 'SATELITE GENERAL SANTANDER', '27673600017804', 36, 160),
(360, 'SAN GERARDO', '27673600081008', 36, 195),
(361, 'LEONEL TROCHEZ', '27627500146144', 24, 185),
(362, 'MANUEL JOSE REINA COLLAZOS', '17686900002804', 38, 194),
(363, 'SANTA LUCIA', '17623300065605', 28, 146),
(364, 'SEDE SAN ISIDRO', '27612200022807', 27, 158),
(365, 'BELISARIO CAICEDO', '27640000060902', 17, 114),
(366, 'SANTISIMA TRINIDAD', '17656300009103', 10, 101),
(367, 'FRANCISCO JOSE DE CALDAS', '17613000046104', 15, 147),
(368, 'SATELITE RICAURTE', '17610000025402', 20, 121),
(369, 'POLICARPA SALAVARRIETA', '17656300082207', 10, 102),
(370, 'POLICARPA SALAVARRIETA', '17627500091505', 24, 183),
(371, 'LIC NUESTRA SEÑORA DE CHIQUINQUIRA', '17662200007604', 19, 135),
(372, 'NUESTRA SEÑORA DE FATIMA', '27623300026002', 28, 212),
(373, 'JOHN FITZGERALD KENNEDY', '17673600002503', 36, 187),
(374, 'ANTONIA SANTOS', '17673600002509', 36, 187),
(375, 'SANTA BARBARA', '17624800002406', 34, 153),
(376, 'ANTONIA SANTOS', '17631800026402', 11, 104),
(377, 'FRANCISCO DE PAULA SANTANDER', '27624800035502', 34, 178),
(378, 'MARIA INMACULADA', '27610000051803', 20, 122),
(379, 'JULIAN URIBE URIBE', '17611300037703', 29, 192),
(380, 'FRANCISCO JULIAN OLAYA', '17682800002102', 33, 214),
(381, 'DIEGO FALLON', '27682800038704', 20, 222),
(382, 'SANTA LUCIA', '27682800011507', 33, 143),
(383, 'POLICARPA SALAVARRIETA', '17667000024002', 42, 174),
(384, 'CRISTOBAL COLON', '27623300124002', 28, 149),
(385, 'SIMÓN BOLIVAR', '27640300003102', 40, 242),
(386, 'SANTA TERESITA', '27625000015029', 32, 140),
(387, 'TRES DE MAYO', '17673600003308', 36, 163),
(388, 'JOSE MARIA CORDOBA', '17682300033306', 37, 233),
(389, 'RUCAIDA', '27627500146170', 24, 185),
(390, 'MARCO FIDEL SUAREZ', '27624300007104', 21, 238),
(391, 'SANTA ISABEL', '27624300007103', 21, 238),
(392, 'JOSE IGNACIO RENGIFO', '47602000024911', 26, 129),
(393, 'ANTONIO NARIÑO', '27667000020111', 42, 215),
(394, 'CENT DOC NO  01 ANEXA MARIA INMACULADA', '17612200037102', 27, 155),
(395, 'SANTA CECILIA', '17684500001903', 30, 137),
(396, 'JOSEFITA PEÑA', '27662200057706', 19, 136),
(397, 'TOMAS IGNACIO ESQUIVEL', '17662200007607', 19, 135),
(398, 'SIMON BOLIVAR', '17624600033713', 31, 216),
(399, 'ATANASIO GIRARDOT', '27660600029004', 14, 213),
(400, 'SANTO TOMAS DE AQUINO', '47602000024917', 26, 129),
(401, 'SAULO RICARDO MOLINA', '17631800070102', 11, 159),
(402, 'ATANASIO GIRARDOT', '27625000015008', 32, 140),
(403, 'RAFAEL NUÑEZ', '27623300071502', 28, 230),
(404, 'MARIA INMACULADA', '17673600002504', 36, 187),
(405, 'JORGE ELIECER GAITAN', '27673600048801', 36, 231),
(406, 'SANTA FE', '27661600065408', 25, 201),
(407, 'ONCE DE NOVIEMBRE', '27604100037113', 16, 228),
(408, 'ATANASIO GIRARDOT', '27662200057708', 19, 136),
(409, 'CARTAGENA DE INDIAS', '27627500015407', 24, 127),
(410, 'JUAN DEL CORRAL', '17611300037708', 29, 192),
(411, 'SAN JUAN BOSCO', '17656300082202', 10, 102),
(412, 'JUAN DE DIOS RODRIGUEZ', '17603600002402', 41, 191),
(413, 'LA GRAN COLOMBIA', '27661600059006', 25, 181),
(414, 'BENJAMIN VALENCIA', '17656300002403', 10, 100),
(415, 'MANUEL MEJIA', '27623300058802', 28, 229),
(416, 'CACIQUE TUNAI', '27627500146121', 24, 185),
(417, 'BLASS  DE LESSO', '27656300022302', 10, 200),
(418, 'RAFAEL URIBE URIBE', '27623300053704', 28, 223),
(419, 'NUESTRA SEÑORA DE FATIMA', '17630600001303', 13, 204),
(420, 'MANUELA BELTRAN', '17649700009305', 39, 167),
(421, 'NUESTRA SEÑORA DE LA PAZ', '27640300003101', 40, 242),
(422, 'ANTONIO NARIÑO', '27640300020102', 40, 206),
(423, 'RICARDO NIETO', '17649700009304', 39, 167),
(424, 'ANTONIA SANTOS', '17630600001307', 13, 204),
(425, 'ANTONIA SANTOS', '17623300065604', 28, 146),
(426, 'LOS ANGELES', '27623300058805', 28, 229),
(427, 'PEDRO FERMIN DE VARGAS', '27623300102901', 28, 131),
(428, 'GRAN COLOMBIA', '17660600016302', 14, 108),
(429, 'ALFONSO LOPEZ PUMAREJO', '27656300004506', 10, 103),
(430, 'RAFAEL NUÑEZ', '27637700038807', 35, 225),
(431, 'BAHONDO', '27623300026003', 28, 212),
(432, 'BELISARIO PEÑA', '27682800011504', 33, 143),
(433, 'TULIO GONZALES FORERO', '27627500019705', 24, 236),
(434, 'EMETERIO PIEDRAHITA', '17627500139304', 24, 182),
(435, 'ALFONSO LOPEZ PUMAREJO', '17613000039906', 15, 151),
(436, 'GENERAL SANTANDER', '17613000039905', 15, 151),
(437, 'INMACULADA CONCEPCION', '27630600017402', 13, 106),
(438, 'GUILLERMO LEON VALENCIA', '17682300033308', 37, 233),
(439, 'JOSE ARBEY GARCIA', '27631800022605', 11, 189),
(440, 'SAGRADO CORAZON DE JESUS', '27604100037104', 16, 228),
(441, 'RICARDO NIETO', '27637700038805', 35, 225),
(442, 'JOSE ANTONIO ANZOATEGUI', '27603600003710', 41, 173),
(443, 'ERASMO VIVAS', '17612600006609', 43, 176),
(444, 'NIÑO JESUS DE PRAGA', '27630600017406', 13, 106),
(445, 'SAN JOSE', '17673600002512', 36, 187),
(446, 'MARCO FIDEL SUAREZ', '17604100001602', 16, 112),
(447, 'ANTONIA SANTOS', '27611300043603', 29, 203),
(448, 'PEDRO MARIA MARMOLEJO', '17661600001303', 25, 180),
(449, 'ANOTNIO JOSÉ DE SUCRE', '17686300033604', 22, 170),
(450, 'CAMILO TORRES', '17611300037707', 29, 192),
(451, 'SANTA INES', '47673600025805', 36, 157),
(452, 'CAICEDO Y CUERO', '17682300033307', 37, 233),
(453, 'SANTO TOMAS DE AQUINO', '27610000025902', 20, 123),
(454, 'ANTONIO NARIÑO', '27610000051802', 20, 122),
(455, 'JULIO CAICEDO Y TELLEZ', '17610000025405', 20, 121),
(456, 'SAN JOSE', '17610000025407', 20, 121),
(457, 'NUESTRA SEÑORA DEL CARMEN', '17610000025409', 20, 121),
(458, 'SIMON BOLIVAR', '17603600002407', 41, 191),
(459, 'SANTA RITA # 11', '27662200057707', 19, 136),
(460, 'ANTONIO RICAURTE', '17604100001610', 16, 112),
(461, 'NUESTRA SEÑORA DEL PERPETUO SOCORRO', '17640000004302', 17, 116),
(462, 'LA PAZ', '27662200030501', 19, 243),
(463, 'DACHI BANIA', '27627500146142', 24, 185),
(464, 'MARIA INMACULADA', '17625000026102', 32, 139),
(465, 'DEMETRIO GARCIA VASQUEZ', '27667000020109', 42, 215),
(466, 'PIO XII', '27623300065109', 28, 134),
(467, 'NICOLAS BORRERO OLANO', '17625000026113', 32, 139),
(468, 'DAI EMBERA KURISIA', '27627500146154', 24, 185),
(469, 'GENERAL SANTANDER', '17682800002106', 33, 214),
(470, 'POLICARPA SALAVARRIETA', '27682800038702', 20, 222),
(471, 'SANTA ROSA DE LIMA', '27631800009902', 11, 211),
(472, 'ESC BUENOS AIRES', '27673600028304', 36, 196),
(473, 'SANTA RITA', '27673600014306', 36, 241),
(474, 'CENT DOC NO 03 LAS AMERICAS', '17612200038004', 27, 130),
(475, 'GABRIELA MISTRAL', '17612200038003', 27, 130),
(476, 'CENT DOC N 01 PARROQUIAL', '17612200037107', 27, 155),
(477, 'RAMÓN ELÍAS HERNÁNDEZ', '17686300033616', 22, 170),
(478, 'SAN JOAQUIN', '27627500015412', 24, 127),
(479, 'POLICARPA SALAVARRIETA', '17612600006605', 43, 176),
(480, 'ROMULO RENGIFO', '27625000015018', 32, 140),
(481, 'SANTA TERESITA', '17613000046103', 15, 147),
(482, 'LIGIA AGUDELO', '27604100036306', 16, 113),
(483, 'SAGRADO CORAZON DE JESUS', '27624300049709', 21, 120),
(484, 'SANTA TERESITA', '27684500010202', 30, 144),
(485, 'LEONARDO TASCÓN', '17667000024003', 42, 174),
(486, 'SAN FRANCISCO', '27603600003709', 41, 173),
(487, 'MIGUEL ANTONIO CARO', '27630600017403', 13, 106),
(488, 'DAI DANA', '27627500146164', 24, 185),
(489, 'MARÍA INMACULADA', '17689500016805', 18, 142),
(490, 'JUAN XXIII', '27682800017410', 33, 234),
(491, 'LA PLAYA', '17612600006608', 43, 176),
(492, 'LIBARDO DE JESUS GOMEZ CARDONA', '17686300033621', 22, 170),
(493, 'DIVINO NIÑO', '17662200006806', 19, 125),
(494, 'MIGUEL ANTONIO CARO', '27662200030509', 19, 243),
(495, 'LAUREANO GOMEZ', '17604100001605', 16, 112),
(496, 'JOSE IGNACIO RENGIFO', '17624800002407', 34, 153),
(497, 'JOSE MARIA CORDOBA', '27661600058107', 25, 128),
(498, 'BOLIVARIANA', '17624600033724', 31, 216),
(499, 'LAS AMERICAS', '27661600059002', 25, 181),
(500, 'RAFAEL URIBE URIBE', '27624800036303', 34, 197),
(501, 'FRANCISCO JOSE DE CALDAS', '17689500026504', 18, 227),
(502, 'CRISTOBAL COLON', '17682300033313', 37, 233),
(503, 'CRISTOBAL COLON', '47605400001903', 23, 141),
(504, 'SAN MARTIN DE PORRES', '27625000015015', 32, 140),
(505, 'ERNESTO PIZARRO', '17611300037702', 29, 192),
(506, 'SAN JUAN BOSCO', '27625000015005', 32, 140),
(507, 'SIMON BOLIVAR', '27625000015007', 32, 140),
(508, 'FRANCISCO P. SANTANDER', '27656300022306', 10, 200),
(509, 'MARIA INMACULADA', '17624800001603', 34, 177),
(510, 'BLASS DE LESSO', '27610000051808', 20, 122),
(511, 'RICARDO NIETO', '27604100074605', 16, 111),
(512, 'ANTONIA SANTOS', '27612600021403', 43, 240),
(513, 'PIO XII', '17604100001604', 16, 112),
(514, 'GABRIELA MISTRAL', '17649700009310', 39, 167),
(515, 'EDELMIRA OCAMPO', '27682800017405', 33, 234),
(516, 'MARIA AUXILIADORA', '27661600025511', 25, 221),
(517, 'CARLOS TASCÒN', '17630600001302', 13, 204),
(518, 'ANTONIO JOSE DE SUCRE', '17604100001608', 16, 112),
(519, 'ANTONIO VILLAVICENCIO', '27613000082206', 15, 150),
(520, 'SAN ISIDRO', '27625000015010', 32, 140),
(521, 'ANTONIA SANTOS', '17603600002404', 41, 191),
(522, 'NUESTRA SEÑORA DEL CARMEN', '27610000054210', 20, 207),
(523, 'SIMON BOLIVAR', '27656300022303', 10, 200),
(524, 'SIMON BOLIVAR', '17624300002603', 21, 119),
(525, 'FRANCISCO DE PAULA SANTANDER', '17689500010902', 18, 115),
(526, 'ANTONIO RICAURTE', '17624300002614', 21, 119),
(527, 'MANUELA BELTRAN', '17603600002405', 41, 191),
(528, 'MARIANO OSPINA PEREZ', '27686900013809', 38, 166),
(529, 'BENJAMIN HERRERA', '27613000082207', 15, 150),
(530, 'MARCO FIDEL SUAREZ', '27613000082209', 15, 150),
(531, 'EUSTAQUIO PALACIOS', '17662200006816', 19, 125),
(532, 'CARTAGENA DE INDIAS', '27604100037102', 16, 228),
(533, 'SAN MARTIN DE PORRES', '17640000027205', 17, 210),
(534, 'TAURINO IZQUIERDO', '27689000023709', 12, 107),
(535, 'SALVADOR ROLDAN', '17682300033310', 37, 233),
(536, 'MAIGARA', '27627500146173', 24, 185),
(537, 'LAS MERCEDES', '17689500010904', 18, 115),
(538, 'CACIQUE NACEQUIA', '27627500146123', 24, 185),
(539, 'XAI DE DRUA WADRA', '27627500146155', 24, 185),
(540, 'KIMI PERNIA DOMICO 1', '27627500146167', 24, 185),
(541, 'GENERAL SANTANDER', '17649700009302', 39, 167),
(542, 'SAN ISIDRO', '27627500146114', 24, 185),
(543, 'ANTONIA SANTOS', '17624300002602', 21, 119),
(544, 'C.E. ELÍAS GIRÓN VINASCO', '27640000060916', 17, 114),
(545, 'JOSE MARIA CORDOBA', '17640300007903', 40, 219),
(546, 'NUESTRA SEÑORA DE LAS MERCEDES', '27604100036307', 16, 113),
(547, 'ESTHER ZORRILLA', '27623300056102', 28, 186),
(548, 'JHON F. KENNEDY', '17662200007602', 19, 135),
(549, 'ANTONIO NARIÑO', '27656300023101', 10, 239),
(550, 'MARÍA INMACULADA', '17611300065209', 29, 193),
(551, 'CRISTOBAL COLON', '17673600003304', 36, 163),
(552, 'GENERAL ANZOATEGUI', '27662200030507', 19, 243),
(553, 'CRISTOBAL COLON', '17611300065206', 29, 193),
(554, 'SANTO DOMINGO SAVIO', '27661600025503', 25, 221),
(555, 'PROSPERO PINZON', '27686300054305', 22, 124),
(556, 'SANTA CECILIA', '17689500016803', 18, 142),
(557, 'SIMON BOLIVAR', '27673600032104', 36, 199),
(558, 'JOHN F. KENNEDY', '27612600013301', 43, 244),
(559, 'FRANCISCO ANTONIO ZEA', '27667000020108', 42, 215),
(560, 'JOSE CELESTINO MUITS', '17627500001008', 24, 161),
(561, 'LUIS CARLOS PEÑA', '27613000082205', 15, 150),
(562, 'INDALECIO LIEVANO AGUIRRE.', '17623300065607', 28, 146),
(563, 'POLICARPA SALAVARRIETA', '27631800022602', 11, 189),
(564, 'DIVINO NIÑO JESÚS', '17689500016804', 18, 142),
(565, 'MARIA AUXILIADORA', '27627500015413', 24, 127),
(566, 'NUESTRA SEÑORA  DE FATIMA', '17612600006606', 43, 176),
(567, 'CENT  DOC  NO  08 TRES DE AGOSTO', '17612200037106', 27, 155),
(568, 'ANTONIO JOSE DE SUCRE', '17684500001902', 30, 137),
(569, 'GENERAL SANTANDER', '27604100074606', 16, 111),
(570, 'POLICARPA SALAVARRIETA', '17689500010903', 18, 115),
(571, 'CUSTODIO GARCIA ROVIRA', '27603600003707', 41, 173),
(572, 'DIVINO SALVADOR', '27604100074604', 16, 111),
(573, 'LA GRAN COLOMBIA', '17682300006602', 37, 162),
(574, 'SANTIAGO LOPEZ', '27682800017403', 33, 234),
(575, 'GUILLERMO LEON VALENCIA', '17624800001604', 34, 177),
(576, 'RICARDO LUIS BETANCOURTH', '17624300002612', 21, 119),
(577, 'DAI KURISIA', '27627500146127', 24, 185),
(578, 'CAMILO TORRES', '27604100074608', 16, 111),
(579, 'ANTONIA SANTOS', '27613000082202', 15, 150),
(580, 'HERACLIO URIBE URIBE', '17673600002508', 36, 187),
(581, 'MANUEL MARIA MALLARINO', '17624600033717', 31, 216),
(582, 'FRANCISCO DE PAULA SANTANDER', '17624600033715', 31, 216),
(583, 'LOS NIASA', '27627500146153', 24, 185),
(584, 'LUIS ALFONSO VINASCO', '27640000060913', 17, 114),
(585, 'JOSE MARIA CORDOBA', '17637700025102', 35, 154),
(586, 'BELLAVISTA', '27623300071505', 28, 230),
(587, 'CRISTO REY', '27604100036304', 16, 113),
(588, 'JOAQUIN CAICEDO', '47673600025810', 36, 157),
(589, 'LUUCX YAT', '27627500146136', 24, 185),
(590, 'JOSE CELESTINO MUTIS', '27631800011101', 11, 188),
(591, 'SAN AGUSTIN', '47602000024909', 26, 129),
(592, 'JOSE MARIA CORDOBA', '27627500015401', 24, 127),
(593, 'CARLOS LOZANO LOZANO', '27623300071503', 28, 230),
(594, 'ANTONIO RICAURTE', '27625000015027', 32, 140),
(595, 'RAFAEL POMBO', '27604100074603', 16, 111),
(596, 'MARCO TULIO LORA', '17603600002408', 41, 191),
(597, 'MERCEDES ABREGO', '27625000015004', 32, 140),
(598, 'NUESTRA SEÑORA DE LAS MERCEDES', '17624600033721', 31, 216),
(599, 'LOS MORENOS', '27660600029011', 14, 213),
(600, 'TERESITA GRAJALES', '27625000015026', 32, 140),
(601, 'ANTONIO VILLAVICENCIO', '27662200030503', 19, 243),
(602, 'FABIO MARTÍNEZ CIFUENTES', '17605400002303', 23, 126),
(603, 'GENERAL ANZOATEGUI', '27630600034403', 13, 184),
(604, 'SANTA TERESITA', '47602000024908', 26, 129),
(605, 'ANTONIO NARIÑO', '17640000027207', 17, 210),
(606, 'CENT DOC   NO  29 POLICARPA SALAVARRIETA', '27612200020104', 27, 220),
(607, 'SANTA TERESITA', '27637700007802', 35, 169),
(608, 'SAN JOSÉ', '27661600025508', 25, 221),
(609, 'SAN JUDAS TADEO', '17667000024011', 42, 174),
(610, 'POLICARPA SALAVARRIETA', '17689000030503', 12, 105),
(611, 'JOSE JOAQUIN JARAMILLO', '17625000026106', 32, 139),
(612, 'CACIQUE EADEBENA', '27627500146125', 24, 185),
(613, 'MARIA EDITH JATIVA', '27623300053703', 28, 223),
(614, 'ATANASIO GIRARDOT', '27656300022307', 10, 200),
(615, 'RICARDO NIETO', '27640000060912', 17, 114),
(616, 'VICTOR HUMBERTO BARRERA', '27686900013811', 38, 166),
(617, 'SAN ANTONIO', '27623300124003', 28, 149),
(618, 'GABRIELA MISTRAL', '17612600005802', 43, 175),
(619, 'MARIA MONTESSORI', '17604100001606', 16, 112),
(620, 'SIMON BOLIVAR', '17682300033305', 37, 233),
(621, 'JUAN XXIII', '17682300033304', 37, 233),
(622, 'CACIQUE KARABI', '27627500146126', 24, 185),
(623, 'MANUEL MEJIA', '47602000024902', 26, 129),
(624, 'CAMILO TORRES', '17689500026502', 18, 227),
(625, 'ANTONIO VILLAVICENCIO', '27623300124005', 28, 149),
(626, 'COMUNEROS', '17656300082205', 10, 102),
(627, 'ANTONIO JOSE DE SUCRE', '27682800011501', 33, 143),
(628, 'CIUDADELA GERMAN MEJIA TASCON', '17612600006612', 43, 176),
(629, 'ANTONIA SANTOS', '27625000015009', 32, 140),
(630, 'LA CABAÑA', '27673600017807', 36, 160),
(631, 'SAN ISIDRO ', '17662200006812', 19, 125),
(632, 'SAGRADO CORAZON DE JESUS', '17627500139303', 24, 182),
(633, 'MARCO FIDEL SUAREZ', '17640300003603', 40, 171),
(634, 'HERNANDO BORRERO CUADROS', '27624800032104', 34, 232),
(635, 'JHON F. KENEDY', '17611300037710', 29, 192),
(636, 'EDUARDO SANTOS', '27637700007803', 35, 169),
(637, 'SANTISIMO SACRAMENTO', '17625000026103', 32, 139),
(638, 'LA CARMELITA', '27661600065402', 25, 201),
(639, 'SIMÓN BOLÍVAR', '17686300033602', 22, 170),
(640, 'SANTA CLARA', '17640000001902', 17, 217),
(641, 'INDALECIO MURIMBIA', '27627500146156', 24, 185),
(642, 'SANTO TOMÁS DE AQUINO', '17686300033606', 22, 170),
(643, 'ALBERTO FRESNEDA', '27625000015025', 32, 140),
(644, 'SAN JOSE', '27640300020104', 40, 206),
(645, 'CACIQUE GUASIRUMA', '27627500146119', 24, 185),
(646, 'POLICARPA SALAVARRIETA', '27610000025909', 20, 123),
(647, 'JOSE ACEVEDO Y GOMEZ', '27640000060905', 17, 114),
(648, 'VICENTE H CRUZ', '27689000009102', 12, 110),
(649, 'SAN ANTONIO', '27630600034406', 13, 184),
(650, 'ANTONIO NARIÑO', '17630600001306', 13, 204),
(651, 'ELOY SILVA', '17656300002404', 10, 100),
(652, 'SANTA ANA', '27627500019703', 24, 236),
(653, 'MARCOS FIDEL SUAREZ', '27661600059008', 25, 181),
(654, 'LA INDEPENDENCIA', '27604100037107', 16, 228),
(655, 'JAIME OSSA ESCOBAR', '17673600003309', 36, 163),
(656, 'CINCUENTENARIO', '17624800002404', 34, 153),
(657, 'MARÍA MONTESSORI', '27623300056107', 28, 186),
(658, 'SANTA MONICA', '27673600017815', 36, 160),
(659, 'JOSE MIGUEL IPIA', '27627500146113', 24, 185),
(660, 'ANTONIA SANTOS', '47605400001902', 23, 141),
(661, 'PUEBLO NUEVO', '27686900013810', 38, 166),
(662, 'LA MARIA', '47673600025802', 36, 157),
(663, 'JORGE ELIECER GAITAN', '27656300004507', 10, 103),
(664, 'LAUREANO CAICEDO TRUJILLO', '27661600059005', 25, 181),
(665, 'ANTONIO RICAURTE', '27630600033603', 13, 156),
(666, 'SAN MARTIN', '17611300037713', 29, 192),
(667, 'JOSE MARIA CORDOBA', '27610000025908', 20, 123),
(668, 'KAPUR', '27627500146172', 24, 185),
(669, 'SEBASTIAN DE BELALCAZAR', '47605400001908', 23, 141),
(670, 'JORGE ISAACS', '27624800036304', 34, 197),
(671, 'PEDRO VICENTE MONTAÑO', '17624800002402', 34, 153),
(672, 'VEINTE DE JULIO', '17625000026112', 32, 139),
(673, 'EL TAMBORAL', '27627500015406', 24, 127),
(674, 'JOSÉ CELESTINO MUTIS', '27682800017409', 33, 234),
(675, 'DAIDUMA', '27627500146175', 24, 185),
(676, 'POLICARPA SALAVARRIETA', '17660600016303', 14, 108),
(677, 'MARIANO GONZALEZ', '27611300043601', 29, 203),
(678, 'ESC RUR  MIX  NO 47  JUAN PABLO I', '27612200020107', 27, 220),
(679, 'SAN JORGE', '17627500001003', 24, 161),
(680, 'SAN LUIS BELTRAN', '27624300049712', 21, 120),
(681, 'GONZALO JIMENEZ DE QUEZADA', '17624600066317', 31, 138),
(682, 'GERARDO BUENO', '17686300033620', 22, 170),
(683, 'DAI URUMAMADUANUMA', '27627500146157', 24, 185),
(684, 'SANTO TOMAS DE AQUINO', '27624300049705', 21, 120),
(685, 'EDELMIRA RAMIREZ', '17640000027204', 17, 210),
(686, 'MANUELA BELTRAN', '27667000020110', 42, 215),
(687, 'CRISTOBAL COLON', '17637700025103', 35, 154),
(688, 'CENTRO DOCENTE NO. 60 PABLO NERUDA', '27623300102907', 28, 131),
(689, 'CAMILO TORRES', '17682300033311', 37, 233),
(690, 'SANTA ANA', '17662200006814', 19, 125),
(691, 'SAN JUDAS TADEO', '27630600034407', 13, 184),
(692, 'TRECE DE JUNIO', '27662200030504', 19, 243),
(693, 'JOSE MARIA VILLEGAS', '17630600001305', 13, 204),
(694, 'FRANCISCO JOSE DE CALDAS', '17624300002604', 21, 119),
(695, 'MARIA LUISA DE LA ESPADA', '27624800032102', 34, 232),
(696, 'MANUEL MURILLO TORO', '27623300071506', 28, 230),
(697, 'JOSE ACEVEDO Y GOMEZ', '17624600033706', 31, 216),
(698, 'JOSE MARIA CORDOBA', '27673600081002', 36, 195),
(699, 'SAN JUAN BOSCO', '17624600033719', 31, 216),
(700, 'SANTA TERESITA', '17640000002703', 17, 218),
(701, 'JESUS MARIA MURGUEITIO', '27623300124004', 28, 149),
(702, 'REPÚBLICA DE COLOMBIA', '17689500004403', 18, 226),
(703, 'MARCO FIDEL SUAREZ', '17686300033605', 22, 170),
(704, 'ELENA OSPINA', '27667000020104', 42, 215),
(705, 'HUGO TORO ECHEVERRY', '17673600003302', 36, 163),
(706, 'DIVINO ECCE HOMO', '27610000070402', 20, 118),
(707, 'DOJUURU', '27627500146150', 24, 185),
(708, 'CACIQUE TASCON', '27627500146140', 24, 185),
(709, 'ALFONSO LOPEZ PUMAREJO', '27627500146104', 24, 185),
(710, 'MAGDALENA ORTEGA DE NARIÑO', '27627500146147', 24, 185),
(711, 'ATANASIO GIRARDOT', '27623300058804', 28, 229),
(712, 'JOSE EUSEBIO CARO', '17640000027206', 17, 210),
(713, 'SIMON BOLIVAR', '27667000020103', 42, 215),
(714, 'GENERAL SANTANDER', '27667000021003', 42, 198),
(715, 'CARLOS ALFONSO GIL', '27689000023710', 12, 107),
(716, 'SANTA LUCIA', '17662200006810', 19, 125),
(717, 'JOSE MARIA CORDOBA', '27624300049706', 21, 120),
(718, 'JOSE JOAQUIN JARAMILLO', '27637700031106', 35, 168),
(719, 'FRANCISCO JOSE DE CALDAS', '27667000021002', 42, 198),
(720, 'NUEVA GRANADA', '47602000024903', 26, 129),
(721, 'SAN ROQUE', '27686300054303', 22, 124),
(722, 'FRANCISCO DE PAULA SANTANDER', '47602000024913', 26, 129),
(723, 'CAMILO TORRES', '27686900017103', 38, 235),
(724, 'MERCEDES ABREGO', '27640000060908', 17, 114),
(725, 'DOLORES SALAZAR DE LOPEZ', '47605400001904', 23, 141),
(726, 'LAUREANO GOMEZ', '27612200022803', 27, 158),
(727, 'SANTA MARIANA DE JESUS', '17673600002511', 36, 187),
(728, 'VERACRUZ', '27661600065403', 25, 201),
(729, 'GUILLERMO VALENCIA', '27689000023705', 12, 107),
(730, 'JOSE ASUNCION SILVA', '27611300001105', 29, 133),
(731, 'SANTA ANA', '27612600013305', 43, 244),
(732, 'CAMILO RESTREPO LOPEZ', '17612200038008', 27, 130),
(733, 'JORGE ROBLEDO', '27604100036303', 16, 113),
(734, 'CACIQUE TAUDA', '27627500146158', 24, 185),
(735, 'ATANASIO GIRARDOT', '17686300033615', 22, 170),
(736, 'MARISCAL SUCRE', '27637700038802', 35, 225),
(737, 'JUAN XXIII', '17611300037712', 29, 192),
(738, 'LLANITOS', '17612600006611', 43, 176),
(739, 'JORGE ELIECER GAITAN', '27623300048105', 28, 145),
(740, 'SIMON BOLIVAR', '27627500027803', 24, 179),
(741, 'SAN SEBASTIAN', '17662200006802', 19, 125),
(742, 'ESTELIA QUINTERO', '27630600017410', 13, 106),
(743, 'ROBERTO URDANETA ARBELAEZ ', '27623300065107', 28, 134),
(744, 'JACINTO SANCHEZ', '27625000015016', 32, 140),
(745, 'JARADEAI DACHI BEDEA', '27627500146168', 24, 185),
(746, 'LAS AMERICAS', '27604100074613', 16, 111),
(747, 'JESUS DE LA BUENA ESPERANZA', '27623300051108', 28, 148),
(748, 'HELIODORO PEÑA', '27662200057705', 19, 136),
(749, 'SAN ANTONIO', '17631800026405', 11, 104),
(750, 'GENERAL CARLOS ALBAN', '17624600066307', 31, 138),
(751, 'JOSE ANTONIO ANZOATEGUI', '27661600058104', 25, 128),
(752, 'JUAN JOSE RONDON', '27686900013804', 38, 166),
(753, 'JULIO ARBOLEDA', '27611300043610', 29, 203),
(754, 'SIETE DE AGOSTO', '17624600033712', 31, 216),
(755, 'SANTA MATILDE', '27673600014308', 36, 241),
(756, 'SAN JUAN BAUTISTA', '17625000026110', 32, 139),
(757, 'COLOMBIA', '27673600017810', 36, 160),
(758, 'FEDICIO NAVARRETE', '27682800044107', 33, 205),
(759, 'JUAN  XXIII', '27661600058106', 25, 128),
(760, 'SAGRADO CORAZÓN DE JESÚS', '17689500026503', 18, 227),
(761, 'VIRGEN LA MILAGROSA', '27611300001106', 29, 133),
(762, 'JORGE ROBLEDO', '27637700038804', 35, 225),
(763, 'MARCO FIDEL SUAREZ', '17637700001402', 35, 224),
(764, 'RICARDO CIFUENTES RIOMAÑA', '17624800001607', 34, 177),
(765, 'RAFAEL NUÑEZ', '27610000054216', 20, 207),
(766, 'CENTRO DOCENTE NO 11 POLICARPA SALAVARRIETA', '27624800036307', 34, 197),
(767, 'JUAN XXIII', '17624600066314', 31, 138),
(768, 'DOLORES BUENO DE TEJADA', '17656300082206', 10, 102),
(769, 'SIMÓN BOLIVAR', '27682800044104', 33, 205),
(770, 'MANUELA BELTRAN', '17613000046105', 15, 147),
(771, 'EL RECREO', '47673600025806', 36, 157),
(772, 'NUESTRA SEÑORA DEL CARMEN', '27612600013303', 43, 244),
(773, 'JOSE CESLESTINO MUTIS', '27656300022305', 10, 200),
(774, 'NUESTRA SRA DEL PERPETUO SOCORRO', '47673600025807', 36, 157),
(775, 'JOSE MARIA ERAZO', '27662200057715', 19, 136),
(776, 'EL BARCINO', '27673600081004', 36, 195),
(777, 'JOSE ANTONIO GALAN', '47605400001909', 23, 141),
(778, 'JOSE CELESTINO MUTIS', '27613000062804', 15, 109),
(779, 'MERCEDES ABREGO', '27604100037103', 16, 228),
(780, 'CRISTOBAL COLON', '47602000024905', 26, 129),
(781, 'SAN ROQUE', '27631800009911', 11, 211),
(782, 'NASA KIWE', '27627500146148', 24, 185),
(783, 'ANTONIO NARIÑO', '17623300065606', 28, 146),
(784, 'MERCEDES ABREGO', '27631800009908', 11, 211),
(785, 'JOHN F. KENNEDY', '17689500010905', 18, 115),
(786, 'SIMON BOLIVAR', '27662200057711', 19, 136),
(787, 'ANTONIO JOSE DE SUCRE', '27640000060904', 17, 114),
(788, 'CRISTO REY', '27689000023707', 12, 107),
(789, 'JOSE MARIA VIVAS BALCAZAR', '17656300009106', 10, 101),
(790, 'CRISTOBAL COLON', '17624600033709', 31, 216),
(791, 'MARIO FERNANDEZ DE SOTO', '27623300051104', 28, 148),
(792, 'ALBERTINA HOYOS DE OSORIO', '27624300049711', 21, 120),
(793, 'SAGRADO CORAZON DE JESUS', '27625000015006', 32, 140),
(794, 'SAN NICOLAS', '17624600033708', 31, 216),
(795, 'JOSE HILARIO LOPEZ', '27611300001109', 29, 133),
(796, 'ANDRÉS  BELLO', '27667000021007', 42, 198),
(797, 'JORGE ELIECER GAITAN', '27627500146146', 24, 185),
(798, 'JOSE MARIA CORDOBA', '27689000009107', 12, 110),
(799, 'ALTO DE LAS TORTOLAS', '27623300026004', 28, 212),
(800, 'SANTA CECILIA', '27637700007805', 35, 169),
(801, 'MANUEL JOSE RAMIREZ', '27656300004504', 10, 103),
(802, 'PERPETUO SOCORRO', '27630600034405', 13, 184),
(803, 'MARCO FIDEL SUÁREZ', '27662200057716', 19, 136),
(804, 'DOLORES LOPEZ DE GIRALDO', '27624300007116', 21, 238),
(805, 'NIÑO JESUS DE PRAGA', '27604100074611', 16, 111),
(806, 'CAMILO TORRES', '27637700007806', 35, 169),
(807, 'MANUEL MEJIA VÉLEZ', '17605400002302', 23, 126),
(808, 'LUIS LORZA', '27610000025907', 20, 123),
(809, 'AMPARO MORALES', '17624600066310', 31, 138),
(810, 'TRINIDAD TAMAYO', '17640000002702', 17, 218),
(811, 'ANTONIA SANTOS', '27667000020102', 42, 215),
(812, 'VEINTE DE JULIO', '27689000023706', 12, 107),
(813, 'SAGRADO CORAZON DE JESUS', '17661600001302', 25, 180),
(814, 'JUAN PABLO II', '27610000054209', 20, 207),
(815, 'LUIS CARLOS PEÑA', '27682800044106', 33, 205),
(816, 'POLICARPA SALAVARRIETA', '27624300007101', 21, 238),
(817, 'FRANCISCO ANTONIO ZEA', '17624600033704', 31, 216),
(818, 'JOSE CELESTINO MUTIS', '27623300056105', 28, 186),
(819, 'SOFIA AGUDELO', '17624300002608', 21, 119),
(820, 'SAN JUAN BOSCO', '47602000024906', 26, 129),
(821, 'POLICARPA SALAVARRIETA', '27637700007801', 35, 169),
(822, 'SAN ANTONIO', '27661600025510', 25, 221),
(823, 'SANTO TOMAS DE AQUINO', '27661600058103', 25, 128),
(824, 'MARIA INMACULADA', '17612600005803', 43, 175),
(825, 'ALTO BONITO', '27611300001112', 29, 133),
(826, 'LA SAGRADA FAMILIA', '27684500010204', 30, 144),
(827, 'FRANCISCO JOSE DE CALDAS', '47605400001913', 23, 141),
(828, 'JOSE ANTONIO GALAN', '27682800038706', 20, 222),
(829, 'ISABEL NAGETH ARIZA', '27660600054106', 14, 202),
(830, 'SAGRADO CORAZON DE JESUS', '27660600054102', 14, 202),
(831, 'ROSA ZARATE DE PEÑA', '27624800032106', 34, 232),
(832, 'CARTAGENA DE INDIAS', '17610000025410', 20, 121),
(833, 'JOSE ACEVEDO Y GOMEZ', '27611300001110', 29, 133),
(834, 'SANTA CATALINA', '27673600048803', 36, 231),
(835, 'MIGUEL ANTONIO CARO', '27686300054306', 22, 124),
(836, 'JOSE JOAQUIN JARAMILLO', '27662200057713', 19, 136),
(837, 'LA MARIA', '27610000051807', 20, 122),
(838, 'ISABEL ARAGON', '27603600003702', 41, 173),
(839, 'NASA CXHACXA', '27627500146145', 24, 185),
(840, 'LA PROVIDENCIA', '17682300038402', 37, 164),
(841, 'LISANDRO CAICEDO', '27612200022806', 27, 158),
(842, 'ANTONIA SANTOS', '27661600059004', 25, 181),
(843, 'ADRIANO MORENO', '27682800044112', 33, 205),
(844, 'TOMAS CIPRIANO DE MOSQUERA', '27623300051107', 28, 148),
(845, 'POLICARPA SALAVARRIETA', '27661600065406', 25, 201),
(846, 'LA INDEPENDENCIA', '17660600016304', 14, 108),
(847, 'EL PARAISO', '27624800036309', 34, 197),
(848, 'SANTA ELENA', '47605400001906', 23, 141),
(849, 'ATANASIO GIRARDOT', '27611300043609', 29, 203),
(850, 'NUESTRA SRA DE FATIMA', '27689000023702', 12, 107),
(851, 'GRAN COLOMBIA', '17649700009303', 39, 167),
(852, 'PIO XII', '17612600006602', 43, 176),
(853, 'ANTONIO NARIÑO', '17637700001403', 35, 224),
(854, 'ANTONIA SANTOS', '17649700009307', 39, 167),
(855, 'POLICARPA SALAVARRIETA', '27684500010205', 30, 144),
(856, 'ELOY HERNANDEZ', '27682800012303', 33, 209),
(857, 'PBRO JOSE ANCIZAR HENAO', '27640000060911', 17, 114),
(858, 'CAROLA BUENO DE BUENO', '27627500146107', 24, 185),
(859, 'ANTONIO RICAUTE', '17624600066318', 31, 138),
(860, 'LIBARDO MADRID VALDERRAMA', '17662200008402', 19, 117),
(861, 'MARCO FIDEL SUAREZ', '27627500146111', 24, 185),
(862, 'SAN MARTIN DE PORRES', '27627500146108', 24, 185),
(863, 'RICARDO MUÑOZ', '17625000026111', 32, 139),
(864, 'CACIQUE DOJABIDA', '27627500146128', 24, 185),
(865, 'JOSÉ MARCOS VARGAS', '27682800044102', 33, 205),
(866, 'PIPISA', '27627500146176', 24, 185),
(867, 'JUAN ANTONIO PEREIRA', '27625000015022', 32, 140),
(868, ' JOSE ANTONIO  GALAN', '27624800036305', 34, 197),
(869, 'SANTA MARTA', '27673600081009', 36, 195),
(870, 'VILLA DEL MAR', '27623300051110', 28, 148),
(871, 'PEDRO JOSÉ MURGUEITIO', '27649700060804', 39, 172),
(872, 'MERCEDES ABREGO', '27673600017808', 36, 160),
(873, 'MARCO FIDEL SUAREZ', '27603600003705', 41, 173),
(874, 'MERCEDES ABREGO', '27649700060805', 39, 172),
(875, 'FELIPE RIVERA', '17682300006605', 37, 162),
(876, 'LUUCX KIWE', '27627500146134', 24, 185),
(877, 'ANTONIA SANTOS', '27662200057712', 19, 136),
(878, 'MERCEDES ABREGO', '27661600058102', 25, 128),
(879, 'RAFAEL NUÑEZ', '17624600066309', 31, 138),
(880, 'MARIA INMACULADA', '27661600059003', 25, 181),
(881, 'MARCO FIDEL SUAREZ', '27682800044105', 33, 205),
(882, 'ARCELIA GIRON', '27689000009108', 12, 110),
(883, 'ENRIQUE OLAYA HERRERA', '17611300037711', 29, 192),
(884, 'FRANCISCO DE PAULA SANTANDER', '27611300043604', 29, 203),
(885, 'SOR MARÍA JULIANA', '17624300002606', 21, 119),
(886, 'SAN ANTONIO', '27656300022304', 10, 200),
(887, 'SAN JUDAS TADEO', '27610000051805', 20, 122),
(888, 'CARLOS HOLMES TRUJILLO', '27627500146109', 24, 185),
(889, 'PRIMITIVO CRESPO', '27603600003706', 41, 173),
(890, 'CACIQUE CORTES', '27627500146141', 24, 185),
(891, 'FRANCISCO JOSE DE CALDAS', '17631800070104', 11, 159),
(892, 'JOSE CELESTINO MUTIS', '27623300051111', 28, 148),
(893, 'MARCO FIDEL SUAREZ', '17624600066316', 31, 138),
(894, 'SAN LUIS GONZAGA', '27661600065409', 25, 201),
(895, 'MELIDA CRUZ', '17661600001305', 25, 180),
(896, 'SAN MARTIN', '27624300049708', 21, 120),
(897, 'ALFONSO LOPEZ PUMAREJO', '27627500146162', 24, 185),
(898, 'SAN AGUSTÍN', '17624300002611', 21, 119),
(899, 'AVENDAÑO GARCIA', '27610000054214', 20, 207),
(900, 'ANTONIA SANTOS', '27610000051804', 20, 122),
(901, 'SAN JUANITO', '27627500146103', 24, 185),
(902, 'SANTA MONICA', '27610000070407', 20, 118),
(903, 'ESCUELITA SAN JOSE', '17640000001903', 17, 217),
(904, 'ELPIDIA LEMOS', '27640300003105', 40, 242),
(905, 'CACIQUE CALARCA', '27627500146138', 24, 185),
(906, 'DOXURA', '27627500146137', 24, 185),
(907, 'RODRIGO DE BASTDIDAS', '27673600017806', 36, 160),
(908, 'LAS DELICIAS', '27623300051103', 28, 148),
(909, 'LA HONDA', '27624800036308', 34, 197),
(910, 'GABRIELA MISTRAL', '27624300007114', 21, 238),
(911, 'DIVINO NIÑO', '17624600066311', 31, 138),
(912, 'CACIQUE GERSAIN', '27627500146174', 24, 185),
(913, 'POLICARPA SALAVARRIETA', '27611300001103', 29, 133),
(914, 'CACIQUE DOVIGAMO', '27627500146122', 24, 185),
(915, 'MARCO  FIDEL SUAREZ', '27631800009907', 11, 211),
(916, 'CARLOS ALFREDO ZUÑIGA', '27623300051105', 28, 148),
(917, 'JOAQUIN C. TORRES', '27630600017409', 13, 106),
(918, 'JUAN DEL CORRAL', '27661600059007', 25, 181),
(919, 'SANTA CATALINA DE LABOURE', '27610000054207', 20, 207),
(920, 'ROSA ZARATE DE PEÑA', '27610000025904', 20, 123),
(921, 'PAULO VI', '27623300058803', 28, 229),
(922, 'NIÑO JESUS DE PRAGA', '17667000024006', 42, 174),
(923, 'EL BARBULA', '27627500019702', 24, 236),
(924, 'BOYACA', '17682300038405', 37, 164),
(925, 'ANTONIA SANTOS', '27656300004503', 10, 103),
(926, 'SAN JULIAN', '27656300004505', 10, 103),
(927, 'EDUARDO RIASCOS GRUESO', '27624800036310', 34, 197),
(928, 'SAN JUAN BOSCO', '17649700009311', 39, 167),
(929, 'CENT DOC  NO 24 SANTA TERESITA', '27612200020106', 27, 220),
(930, 'FRAY BARTOLOME DE DE LAS CASAS', '47673600025804', 36, 157),
(931, 'NUESTRA SEÑORA DE  FATIMA', '27612200022805', 27, 158),
(932, 'MANUELA BELTRAN', '27624800032105', 34, 232),
(933, 'GABRIEL GARCIA MARQUEZ', '27656300022308', 10, 200),
(934, 'LOS COMUNEROS', '27623300056109', 28, 186),
(935, 'ANTONIO RICAURTE', '27673600048802', 36, 231),
(936, 'ROSA ZARATE DE PEÑA', '17624600033705', 31, 216),
(937, 'ESC NUESTRA SEÑORA DE FATIMA', '27673600028303', 36, 196),
(938, 'SAN GIL', '27627500146110', 24, 185),
(939, 'LUIS CARLOS GALAN', '27627500146115', 24, 185),
(940, 'QUENIER GIRALDO', '27624300007107', 21, 238),
(941, 'ENRIQUE OLAYA HERRERA', '27613000018104', 15, 152),
(942, 'FRANCISCO DE PAULA SANTANDER', '27610000070406', 20, 118),
(943, 'JESUS OSIAS QUINTERO', '27640000060910', 17, 114),
(944, 'MANUELA BELTRAN', '47602000024912', 26, 129),
(945, 'ANTONIO JOSE DE SUCRE', '27623300051112', 28, 148),
(946, 'CARLOTA RENGIFO', '17682300033319', 37, 233),
(947, 'EL SOCORRO', '27661600025506', 25, 221),
(948, 'CRISTO REY', '27627500019704', 24, 236),
(949, 'JOSE ANTONIO GALAN', '27673600017813', 36, 160),
(950, 'SANTO TOMAS DE AQUINO', '27689000009106', 12, 110),
(951, 'ATANASIO GIRARDOT', '27604100037108', 16, 228),
(952, 'SIMON BOLIVAR', '17637700025104', 35, 154),
(953, 'MIRAMAR', '27673600032102', 36, 199),
(954, 'SIMON BOLIVAR', '47602000024907', 26, 129),
(955, 'JOSE ACEVEDO Y GOMEZ', '27649700060802', 39, 172),
(956, 'SIMON BOLIVAR', '27660600054104', 14, 202),
(957, 'RAFAEL POMBO', '27623300065106', 28, 134),
(958, 'CRISTO REY', '27637700031102', 35, 168),
(959, 'LASTENIA DURAN', '27684500010210', 30, 144),
(960, 'SANTA TERESITA', '27612600021404', 43, 240),
(961, 'SAN VICENTE FERRER', '27661600058105', 25, 128),
(962, 'MANUELA BELTRAN', '27637700007807', 35, 169),
(963, 'ALONSO ARAGON QUINTERO', '17610000025404', 20, 121),
(964, 'GABRIELA MISTRAL', '27662200030505', 19, 243),
(965, 'SIMON BOLIVAR', '17624800002408', 34, 153),
(966, 'JOSÉ CELESTINO MUTIS', '27604100074610', 16, 111),
(967, 'LEOCADIO SALAZAR', '27682800017411', 33, 234),
(968, 'INES FERNANDEZ DE AGUDELO', '17624300002607', 21, 119),
(969, 'CAMILO TORRES', '17667000024010', 42, 174),
(970, 'PANAMERICANA', '47605400001914', 23, 141),
(971, 'JORGE TADEO LOZANO2', '27686300054304', 22, 124),
(972, 'SAN JOSE', '27662200057710', 19, 136),
(973, 'SANTA TERESITA', '27624300049703', 21, 120),
(974, 'JOSE ANTONIO GALAN', '27686900017104', 38, 235),
(975, 'JUAN JOSE RONDON', '27673600017802', 36, 160),
(976, 'AUGUSTO DOMINGUEZ', '17631800070103', 11, 159),
(977, 'ALFONSO LÓPEZ PUMAREJO', '27684500010209', 30, 144),
(978, 'SAN ALBERTO', '27612600021401', 43, 240),
(979, 'MANUELA BELTRAN', '17611300065208', 29, 193),
(980, 'TERESA BORJA DE CASTRO', '27604100037109', 16, 228),
(981, 'LA MAGDALENA', '27673600017805', 36, 160),
(982, 'CRISTO REY', '17624600033714', 31, 216),
(983, 'CRISTOBAL COLON', '27660600029003', 14, 213),
(984, 'SAN VICENTE FERRER', '17603600002406', 41, 191),
(985, 'ALFREDO VASQUEZ COBO', '27623300051106', 28, 148),
(986, 'ONCE DE NOVIEMBRE', '27684500010203', 30, 144),
(987, 'ANTONIO JOSE DE SUCRE', '27630600033602', 13, 156),
(988, 'JOSE MARIA CORDOBA', '17624600066312', 31, 138),
(989, 'SEBASTIAN DE BEL ALCAZAR', '27624300007108', 21, 238),
(990, 'KWE´SX U´SE YAAKXNXI', '27627500146135', 24, 185),
(991, 'MERCEDES ABREGO', '27624800032107', 34, 232),
(992, 'ALFONSO LOPEZ PUMAREJO', '27623300102904', 28, 131),
(993, 'SANTA ELENA', '27673600017803', 36, 160),
(994, 'VEINTE DE JULIO', '27610000051806', 20, 122),
(995, 'GUILERMO VALENCIA', '27686900017106', 38, 235),
(996, 'ENRIQUE OLAYA HERRERA', '27630600033604', 13, 156),
(997, 'FRANCISCO JOSE DE CALDAS', '17625000026109', 32, 139),
(998, 'JUAN DEL CORRAL', '27649700060807', 39, 172),
(999, 'CACIQUE ESCOBAR', '27627500146129', 24, 185),
(1000, 'JOSE JOAQUIN CASAS', '27611300001108', 29, 133),
(1001, 'ROSA ZARATE DE PEÑA', '27623300056103', 28, 186),
(1002, 'SAGRADA FAMILIA', '17624300002613', 21, 119),
(1003, 'ATANASIO GIRARDOT', '17624600033718', 31, 216),
(1004, 'CAMILO TORRES', '27640300003104', 40, 242),
(1005, 'NUESTRA SEÑORA DE FÁTIMA', '17689500026505', 18, 227),
(1006, 'SAN JUAN BAUTISTA DE LA SALLE', '17686300033603', 22, 170),
(1007, 'CAMILO TORRES', '17686300033619', 22, 170),
(1008, 'LA PRIMAVERA', '27627500146106', 24, 185),
(1009, 'JUAN EVANGELISTA GONZALEZ', '27686300054308', 22, 124),
(1010, 'ESTHER ZORRILLA', '27684500010208', 30, 144),
(1011, 'SAN JUAN BOSCO', '27661600065404', 25, 201),
(1012, 'ALEJANDRO HENAO', '17667000024008', 42, 174),
(1013, 'CACIQUE DOPARA', '27627500146124', 24, 185),
(1014, 'PANTALEON DE LA TORRE', '17682800002107', 33, 214),
(1015, 'ANTONIO RICAURTE', '27660600054105', 14, 202),
(1016, 'SAN ANTONIO DE PADUA', '27627500146116', 24, 185),
(1017, 'ATANASIO GIRARDOT', '27689000009103', 12, 110),
(1018, 'SAN JOSE DE LAS GUACAS', '27627500146112', 24, 185),
(1019, 'GENERAL RENGIFO', '27625000015011', 32, 140),
(1020, 'EL MIRADOR', '27627500146117', 24, 185),
(1021, 'BASILIO LABIO', '27627500146118', 24, 185),
(1022, 'PIO XII', '47605400001907', 23, 141),
(1023, 'PABLO VI', '47605400001911', 23, 141),
(1024, 'AYACUCHO', '27686900013807', 38, 166),
(1025, 'KWE´SX UMA KIWE', '27627500146143', 24, 185),
(1026, 'KWESX KIWE', '27627500146161', 24, 185),
(1027, 'CAMILO TORRES', '27689000009105', 12, 110),
(1028, 'MARIANO OSPINA PEREZ', '47605400001917', 23, 141),
(1029, 'CARLOS ENRIQUE RESTREPO', '27682800017402', 33, 234),
(1030, 'PARAISO', '27610000054212', 20, 207);
INSERT INTO `branches` (`id`, `name`, `dane_code`, `town_id`, `institution_id`) VALUES
(1031, 'SAN JUAN BOSCO', '17682300038406', 37, 164),
(1032, 'ROSA ZARATE DE PEÑA', '27661600025507', 25, 221),
(1033, 'SAN JUAN BAUTISTA', '27610000025905', 20, 123),
(1034, 'RUFINO JOSE CUERVO', '17624600066315', 31, 138),
(1035, 'CAMILO TORRES', '17624600033707', 31, 216),
(1036, 'MARCO FIDEL SUAREZ', '27623300065104', 28, 134),
(1037, 'SAN PEDRO CLAVER', '27660600054103', 14, 202),
(1038, 'MERCEDES ABREGO', '27610000054215', 20, 207),
(1039, 'JOSE ANTONIO GALAN', '27637700031105', 35, 168),
(1040, 'YAT PIYANXI', '27627500146171', 24, 185),
(1041, 'RICARDO NIETO', '27624300007109', 21, 238),
(1042, 'MERCEDES ABREGO', '27624300007105', 21, 238),
(1043, 'JOSE EUSEBIO CARO', '17682300033317', 37, 233),
(1044, 'POLICARPA SALAVARRIETA', '27604100036309', 16, 113),
(1045, 'HERMILA SALAZAR', '27640000060915', 17, 114),
(1046, 'JOSE MARIA CORDOBA', '27603600003712', 41, 173),
(1047, 'CRISTO REY', '17686300033609', 22, 170),
(1048, 'BENJAMIN PEREA', '17625000026116', 32, 139),
(1049, 'SANTO DOMINGO SAVIO', '17613000039903', 15, 151),
(1050, 'MARIA PEREGRINA GARCIA', '27682800011505', 33, 143),
(1051, 'SAN JUAN BOSCO', '17686300033608', 22, 170),
(1052, 'ARMANDO ROMERO LOZANO', '17673600003306', 36, 163),
(1053, 'ELVIRA PEÑA', '17625000026115', 32, 139),
(1054, 'MANUELA BELTRAN', '27661600058108', 25, 128),
(1055, 'JOHN F  KENNEDY', '17689000030502', 12, 105),
(1056, 'JUAN DE LA CRUZ HERRERA', '27613000062806', 15, 109),
(1057, 'LUIS ZULUAGA', '27625000015019', 32, 140),
(1058, 'MARTIN LUTHER KING 20 DE JULIO', '17613000046107', 15, 147),
(1059, 'JOSE MARIA ANZOATEGUI', '27623300124006', 28, 149),
(1060, 'LA LIBERTAD', '27637700031107', 35, 168),
(1061, 'SANTA ISABEL', '17662200006813', 19, 125),
(1062, 'GERARDO BUENO', '17662200006815', 19, 125),
(1063, 'GERMAN MEJIA', '27612600021405', 43, 240),
(1064, 'ARAUCA', '27682800011503', 33, 143),
(1065, 'JOSE EUSEBIO CARO', '27604100074612', 16, 111),
(1066, 'CENTRO DOCENTE NO 9 GREGORIA BENAVIDES', '27624800036302', 34, 197),
(1067, 'SEDE RICARDO NIETO', '17624600033723', 31, 216),
(1068, 'EL CONSUELO', '27604100036302', 16, 113),
(1069, 'ARNULFO DRADA', '17649700009308', 39, 167),
(1070, 'NUESTRA SRA. DEL CARMEN', '27662200030508', 19, 243),
(1071, 'PIO XII', '17624600066305', 31, 138),
(1072, 'VICENTE H CRUZ', '27667000020106', 42, 215),
(1073, 'LA POLONIA', '47602000024914', 26, 129),
(1074, 'CARLOS HOLMES TRUJILLO', '27623300053702', 28, 223),
(1075, 'GENERAL SANTANDER', '27612600013302', 43, 244),
(1076, 'LOS LULOS', '27631800009904', 11, 211),
(1077, 'SANTA CECILIA', '27624300049704', 21, 120),
(1078, 'NTRA SRA DEL CARMEN', '27689000023703', 12, 107),
(1079, 'ANTONIA SANTOS', '27682800012302', 33, 209),
(1080, 'GABRIELA MISTRAL', '27661600025505', 25, 221),
(1081, 'JUAN JOSE RONDON', '27611300043606', 29, 203),
(1082, 'MARIA AUXILIADORA', '27662200057709', 19, 136),
(1083, 'JOSE MARÍA CABAL', '17611300065205', 29, 193),
(1084, 'MANUELA BELTRAN', '27604100037112', 16, 228),
(1085, 'GUILLERMO LEON VALENCIA', '27660600029007', 14, 213),
(1086, 'RESTREPO MEJIA', '17682300033312', 37, 233),
(1087, 'HELIODORO AGUADO', '27637700038806', 35, 225),
(1088, 'ATANASIO GIRARDOT', '27637700038803', 35, 225),
(1089, 'JOSE HERNANDO DUARTE', '27624300049713', 21, 120),
(1090, 'ARTURO PIEDRAHITA', '47673600025803', 36, 157),
(1091, 'SAN JOSE', '17612600006607', 43, 176),
(1092, 'CLIMACO LENIS', '27631800009905', 11, 211),
(1093, 'JOSE ACEVEDO Y GOMEZ', '27624300049710', 21, 120),
(1094, 'NUESTRA SEÑORA DE FATIMA', '27604100037110', 16, 228),
(1095, 'LA TRINIDAD', '27673600017814', 36, 160),
(1096, 'SAN ISIDRO', '17661600001304', 25, 180),
(1097, 'EL CARMEN', '47605400001912', 23, 141),
(1098, 'BUENOS AIRES', '47605400001916', 23, 141),
(1099, 'MANUEL J. GIL', '17640300007902', 40, 219),
(1100, 'SAN BERNARDO', '27682800044108', 33, 205),
(1101, 'PABLO GERARDO PEREZ', '47605400001919', 23, 141),
(1102, 'PIO XII', '17625000026117', 32, 139),
(1103, 'LA ESTRELLA DE ALTO MIRA', '27682800011506', 33, 143),
(1104, 'MANUELA BELTRAN', '17625000026114', 32, 139),
(1105, 'JOSE ACEVEDO Y GOMEZ', '27604100037111', 16, 228),
(1106, 'SAGRADO CORAZON DE JESUS', '17640300003602', 40, 171),
(1107, 'ALFONSO LINCE', '17630600001304', 13, 204),
(1108, 'SAN RAFAEL', '17640000002704', 17, 218),
(1109, 'INDIO AGUALONGO', '27627500146132', 24, 185),
(1110, 'DIVINO NIÑO', '27611300001104', 29, 133),
(1111, 'LA ALBANIA', '27660600029005', 14, 213),
(1112, 'ALFONSO LOPEZ PUMAREJO', '27611300001107', 29, 133),
(1113, 'ALFONSO LÓPEZ PUMAREJO', '27649700060808', 39, 172),
(1114, 'JOSÈ ACEVEDO Y GOMEZ', '27661600025502', 25, 221),
(1115, 'PARROQUIAL', '27627500027802', 24, 179),
(1116, 'ANTONIO NARIÑO', '27682800038703', 20, 222),
(1117, 'LA PUERTA', '27623300053708', 28, 223),
(1118, 'TULIO RAMIREZ', '27640000060906', 17, 114),
(1119, 'GILBERTO ALZATE AVENDAÑO', '27686300054310', 22, 124),
(1120, 'MIGUEL MARÍA DÁVILA', '27640300003106', 40, 242),
(1121, 'ANTONIO NARIÑO', '27612600013304', 43, 244),
(1122, 'ONCE DE NOVIEMBRE', '27610000070412', 20, 118),
(1123, 'SAN JUAN BOSCO', '27604100036308', 16, 113),
(1124, 'PABLO VI', '27624300007113', 21, 238),
(1125, 'ATANASIO GIRARDOT', '47602000024915', 26, 129),
(1126, 'DOCE DE OCTUBRE', '27684500010207', 30, 144),
(1127, 'HEBERTH  MARINO SAAVEDRA', '27631800009909', 11, 211),
(1128, 'SANTA ANA', '17624300002610', 21, 119),
(1129, 'LA CRISTALINA', '27623300053709', 28, 223),
(1130, 'LIGIA RAMIREZ HOYOS', '47605400001910', 23, 141),
(1131, 'CENT DOC NO 04 SANTA ISABEL', '17612200037108', 27, 155),
(1132, 'ELOY HERNANDEZ', '17682300006603', 37, 162),
(1133, 'JULIO CASTAÑO', '17627500091504', 24, 183),
(1134, 'SAN JOSE', '17611300065210', 29, 193),
(1135, 'VIRGEN DE FATIMA', '27631800009906', 11, 211),
(1136, 'SANTA TERESA', '27684500010211', 30, 144),
(1137, 'FCO JOSE DECALDAS', '27662200030502', 19, 243),
(1138, 'JORGE ROBLEDO', '27625000015020', 32, 140),
(1139, 'ALVARO ORTIZ CORREA', '17686900002803', 38, 194),
(1140, 'SANTA ANA', '27673600014307', 36, 241),
(1141, 'FCO DE PAULA SANTANDER', '27662200030506', 19, 243),
(1142, 'RAFAEL ALBERTO MARMOLEJO', '17667000024007', 42, 174),
(1143, 'ANTONIA SANTOS', '27640300020103', 40, 206),
(1144, 'MARIANO OSPINA PEREZ', '17682300033320', 37, 233),
(1145, 'SANTA ELENA', '27684500010206', 30, 144),
(1146, 'CENT DOC NO  36 LAS CARMELITAS', '17612200037105', 27, 155),
(1147, 'CRISTOBAL COLON', '27689000023704', 12, 107),
(1148, 'NUESTRA SRA DE FATIMA', '27623300071504', 28, 230),
(1149, 'RAFAEL URIBE URIBE', '17667000024004', 42, 174),
(1150, 'MARIA AUXILIADORA', '27610000025903', 20, 123),
(1151, 'SAN JORGE', '27625000015023', 32, 140),
(1152, 'MARIA MONTESSORI', '17624800001602', 34, 177),
(1153, 'SANTA CECILIA', '17662200006811', 19, 125),
(1154, 'SANTA ROSA DE LIMA', '27662200057703', 19, 136),
(1155, 'JOSE ACEVEDO Y GÓMEZ', '27662200057702', 19, 136),
(1156, 'PABLO SEXTO', '27604100036305', 16, 113),
(1157, 'ANTONIO ISAZA', '17627500091503', 24, 183),
(1158, 'MERCEDES ABREGO', '17682800002103', 33, 214),
(1159, 'JOSE MARIA CORDOBA', '27682800038705', 20, 222),
(1160, 'SAGRADO CORAZON DE JESUS', '17630600001308', 13, 204),
(1161, 'VICENTE H. CRUZ', '27603600003701', 41, 173),
(1162, 'SANTA ANA', '27640300003103', 40, 242),
(1163, 'PEDRO ANTONIO MOLINA', '17603600002403', 41, 191),
(1164, 'JARD  INF MARCO FIDEL SUAREZ', '17612200037103', 27, 155),
(1165, 'MANUELA BELTRAN', '17660600016305', 14, 108),
(1166, 'FRANCISCO JOSE DE CALDAS', '27627500146102', 24, 185),
(1167, 'MARIA INMACULADA', '17604100001603', 16, 112),
(1168, 'SIMON BOLIVAR', '27623300053705', 28, 223),
(1169, 'JARDIN INFANTIL RAFAEL POMBO', '17673600002505', 36, 187),
(1170, 'NUESTRA SRA DE LOURDES', '27613000082203', 15, 150),
(1171, 'JARDIN MI PEQUEÑO MUNDO', '17610000025403', 20, 121);

CREATE TABLE `cashes` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `snip` varchar(155) COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `cashes` (`id`, `name`, `snip`, `type_id`) VALUES
(1, 'Moneda Universum', 'universum_coin', 1);

CREATE TABLE `cashes_finances` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `finance_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cash_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `cash_types` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `cash_types` (`id`, `name`) VALUES
(1, 'univ_coin'),
(2, 'univ_badge');

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Educativo'),
(2, 'Personal'),
(3, 'Recompensa');

CREATE TABLE `century_skills` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `century_skills` (`id`, `name`) VALUES
(1, 'Toma de decisiones'),
(2, 'Resolución de problemas'),
(3, 'Pensamiento critico'),
(4, 'Lecto-escritura');

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'COLOMBIA');

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `departments` (`id`, `name`, `dane_code`, `country_id`) VALUES
(1, 'VALLE DEL CAUCA', '76', 1);

CREATE TABLE `enrolments` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `institution_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `school_year_id` int DEFAULT NULL,
  `grade_group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `finances` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `gameplays` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `score` int NOT NULL,
  `abort` tinyint NOT NULL,
  `finish` tinyint NOT NULL,
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `activity_id` int DEFAULT NULL,
  `enrolment_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data` json NOT NULL,
  `errors` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `gameplay_learning_results` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `performance_level` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gameplay_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activity_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `num` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `grades` (`id`, `num`, `name`) VALUES
(10, 0, 'Transicion'),
(11, 1, 'Primero'),
(12, 2, 'Segundo'),
(13, 3, 'Tercero'),
(14, 4, 'Cuarto'),
(15, 5, 'Quinto'),
(16, 6, 'Sexto'),
(17, 7, 'Septimo'),
(18, 8, 'Octavo'),
(19, 9, 'Noveno'),
(20, 10, 'Decimo'),
(21, 11, 'Once');

CREATE TABLE `grades_groups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `grade_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `imgs` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `hashable` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `imgs` (`id`, `hashable`, `name`) VALUES
('0046571c-f33b-4b19-b515-e46cf035b1f4', 'ByJ$Cq]g6e%>kALHrm', '/picpass_22.png'),
('10858c44-a460-488f-adfe-8daee2858cb1', 'UD2Z^5;RQWv}B6hmuN', '/picpass_25.png'),
('1316ab69-2cf8-4247-97d1-0ed3eaa24c2e', 'EB$6GbPuUv7;/+8@jq', '/picpass_20.png'),
('13d7b3dd-a615-4f2c-8903-7dedebc4cf26', 'NSQ3jVFWHE>sn4b@#q', '/picpass_39.png'),
('1458a7d5-74a9-447d-bc82-faa4afc19c08', 'C4VJh9Ulb$@yRl7v%w', '/picpass_1.png'),
('1c26bc81-2900-46b3-83a0-110f82921085', 'fK=%4&6ySALtW@Zm*C', '/picpass_46.png'),
('1e9c3d9a-5859-4144-9796-0135652a6821', 'TC_5;M*r4e]6s7YHa/', '/picpass_50.png'),
('284c9490-d2eb-4c41-a8a4-801a672aa910', 'HM-yAsL}&2k>6fb<vP', '/picpass_55.png'),
('2c642643-d567-4368-8f6b-cd2f230a70d1', 'g4>D/@]XFbk-anC<ch', '/picpass_14.png'),
('2d683d41-eff8-443b-b9f9-93bdb136b879', 'hqd4Z@83jAEg9QJmUu', '/picpass_60.png'),
('2dbd5a41-cc84-41a5-82a4-573740a55f39', 'N3BW/uksLy<;wq6pGe', '/picpass_32.png'),
('3046a18e-bff5-43a2-8ae7-86e28fa4762c', 'K~?bx37<s&my4Aj9C[', '/picpass_40.png'),
('3066dd93-d404-4c83-9439-59073820b07b', 'hT+YA;n5zsBZpd{#U^', '/picpass_18.png'),
('30ec7321-5710-416a-ba9a-1be7dc46d495', 'q2u/k5X!~F+&x]48Jd', '/picpass_44.png'),
('328ff8ff-c23d-455f-993c-ae3999c168db', 'R>D4dNqykzZc7pExwH', '/picpass_56.png'),
('34661331-3ea4-4799-9212-084c093757ec', 'v*y9#k&QwN>X{ELPAg', '/picpass_42.png'),
('367d2140-09af-4353-a9f1-378f285de0eb', 'X3}YK^B[$?ZMj;d7Tv', '/picpass_48.png'),
('39722153-ca6e-4c76-83b6-02a57546d777', 'RUwD<y8E~HKtxX;?AF', '/picpass_34.png'),
('3ceec9e5-0d67-4411-962d-2e10ba93224d', 'pM!_gWc%SyT6kRY*QL', '/picpass_54.png'),
('3f9bfab2-5277-4f2b-894c-a5172af7f252', 'tm?SYgd4B3~p_s<bvF', '/picpass_45.png'),
('44ab477c-61f1-4ae9-a32b-a42bc68d42df', 'RhC5[k>Y^bB+QHyv8X', '/picpass_8.png'),
('47ce1da5-881b-48ef-90d3-f822cdfae469', 'sy8V*7+FtdGJP%_$mh', '/picpass_52.png'),
('49255563-5e03-4232-8f7a-ed01a6f2a641', 'vg3fy~;J2/N}zG5e^u', '/picpass_13.png'),
('49759f60-723f-4888-8816-2ab7ab9fcfbf', '66HZ#$!FTi96ASb%iU', '/picpass_2.png'),
('5a466144-ebb1-4f0e-aa8e-a85cd4d36a00', 't5wBVhoKh4E4K7Y7i*', '/picpass_3.png'),
('5b443864-933d-48c6-b5f3-ba357bd8a9a8', 'rD3e=HQ;k<sGy!^8Nm', '/picpass_24.png'),
('5e3bb68f-0b19-4d9a-9937-1a60be0a6a7e', 'uU<XS!jrQ96w7Jyh5[', '/picpass_11.png'),
('5fb27232-d44d-407a-8975-d90a7df6765a', 'Z2]#RCEYT-}7tjf~Da', '/picpass_5.png'),
('62000c17-dbee-4426-851e-9043b73420de', 'AHbsYc{gk+xnh2fD%F', '/picpass_21.png'),
('6d2467f5-05b8-4a16-afdb-d95cea3a19e6', 'Lgka5JAG-SB}Qu6sp8', '/picpass_57.png'),
('74fc44a4-8914-47ac-aad3-958725f219b9', 'xUJ*~2&6z8+TwMfZA7', '/picpass_15.png'),
('78a43b9f-53e1-4f66-85e2-96aa85875b83', 'bgM*kYjXx2K$wHA85c', '/picpass_6.png'),
('7d66a533-d853-4dfd-b0e3-25068cfef12f', 'U2V&;7_W[g+9w$}QfK', '/picpass_23.png'),
('7e7bfa23-4485-4cf6-9acf-e055fa257d91', 'S?VZy2fFb[%dsLT=qH', '/picpass_43.png'),
('7ec0ca44-e2ec-48cd-8152-cbb52024f221', 'm{ZCc85-7=nt_F9%4h', '/picpass_59.png'),
('7f0e9d46-f2e6-41d5-b0a4-00aa03a79aa0', 'wYM=8C4<U6[^2F~f;V', '/picpass_35.png'),
('82ecf78c-d2a8-4408-96e8-291221cbef7c', 'y{/EvLWd^*54=>B!q_', '/picpass_17.png'),
('8496bb04-8170-462d-8db5-7b73857756c1', 'v$AEj4ZSV}{W+Kan2r', '/picpass_26.png'),
('84c5cc6a-dae9-4433-ac7d-b418af53c6e3', 'A=w469QWZhe&}3L5]G', '/picpass_33.png'),
('8c54035d-8eed-4e8f-8c0a-29d7b88a391c', 'C=5qfcv32r^mNBYQ*b', '/picpass_7.png'),
('945931a8-01ce-4481-820c-8cc6a1ace067', 'C<*7T%3->bS5dxRJz[', '/picpass_53.png'),
('9ad79165-4491-46ed-abd5-9d5d12fd8e8f', 'WCdA5H9EN/S_XD4Kmx', '/picpass_41.png'),
('9da8f37b-f3b6-4d70-95bc-e45367ab942a', 'G?JA2Cp~8skLmB-*n7', '/picpass_19.png'),
('9edab562-cc92-4764-9b94-fceee70ad59b', 'U@$6]mb?{_9CtZH~p+', '/picpass_10.png'),
('abff6aa0-c432-4e2a-9b71-fd8a3b6b50fe', 'rnS>JyGkHa[6W7;8}&', '/picpass_36.png'),
('b719e833-4092-4eca-bf72-5128752f3f48', 'E{Gj39cy-CA]azeZBr', '/picpass_37.png'),
('b997e3ef-3cfe-424a-aa36-54770369a759', 'uS6<f-+@k=s_t3L#Gq', '/picpass_12.png'),
('ba4dadac-ba88-4668-85b5-9da62577e4eb', 'GKYB;Zw{4@EqcW3>n!', '/picpass_38.png'),
('bc127378-72a3-475a-ae0a-0bb946db7f5c', 'TvqD/}4{x2jhr?gRmB', '/picpass_16.png'),
('bc9f03c4-2993-490a-830b-b4dd8a07a8c0', 'by_2VMU}~7^K>%cCqG', '/picpass_4.png'),
('c7b5afab-c0f3-40d3-a9fb-1c0d317301ec', 'tNx4v7cZm*3Yy=D$%F', '/picpass_29.png'),
('ca0b833e-8546-4ae2-ba90-4bbb36537a42', 'JhPYd*M=KW]7@3GT6{', '/picpass_30.png'),
('cf989138-e7d2-4172-9dd3-4af6e6aed369', 'wu*n8XqAC$#UM9}<ra', '/picpass_51.png'),
('e2168927-c519-47da-b670-5ddb051ecdea', 'vtfUyY$JTC!2@qD9G_', '/picpass_9.png'),
('e3579e04-1be5-4b08-968b-398f7ce6a798', 'yQjDK$AJZP4p=v*3/<', '/picpass_47.png'),
('eb7d3310-70a8-41d4-88dd-90df46264f91', 'E/^tX*n!}Rq&PvT<2h', '/picpass_49.png'),
('f2cf00be-e0f3-416b-a5e7-8da6cff4b267', 'FmjHgAKq97&aRVc~_$', '/picpass_58.png'),
('f3853cbf-6716-4acf-a4b5-6d50a3447319', 'wS}ep2=^Cq&6]-YPf+', '/picpass_31.png'),
('f5e05ebd-b433-4fb6-8367-40e068e2f541', 'zF]aH84;MPAG{N%^q2', '/picpass_28.png'),
('f7e16012-0928-4909-974e-ddbe99bfb49f', 'b%GJh@n3>N-4+5f}Mx', '/picpass_27.png');

CREATE TABLE `imgs_users` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `img_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `institutions` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `institutions` (`id`, `name`, `dane_code`) VALUES
(100, 'IE ATENEO', '176563000024'),
(101, 'IE FRANCISCO ANTONIO ZEA', '176563000091'),
(102, 'IE ALFREDO POSADA CORREA', '176563000822'),
(103, 'I.E. MERCEDES ABREGO', '276563000045'),
(104, 'IE ESCUELA NORMAL SUPERIOR MIGUEL DE CERVANTES SAAVEDRA', '176318000264'),
(105, 'IE ALFONSO ZAWADZKY', '176890000305'),
(106, 'IE MANUELA BELTRAN', '276306000174'),
(107, 'IE SAN JUAN BOSCO', '276890000237'),
(108, 'IE JOSE FELIX RESTREPO', '176606000163'),
(109, 'IE RODRIGO LLOREDA CAICEDO', '276130000628'),
(110, 'IE GABRIELA MISTRAL', '276890000091'),
(111, 'IE EL PLACER', '276041000746'),
(112, 'IE SANTA ANA DE LOS CABALLEROS', '176041000016'),
(113, 'IE SANTA INES', '276041000363'),
(114, 'QUEBRADAGRANDE', '276400000609'),
(115, 'IE NORMAL SUPERIOR NUESTRA SEÑORA DE LAS MERCEDES', '176895000109'),
(116, 'IE MAGDALENA ORTEGA', '176400000043'),
(117, 'IE NORMAL SUPERIOR JORGE ISAACS', '176622000084'),
(118, 'IE BETANIA', '276100000704'),
(119, 'IE EL AGUILA', '176243000026'),
(120, 'IE SANTA MARTA', '276243000497'),
(121, 'IE MANUEL DOLORES MONDRAGON', '176100000254'),
(122, 'IE LA TULIA', '276100000518'),
(123, 'IE PRIMAVERA', '276100000259'),
(124, 'IE CARLOS HOLGUIN SARDI', '276863000543'),
(125, 'IE BELISARIO PEÑA PIÑEIRO', '176622000068'),
(126, 'IE GILBERTO ALZATE AVENDAÑO.', '176054000023'),
(127, 'IE JOSE MARIA CORDOBA', '276275000154'),
(128, 'IE HERNANDO LLORENTE ARROYO', '276616000581'),
(129, 'IE ARTURO GOMEZ JARAMILLO', '476020000249'),
(130, 'IE BOLIVARIANO', '176122000380'),
(131, 'IE PEDRO FERMIN DE VARGAS', '276233001029'),
(132, 'IE LUIS GABRIEL UMAÑA MORALES', '276895000782'),
(133, 'IE  CEILAN', '276113000011'),
(134, 'IE EL QUEREMAL', '276233000651'),
(135, 'IE NUESTRA SEÑORA DE CHIQUINQUIRA', '176622000076'),
(136, 'IE SANTA ROSALIA DE PALERMO', '276622000577'),
(137, 'IE LEOCADIO SALAZAR', '176845000019'),
(138, 'IE GILBERTO ALZATE AVENDAÑO', '176246000663'),
(139, 'IE JOSE MARIA FALLA', '176250000261'),
(140, 'IE ACERG', '276250000150'),
(141, 'IE SANTIAGO GUTIERREZ ANGEL', '476054000019'),
(142, 'IE EFRAIN VARELA VACA', '176895000168'),
(143, 'IE ANTONIOJOSE DE SUCRE', '276828000115'),
(144, 'IE MARIA INMACULADA', '276845000102'),
(145, 'IE GUILLERMO VALENCIA.', '276233000481'),
(146, 'IE  DEL DAGUA', '176233000656'),
(147, 'I.E. INMACULADA CONCEPCION', '176130000461'),
(148, 'IE EL PALMAR', '276233000511'),
(149, 'IE CRISTOBAL COLON', '276233001240'),
(150, 'IE MARINO RENJIFO SALCEDO', '276130000822'),
(151, 'IE NUESTRA SEÑORA DE  LA CANDELARIA', '176130000399'),
(152, 'I.E. PANEBIANCO AMERICANO', '276130000181'),
(153, 'IE JORGE  ISAACS', '176248000024'),
(154, 'IE SAN PIO X', '176377000251'),
(155, 'IE NORMAL SUPERIOR MARIA INMACULADA', '176122000371'),
(156, 'IE DE DESARROLLO RURAL LA SELVA', '276306000336'),
(157, 'IE HERACLIO URIBE URIBE', '476736000258'),
(158, 'IE SAGRADO CORAZON DE JESUS', '276122000228'),
(159, 'IE PEDRO VICENTE ABADIA', '176318000701'),
(160, 'IE SANTA TERESITA', '276736000178'),
(161, 'IE LAS AMERICAS', '176275000010'),
(162, 'IE FRAY JOSE JOAQUIN ESCOBAR', '176823000066'),
(163, 'IE GENERAL SANTANDER', '176736000033'),
(164, 'IE NUESTRA SEÑORA DE LA CONSOLACION', '176823000384'),
(165, 'IE SAGRADO CORAZON DE JESUS', '176828000064'),
(166, 'IE ANTONIO JOSE DE SUCRE', '276869000138'),
(167, 'IE SAN JOSE', '176497000093'),
(168, 'IE LA LIBERTAD', '276377000311'),
(169, 'IE FRANCISCO DE PAULA SANTANDER', '276377000078'),
(170, 'IE LA INMACULADA', '176863000336'),
(171, 'IE MANUEL ANTONIO BONILLA', '176403000036'),
(172, 'IE MARIA ANALIA ORTIZ HORMAZA', '276497000608'),
(173, 'IE AGRICOLA CAMPOALEGRE', '276036000037'),
(174, 'IE JOSE ANTONIO AGUILERA', '176670000240'),
(175, 'IE GIMNASIO DEL CALIMA', '176126000058'),
(176, 'IE SIMON BOLIVAR', '176126000066'),
(177, 'IE SAGRADO CORAZÓN', '176248000016'),
(178, 'IE JORGE  ISAACS EL PLACER', '276248000355'),
(179, 'IE REGIONAL SIMON BOLIVAR', '276275000278'),
(180, 'IE PRIMITIVO CRESPO', '176616000013'),
(181, 'IE NEMESIO RODRIGUEZ ESCOBAR', '276616000590'),
(182, 'IE ABSALON TORRES CAMACHO', '176275001393'),
(183, 'IE CIUDAD FLORIDA', '176275000915'),
(184, 'IE MANUELA BELTRAN', '276306000344'),
(185, 'IE IDEBIC', '276275001461'),
(186, 'IE CAMILO TORRES', '276233000561'),
(187, 'IE SEVILLA', '176736000025'),
(188, 'IE JOSE CELESTINO MUTIS', '276318000111'),
(189, 'IE JOSE IGNACIO OSPINA', '276318000226'),
(190, 'IE SAN JOSE', '176020000032'),
(191, 'IE ELEAZAR LIBREROS SALAMANCA', '176036000024'),
(192, 'IE DIEGO RENGIFO SALAZAR', '176113000377'),
(193, 'IE ANTONIO NARIÑO', '176113000652'),
(194, 'IE JORGE ROBLEDO', '176869000028'),
(195, 'IE BENJAMIN HERRERA', '276736000810'),
(196, 'IE SANTA BARBARA', '276736000283'),
(197, 'IE SANTA ELENA', '276248000363'),
(198, 'IE MIGUEL ANTONIO CARO', '276670000210'),
(199, 'IE MARIA AUXILIADORA.', '276736000321'),
(200, 'IE MARCO FIDEL SUAREZ', '276563000223'),
(201, 'IE ALFREDO GARRIDO TOVAR', '276616000654'),
(202, 'I.E. TEODORO MUNERA HINCAPIE', '276606000541'),
(203, 'IE MARIANO GONZALEZ', '276113000436'),
(204, 'IE GINEBRA LA SALLE', '176306000013'),
(205, 'IE MANUEL MARIA MALLARINO', '276828000441'),
(206, 'IE SAN JOSE', '276403000201'),
(207, 'IE NARANJAL', '276100000542'),
(208, 'IE SIMON BOLIVAR', '276318000277'),
(209, 'IE CRISTOBAL COLON', '276828000123'),
(210, 'IE ARGEMIRO ESCOBAR CARDONA', '176400000272'),
(211, 'IE GENERAL SANTANDER', '276318000099'),
(212, 'IE SANTA TERESITA DEL NIÑO JESUS', '276233000260'),
(213, 'IE JOSE ACEVEDO Y GOMEZ', '276606000290'),
(214, 'IE JULIAN TRUJILLO', '176828000021'),
(215, 'IE JULIO CAICEDO TELLEZ', '276670000201'),
(216, 'IE LA PRESENTACION', '176246000337'),
(217, 'IE SAN JOSE', '176400000019'),
(218, 'IE JUAN DE DIOS GIRON', '176400000027'),
(219, 'IE SANTA TERESITA', '176403000079'),
(220, 'IE GILBERTO ALZATE AVENDAÑO', '276122000201'),
(221, 'IE EL PLACER', '276616000255'),
(222, 'IE RODRIGO LLOREDA CAICEDO', '276828000387'),
(223, 'I.E. SAN PEDRO CLAVER', '276233000537'),
(224, 'IE SIMON BOLIVAR', '176377000014'),
(225, 'IE MARÍA AUXILIADORA', '276377000388'),
(226, 'IE ANTONIO NARIÑO', '176895000044'),
(227, 'IE SIMON BOLIVAR', '176895000265'),
(228, 'IE JORGE ISAACS', '276041000371'),
(229, 'IE MIGUEL ANTONIO CARO', '276233000588'),
(230, 'IE BORRERO AYERBE', '276233000715'),
(231, 'IE JORGE ELIECER GAITAN', '276736000488'),
(232, 'IE HERNANDO BORRERO CUADROS', '276248000321'),
(233, 'IE  TECNICA AGROPECUARIA TORO', '176823000333'),
(234, 'IE SAN ISIDRO', '276828000174'),
(235, 'IE VEINTE DE JULIO', '276869000171'),
(236, 'IE ATANASIO GIRARDOT', '276275000197'),
(237, 'IE JORGE ELIECER GAITAN', '176606000422'),
(238, 'IE JUSTINIANO ECHAVARRIA', '276243000071'),
(239, 'IE ANTONIO NARIÑO', '276563000231'),
(240, 'IE PABLO VI', '276126000214'),
(241, 'IE DOCE DE OCTUBRE', '276736000143'),
(242, 'IE NUESTRA SEÑORA DE LA PAZ', '276403000031'),
(243, 'CE RODRIGO LLOREDA CAICEDO', '276622000305'),
(244, 'CE JOHN F. KENNEDY', '276126000133');

CREATE TABLE `inventories` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `items` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `snip` varchar(155) COLLATE utf8mb4_general_ci NOT NULL,
  `value` int NOT NULL,
  `properties` text COLLATE utf8mb4_general_ci,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `items` (`id`, `name`, `snip`, `value`, `properties`, `category_id`) VALUES
(1, 'Manzana', 'apple_gather', 750, NULL, 1),
(2, 'Uva', 'grapes_gather', 750, NULL, 1),
(3, 'Semillas de Pera', 'pear_seed', 500, NULL, 1),
(4, 'Semillas de Maiz', 'corn_seed', 500, 'clima_calido', 1),
(5, 'Semillas de Colina', 'cabbage_seed', 500, 'clima_frio', 1),
(6, 'Semillas de Tomate', 'tomatoes_seed', 500, 'clima_calido', 1),
(7, 'Semillas de Zanahoria', 'carrot_seed', 500, 'clima_frio', 1),
(8, 'Tomate', 'tomatoes_gather', 750, NULL, 1),
(9, 'Semillas de Papaya', 'papaya_seed', 500, 'clima_calido', 1),
(10, 'Semillas de Patata', 'potatoes_seed', 500, 'clima_frio', 1),
(11, 'Pera', 'pear_gather', 750, 'clima_frio', 1),
(12, 'Semillas de Rábano', 'radish_seed', 500, NULL, 1),
(13, 'Semillas de Naranja', 'orange_seed', 500, 'clima_calido', 1),
(14, 'Semillas de Aguacate', 'avocado_seed', 1500, 'clima_calido', 1),
(15, 'Mora', 'blackberry_gather', 750, NULL, 1),
(16, 'Rabano', 'radish_gather', 750, NULL, 1),
(17, 'Zanahoria', 'carrot_gather', 750, NULL, 1),
(18, 'Semillas de Mora', 'blackberry_seed', 500, 'clima_frio', 1),
(19, 'Semillas de Habichuelas', 'greenbean_seed', 300, 'clima_frio', 1),
(20, 'Semillas de Sandia', 'watermelon_seed', 500, 'clima_calido', 1),
(21, 'Semillas de Manzana', 'apple_seeds', 500, 'clima_frio', 1),
(22, 'Semillas de Uva', 'grapes_seed', 500, NULL, 1),
(23, 'Patata', 'potatoe_gather', 750, NULL, 1),
(24, 'Col', 'cabbage_gather', 750, NULL, 1),
(25, 'Sandias', 'watermelon_gather', 500, NULL, 1),
(26, 'Insignia de Oro', 'gold_badge', 1500, 'badge', 3),
(27, 'Insignia de Plata', 'plate_badge', 1000, 'badge', 3),
(28, 'Insignia de Bronce', 'bronze_badge', 500, 'badge', 3),
(29, 'Papaya', 'papaya_gather', 250, NULL, 1),
(30, 'Maiz', 'corn_gather', 350, NULL, 1);

CREATE TABLE `items_inventories` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `is_showed` tinyint NOT NULL,
  `amount` int NOT NULL,
  `inventory_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `licenses` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `serial` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `owner` int NOT NULL,
  `expired_date` date NOT NULL,
  `tumlab_name` varchar(155) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `licenses` (`id`, `serial`, `owner`, `expired_date`, `tumlab_name`) VALUES ('d8c3b676-782f-11ee-8f83-2cf05d8dbc0d', 'serialadminuv', '999999', '2030-10-31', 'admintumlab');

CREATE TABLE `profiles` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `disability` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `profiles` (`id`, `name`, `lastname`, `gender`, `birth`, `age`, `disability`) VALUES
('188c23ff-66be-11ee-8cc1-7085c296afc1', 'Universum', 'Admin', NULL, NULL, NULL, NULL);

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `display` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `roles` (`id`, `name`, `display`) VALUES
(1, 'coordinator', 'Coordinador'),
(2, 'secretary', 'Secretaria'),
(3, 'township', 'Municipio'),
(4, 'rector', 'Rector'),
(5, 'parent', 'Padre'),
(6, 'support', 'Soporte'),
(7, 'student', 'Estudiante'),
(8, 'teacher', 'Docente'),
(9, 'admin', 'Administrador');

CREATE TABLE `school_years` (
  `id` int NOT NULL,
  `name` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `school_years` (`id`, `name`) VALUES
(1, 2023),
(2, 2024);

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `snip` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `subjects` (`id`, `name`, `snip`) VALUES
(1, 'Ética', 'ethics'),
(2, 'Estética', 'aesthetics'),
(3, 'Corporal', 'corporal'),
(4, 'Actitudes y valores', 'attitudes_and_values'),
(5, 'Comunicativa ', 'communicative'),
(6, 'Lenguaje', 'language'),
(7, 'Sociales', 'social'),
(8, 'Naturales', 'natural'),
(9, 'Matemáticas', 'mathematics'),
(10, 'Sociales', 'social'),
(11, 'Manejo de emociones', 'emotional_management'),
(12, 'Empatía', 'empathy'),
(13, 'Manejo de conflictos', 'conflict_management'),
(14, 'Finanzas', 'finance'),
(15, 'Economía', 'economics');

CREATE TABLE `thinking_skills` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `thinking_skills` (`id`, `name`) VALUES
(1, 'Recordar'),
(2, 'Aplicar'),
(3, 'Evaluar'),
(4, 'Comprender'),
(5, 'Analizar'),
(6, 'Crear');

CREATE TABLE `towns` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dane_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `towns` (`id`, `name`, `dane_code`, `department_id`) VALUES
(10, 'PRADERA', '563', 1),
(11, 'GUACARI', '318', 1),
(12, 'YOTOCO', '890', 1),
(13, 'GINEBRA', '306', 1),
(14, 'RESTREPO', '606', 1),
(15, 'CANDELARIA', '130', 1),
(16, 'ANSERMANUEVO', '41', 1),
(17, 'LA UNION', '400', 1),
(18, 'ZARZAL', '895', 1),
(19, 'ROLDANILLO', '622', 1),
(20, 'BOLIVAR', '100', 1),
(21, 'EL AGUILA', '243', 1),
(22, 'VERSALLES', '863', 1),
(23, 'ARGELIA', '54', 1),
(24, 'FLORIDA', '275', 1),
(25, 'RIOFRIO', '616', 1),
(26, 'ALCALA', '20', 1),
(27, 'CAICEDONIA', '122', 1),
(28, 'DAGUA', '233', 1),
(29, 'BUGALAGRANDE', '113', 1),
(30, 'ULLOA', '845', 1),
(31, 'EL CAIRO', '246', 1),
(32, 'EL DOVIO', '250', 1),
(33, 'TRUJILLO', '828', 1),
(34, 'EL CERRITO', '248', 1),
(35, 'LA CUMBRE', '377', 1),
(36, 'SEVILLA', '736', 1),
(37, 'TORO', '823', 1),
(38, 'VIJES', '869', 1),
(39, 'OBANDO', '497', 1),
(40, 'LA VICTORIA', '403', 1),
(41, 'ANDALUCIA', '36', 1),
(42, 'SAN PEDRO', '670', 1),
(43, 'CALIMA EL DARIEN', '126', 1);

CREATE TABLE `login_record` (
  `id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `loginSuccess` tinyint NOT NULL,
  `loginAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `ipAddress` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `transactions` (
  `id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_id` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `buyer` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `users` (
  `id` int NOT NULL,
  `keycloak_sub_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `activation_token` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_password_token` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pic_pass` tinyint NOT NULL,
  `first_login` tinyint NOT NULL DEFAULT '1',
  `first_select_avatar` tinyint NOT NULL DEFAULT '1',
  `validated_by_parent` tinyint NOT NULL DEFAULT '0',
  `created_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `profile_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enrolment_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inventory_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar_id` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `keycloak_sub_id`, `username`, `email`, `password`, `active`, `activation_token`, `reset_password_token`, `pic_pass`, `first_login`, `first_select_avatar`, `validated_by_parent`, `created_on`, `profile_id`, `enrolment_id`, `inventory_id`, `finance_id`, `avatar_id`, `role_id`) VALUES
(999999, '', 'uvadmin2023', 'uvadmin2023@yopmail.com', '$2a$10$GzbhDlhIsiM/F6ptBBYlrO0GMxNljT9z4VmLsH5YsAW6it/.BblxS', 1, NULL, NULL, 0, 0, 0, 0, '2023-10-01 10:04:10.069000', '188c23ff-66be-11ee-8cc1-7085c296afc1', NULL, NULL, NULL, NULL, 9);


ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_c9ee662a4db2641eeac1bd3358` (`slug`),
  ADD KEY `FK_b18bcb61a2746e8282cd8a20b55` (`subject_id`),
  ADD KEY `FK_32e72bfadedb3eac1672f732936` (`grade_id`);

ALTER TABLE `activities_century_skills`
  ADD PRIMARY KEY (`activities_id`,`century_skills_id`),
  ADD KEY `IDX_ec02145cb9125a0258e5b307cd` (`activities_id`),
  ADD KEY `IDX_dc467f8c015cb71092528e88c1` (`century_skills_id`);

ALTER TABLE `activities_thinking_skills`
  ADD PRIMARY KEY (`activities_id`,`thinking_skills_id`),
  ADD KEY `IDX_5a34086998568f38af49858ee7` (`activities_id`),
  ADD KEY `IDX_758ce3f8cc68ce5d727bf1aa7e` (`thinking_skills_id`);

ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_22973db823ebe1d988a3d542598` (`town_id`),
  ADD KEY `FK_319f0f63c7ef90bec51825bcd37` (`institution_id`);

ALTER TABLE `cashes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_1d66df4c5d40f2f45b46833a23` (`name`),
  ADD KEY `FK_bcbb317ca78697b31fe275b6e1b` (`type_id`);

ALTER TABLE `cashes_finances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0f759acb130005f382d6fb28411` (`finance_id`),
  ADD KEY `FK_92ddfb1cf09ad56cc392e688ffe` (`cash_id`);

ALTER TABLE `cash_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `century_skills`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7563404890a1ef1966595352f21` (`country_id`);

ALTER TABLE `enrolments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_11eb233073f8da2d94cad4eed85` (`institution_id`),
  ADD KEY `FK_8818b828078792c218cd46d692b` (`branch_id`),
  ADD KEY `FK_cfa5c13ea91f035553b009f9265` (`school_year_id`),
  ADD KEY `FK_6cf24e9e41e56c2df8013cf8122` (`grade_group_id`);

ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gameplays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8c12bddd84fa0f6b44bb83123f` (`abort`),
  ADD KEY `IDX_59874813154f78667784983347` (`finish`),
  ADD KEY `FK_77446cd3c9923062927eaacf18f` (`activity_id`),
  ADD KEY `FK_8aef9125a8789ad4decf04465eb` (`enrolment_id`);

ALTER TABLE `gameplay_learning_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_97069f0f34a31de25c5f47e1bd` (`gameplay_id`),
  ADD KEY `FK_9441820a6da8c57a3e4a89f4e8c` (`activity_id`);

ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `grades_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a1e350dccd27965938f37940e81` (`grade_id`),
  ADD KEY `FK_76bd13c6676bc7673103a47937a` (`group_id`);

ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `imgs_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0c4aa809ddf5b0c6ca45d8a8e80` (`category_id`);

ALTER TABLE `items_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_68a029b369f6367740a75b763f8` (`inventory_id`),
  ADD KEY `FK_fa4e1a4530c6642f3d610b758d0` (`item_id`);

ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_648e3f5447f725579d7d4ffdfb` (`name`);

ALTER TABLE `school_years`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `thinking_skills`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_9622a3805504447b728dd24844d` (`department_id`);

ALTER TABLE `login_record`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_4454cae6e1c2a60b0fe85086c5` (`keycloak_sub_id`),
  ADD UNIQUE KEY `IDX_fe0bb3f6520ee0469504521e71` (`username`),
  ADD UNIQUE KEY `IDX_97672ac88f789774dd47f7c8be` (`email`),
  ADD UNIQUE KEY `IDX_89a1c9adfee558c580dd8a2b6a` (`activation_token`),
  ADD UNIQUE KEY `IDX_ee6419219542371563e0592db5` (`reset_password_token`),
  ADD UNIQUE KEY `REL_23371445bd80cb3e413089551b` (`profile_id`),
  ADD UNIQUE KEY `REL_dce0197c9fc4a3a30182fb15b9` (`enrolment_id`),
  ADD UNIQUE KEY `REL_e5ec5b6c6b9cf5160b55b6e5d2` (`inventory_id`),
  ADD UNIQUE KEY `REL_8ad9356cce5c4297be3226c513` (`finance_id`),
  ADD UNIQUE KEY `REL_c3401836efedec3bec459c8f81` (`avatar_id`),
  ADD KEY `FK_a2cecd1a3531c0b041e29ba46e1` (`role_id`);


ALTER TABLE `activities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1172;

ALTER TABLE `cashes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `cash_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `century_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `grades_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `institutions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `school_years`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `thinking_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `towns`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

ALTER TABLE `login_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;


ALTER TABLE `activities`
  ADD CONSTRAINT `FK_32e72bfadedb3eac1672f732936` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `FK_b18bcb61a2746e8282cd8a20b55` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `activities_century_skills`
  ADD CONSTRAINT `FK_dc467f8c015cb71092528e88c1d` FOREIGN KEY (`century_skills_id`) REFERENCES `century_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ec02145cb9125a0258e5b307cd4` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `activities_thinking_skills`
  ADD CONSTRAINT `FK_5a34086998568f38af49858ee7b` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_758ce3f8cc68ce5d727bf1aa7ef` FOREIGN KEY (`thinking_skills_id`) REFERENCES `thinking_skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `branches`
  ADD CONSTRAINT `FK_22973db823ebe1d988a3d542598` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`),
  ADD CONSTRAINT `FK_319f0f63c7ef90bec51825bcd37` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `cashes`
  ADD CONSTRAINT `FK_bcbb317ca78697b31fe275b6e1b` FOREIGN KEY (`type_id`) REFERENCES `cash_types` (`id`);

ALTER TABLE `cashes_finances`
  ADD CONSTRAINT `FK_0f759acb130005f382d6fb28411` FOREIGN KEY (`finance_id`) REFERENCES `finances` (`id`),
  ADD CONSTRAINT `FK_92ddfb1cf09ad56cc392e688ffe` FOREIGN KEY (`cash_id`) REFERENCES `cashes` (`id`);

ALTER TABLE `departments`
  ADD CONSTRAINT `FK_7563404890a1ef1966595352f21` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

ALTER TABLE `enrolments`
  ADD CONSTRAINT `FK_11eb233073f8da2d94cad4eed85` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`),
  ADD CONSTRAINT `FK_6cf24e9e41e56c2df8013cf8122` FOREIGN KEY (`grade_group_id`) REFERENCES `grades_groups` (`id`),
  ADD CONSTRAINT `FK_8818b828078792c218cd46d692b` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `FK_cfa5c13ea91f035553b009f9265` FOREIGN KEY (`school_year_id`) REFERENCES `school_years` (`id`);

ALTER TABLE `gameplays`
  ADD CONSTRAINT `FK_77446cd3c9923062927eaacf18f` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `FK_8aef9125a8789ad4decf04465eb` FOREIGN KEY (`enrolment_id`) REFERENCES `enrolments` (`id`);

ALTER TABLE `gameplay_learning_results`
  ADD CONSTRAINT `FK_9441820a6da8c57a3e4a89f4e8c` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  ADD CONSTRAINT `FK_97069f0f34a31de25c5f47e1bd4` FOREIGN KEY (`gameplay_id`) REFERENCES `gameplays` (`id`);

ALTER TABLE `grades_groups`
  ADD CONSTRAINT `FK_76bd13c6676bc7673103a47937a` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `FK_a1e350dccd27965938f37940e81` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`);

ALTER TABLE `items`
  ADD CONSTRAINT `FK_0c4aa809ddf5b0c6ca45d8a8e80` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `items_inventories`
  ADD CONSTRAINT `FK_68a029b369f6367740a75b763f8` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `FK_fa4e1a4530c6642f3d610b758d0` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

ALTER TABLE `towns`
  ADD CONSTRAINT `FK_9622a3805504447b728dd24844d` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

ALTER TABLE `users`
  ADD CONSTRAINT `FK_23371445bd80cb3e413089551bf` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`),
  ADD CONSTRAINT `FK_8ad9356cce5c4297be3226c5136` FOREIGN KEY (`finance_id`) REFERENCES `finances` (`id`),
  ADD CONSTRAINT `FK_a2cecd1a3531c0b041e29ba46e1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FK_c3401836efedec3bec459c8f818` FOREIGN KEY (`avatar_id`) REFERENCES `avatars` (`id`),
  ADD CONSTRAINT `FK_dce0197c9fc4a3a30182fb15b91` FOREIGN KEY (`enrolment_id`) REFERENCES `enrolments` (`id`),
  ADD CONSTRAINT `FK_e5ec5b6c6b9cf5160b55b6e5d28` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
