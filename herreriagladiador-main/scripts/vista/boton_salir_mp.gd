extends Button

signal salir_juego # Definimos la señal

func _ready():
	connect("pressed", Callable(self, "_on_boton_salir"))

func _on_boton_salir() -> void:
	emit_signal("salir_juego") # Emite la señal cuando el botón se presiona
