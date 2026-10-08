/// @description Sobe, faz fade-out e se destrói
timer++;
y -= velocidade;

if (timer > vidaTotal * 0.5) {
    alpha -= 1 / (vidaTotal * 0.5);
    if (alpha < 0) alpha = 0;
}

if (timer >= vidaTotal) {
    instance_destroy();
}