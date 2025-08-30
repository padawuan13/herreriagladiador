extends Button

signal volver_menu_principal # Definimos la señal

func _ready():
	connect("pressed", Callable(self, "_on_boton_mp"))
	
func _on_button_mp() -> void:
	emit_signal("volver_menu_principal")
