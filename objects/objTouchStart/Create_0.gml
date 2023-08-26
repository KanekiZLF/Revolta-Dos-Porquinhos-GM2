/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
switch (os_type) {
	case os_windows:
		global.configOS = 0;
	break;
	
	case os_android:
		global.configOS = 1;
	break;
	
	case os_operagx:
		global.configOS = 2;
	break;
}



text = "Toque Para Iniciar !"
centerX = x;
scale = .2;
alpha = 1;
defAlpha = 1;
playSound = false;