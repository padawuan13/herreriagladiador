extends Button

signal abrir_opciones # Definimos la señal

func _ready():
	connect("pressed", Callable(self, "_on_boton_opciones"))

func _on_boton_opciones() -> void:
	emit_signal("abrir_opciones") # Emite la señal cuando el botón se presiona
