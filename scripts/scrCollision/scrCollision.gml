/// @function scrCollision()
/// @description Colisão universal. Retorna true se pousou em algo sólido.
///              Requer: velocidadeH, velocidadeV, gravidade.
///              Opcional no Create:
///                canDrop  → permite drop-through com S (player)
///                ignorePlatforms → ignora plataformas (não usar na bomba)
function scrCollision() {

    // ========================================
    // COLISÃO X
    // ========================================
    if (place_meeting(x + velocidadeH, y, objColisParede)) {
        while (!place_meeting(x + sign(velocidadeH), y, objColisParede)) {
            x += sign(velocidadeH);
        }
        velocidadeH = 0;
    }
    x += velocidadeH;


    // ========================================
    // COLISÃO Y (sólidos)
    // ========================================
    var _hitSolidY = false;

    if (place_meeting(x, y + velocidadeV, objColisParede)) {
        while (!place_meeting(x, y + sign(velocidadeV), objColisParede)) {
            y += sign(velocidadeV);
        }
        velocidadeV = 0;
        _hitSolidY = true;
    }


    // ========================================
    // PLATAFORMAS ONE-WAY
    // ========================================
    var _landedOnPlatform = false;

    var _ignorePlat = variable_instance_exists(id, "ignorePlatforms") && ignorePlatforms;

    if (!_ignorePlat && velocidadeV >= 0) {

        var _canDrop  = variable_instance_exists(id, "canDrop") && canDrop;
        var _dropping = _canDrop && keyboard_check(ord("S"));

        if (!_dropping) {

            var _footNow  = bbox_bottom;
            var _footPrev = _footNow - velocidadeV;

            var _plat = instance_place(x, y + max(velocidadeV, 1), objPlataformas);

            if (_plat
            &&  _footPrev <= _plat.bbox_top + 1
            &&  _footNow  >= _plat.bbox_top - 1) {

                var _offsetY = bbox_bottom - y;
                y = _plat.bbox_top - _offsetY;
                velocidadeV = 0;
                _landedOnPlatform = true;
            }
        }
    }


    // Aplica movimento vertical restante
    y += velocidadeV;


    // ========================================
    // GRAVIDADE
    // ========================================
    var _onGround = _landedOnPlatform || _hitSolidY || place_meeting(x, y + 1, objColisParede);

    if (!_onGround) {
        velocidadeV += gravidade;
    }


    return _landedOnPlatform || _hitSolidY;
}