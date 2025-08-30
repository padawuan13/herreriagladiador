extends Control

@onready var boton_mp = $MarginContainer/MarginContainer/HBoxContainer/Mp

func _ready():
	if boton_mp:
		boton_mp.connect("volver_menu_principal", Callable(self, "_ordenar_mp"))
		
func _ordenar_mp():
	SCENEMANAGER.change_scene(SCENEMANAGER.MENU_INICIO)
