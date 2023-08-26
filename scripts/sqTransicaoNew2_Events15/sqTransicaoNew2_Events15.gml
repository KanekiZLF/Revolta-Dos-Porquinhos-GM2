// Auto-generated stubs for each available event.

function sqTransicaoNew2_Moment()
{
	if global.transicao {
		global.transicao = false;
	}
	
	if (!room_exists(room_next(room))) {
		room_goto(TelaInicial);
		global.opening = true;
	} else {
		room_goto_next();
	}
}