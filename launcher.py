import os
from cursesmenu import *
from cursesmenu.items import *
menu = CursesMenu("Launcher")
menu_item =MenuItem("Main Menu")
command_item =CommandItem("run buildlinux","bash buildlinux")
command_item2=CommandItem("install tools","bash install_dependices")
menu.append_item(menu_item)
menu.append_item(command_item)
menu.append_item(command_item2)
menu.show()