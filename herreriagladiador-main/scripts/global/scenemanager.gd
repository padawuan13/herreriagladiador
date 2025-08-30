extends Node

const MENU_INICIO = "res://interfazGrafica/escenas/IU/menu_inicio.tscn"
const MENU_OPCIONES = "res://interfazGrafica/escenas/IU/menu_opciones.tscn"

func change_scene(scene_path: String):
	if scene_path == "" or !ResourceLoader.exists(scene_path):
		print("Error: La escena no existe:", scene_path)
		return
	get_tree().change_scene_to_file(scene_path)

# Recargar la escena actual
func reload_scene():
	get_tree().reload_current_scene()
