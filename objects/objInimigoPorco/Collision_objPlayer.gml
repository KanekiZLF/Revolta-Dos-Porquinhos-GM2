/// @description Insert description here
// You can write your code in this editor

//Empurra o inimigo
if hit && !dead && !knocking {
	knocking = true;
	alarm[2] = 0.5;
	var direcPlayer = objPlayer.direc;
		if direcPlayer = 0 || direcPlayer = 4 {
			empurrarVeloc = lerp(empurrarVeloc, 0, 0.05)
			velocidadeH = lengthdir_x(empurrarVeloc, empurrarDir);
			velocidadeV = -0.3;
			scrCollision();
		}
	
		if direcPlayer = 1 || direcPlayer = 5 {
			empurrarVeloc = lerp(empurrarVeloc, 0, 0.05)
			velocidadeH = lengthdir_x(-empurrarVeloc, -empurrarDir);
			velocidadeV = -0.3;
			scrCollision();
	}
}
