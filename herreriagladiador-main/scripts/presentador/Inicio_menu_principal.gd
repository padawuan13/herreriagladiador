extends Control
#Referencia grafica del boton, hace una precarga para que aparezca en caso de no figurar
@onready var boton_salir = $ContenedorUi/ContenedorPantalla/ContenedorMargen/ContenedorBotones/BotonSalir
@onready var boton_opciones = $ContenedorUi/ContenedorPantalla/ContenedorMargen/ContenedorBotones/BotonOpciones
#Cuando inicia si boton_salir existe (Lo precargamos antes y lo referenciamos)
func _ready():
	if boton_salir:
		boton_salir.connect("salir_juego", Callable(self, "_ordenar_salida")) # Conectar la señal al Presentador
	if boton_opciones:
		boton_opciones.connect("abrir_opciones", Callable(self, "_ordenar_opciones"))

func _ordenar_salida():
	get_tree().quit() # Ejecutar la salida del juego

func _ordenar_opciones():
	SCENEMANAGER.change_scene(SCENEMANAGER.MENU_OPCIONES)
