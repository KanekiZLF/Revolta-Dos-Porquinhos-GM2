/// @function scrFloat(_x, _y, _texto, _escalaX = 1, _escalaY = 1, _velocidade = 0.5, _vida = 60, _cor = c_white, _outline = c_black, _outlineW = 1, _outFidelity = 8, _fonte = fnTextos)
/// @description Cria um texto flutuante no mundo que sobe e some.
/// @param {Real}   _x            Posição X no mundo
/// @param {Real}   _y            Posição Y no mundo
/// @param {String} _texto        Texto a exibir
/// @param {Real}   _escalaX      Escala horizontal
/// @param {Real}   _escalaY      Escala vertical
/// @param {Real}   _velocidade   Pixels por frame que sobe
/// @param {Real}   _vida         Frames até sumir
/// @param {Colour} _cor          Cor do texto
/// @param {Colour} _outline      Cor do contorno
/// @param {Real}   _outlineW     Espessura do contorno
/// @param {Real}   _outFidelity  Nº de cópias do contorno (maior = mais suave e mais caro)
/// @param {Font}   _fonte        Fonte do texto

function scrFloat(_x, _y, _texto, _escalaX = 1, _escalaY = 1, _velocidade = 0.5, _vida = 60, _cor = c_white, _outline = c_black, _outlineW = 1, _outFidelity = 8, _fonte = fnTextosSmall) {

    var _inst = instance_create_depth(_x, _y, -9999, objFloatText);

    _inst.texto       = _texto;
    _inst.escalaX     = _escalaX;
    _inst.escalaY     = _escalaY;
    _inst.velocidade  = _velocidade;
    _inst.vidaTotal   = _vida;
    _inst.cor         = _cor;
    _inst.outline     = _outline;
    _inst.outlineW    = _outlineW;
    _inst.outFidelity = _outFidelity;
    _inst.fonte       = _fonte;

    return _inst;
}