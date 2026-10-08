/// @description Desenha o texto com contorno (scrDrawOutLine)
draw_set_font(fonte);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(alpha);
draw_set_color(cor);

scrDrawOutLine(
    x,
    y,
    texto,
    outlineW,       // outwidth
    outline,        // outcol
    outFidelity,    // outfidelity
    separation,     // separation
    largura,        // width
    escalaX,        // xscale
    escalaY,        // yscale
    0               // angle
);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);