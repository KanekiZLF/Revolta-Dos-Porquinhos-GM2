/// @description Insert description here
// You can write your code in this editor
randomise();

//Verifica se tem algum save dentro do jogo
if (file_exists("savedmenu.save")) && (global.configOS == 0 || global.configOS == 1) {
	scrLoadMenu();
}

//Inicia os grupos de audio
if !audio_group_is_loaded(Ambiente)
{
	audio_group_set_gain(Ambiente, .5, 0);
    audio_group_load(Ambiente);
}

if !audio_group_is_loaded(Efeitos_Sonoros)
{
	audio_group_set_gain(Efeitos_Sonoros, .5, 0);
	audio_group_load(Efeitos_Sonoros);
}

if !audio_group_is_loaded(sndMenu)
{
	audio_group_load(sndMenu);
}


//Inicia as variaveis globais
global.lifes = 3; //<-- Define a quantidade de Vidas
global.diamonds = 0; //<-- Define a quantidade de Diamantes
global.menu = true; //<-- Define se o menu ser exibido ou nao
global.canSalve = true; //<-- Não salva o jogo se volta a tela inicial
global.controls = false; //<-- Define se os controles vao aparecer ou não
global.options = false; //<-- Define a tela de Opções 
global.saves = false; //<-- Define a tela de Saves
global.transicao = false; //<-- Impede a transicao de carregar no lugar errado
global.save1 = false; //<-- Define o slot em que esta o save
global.save2 = false; //<-- Define o slot em que esta o save
global.save3 = false; //<-- Define o slot em que esta o save
global.savesLoad = false; //<-- Define que o carregamento de jogo esta habilitado
global.gameover = false; //<-- Define a tela de game over
global.amulet = 1; //<-- Define a quantidade de amuletos
global.pause = false; //<-- Pausa o jogo
global.newgame = false; //<-- Altera o cabecalho
global.gamepause = false; //<-- Habilita a tela de pause
global.audio = false; //<-- Abre as config de audio
global.creditos = false; //<-- Abre a tela de creditos
global.controles = false; //<-- Abre Menu de controles
global.notification = false; //<-- Abre a tela de notificação 
global.points = 0;
global.opening = true;
global.configOS = 0; //<-- Define em qual dispositivo o jogo esta rodando