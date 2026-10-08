#region DesenhaLinhaExterna

/// Desenha uma linha ao redor do texto
///
/// @param x
/// @param y
/// @param str
/// @param outwidth
/// @param outcol
/// @param outfidelity
/// @param separation
/// @param width
/// @param xscale
/// @param yscale
/// @param angle

function scrDrawOutLine(
    x,
    y,
    str,
    outwidth,
    outcol,
    outfidelity,
    separation,
    width,
    xscale,
    yscale,
    angle
)
{
    // Guarda a cor atual
    var dto_dcol = draw_get_color();

    // Define a cor do contorno
    draw_set_color(outcol);

    // Desenha o contorno em várias direções
    for (var dto_i = 45; dto_i < 405; dto_i += 360 / outfidelity)
    {
        draw_text_ext_transformed(
            x + round(lengthdir_x(outwidth, dto_i)),
            y + round(lengthdir_y(outwidth, dto_i)),
            str,
            separation,
            width,
            xscale,
            yscale,
            angle
        );
    }

    // Restaura a cor original
    draw_set_color(dto_dcol);

    // Desenha o texto original
    draw_text_ext_transformed(
        x,
        y,
        str,
        separation,
        width,
        xscale,
        yscale,
        angle
    );
}

#endregion