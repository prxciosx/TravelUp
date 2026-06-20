draw_self();
var _texto = texto_digitado;

// Placeholder
draw_set_color(c_black);

// Cursor piscando
if (pesquisa && (current_time div 300) mod 2 == 0){
    _texto += "|";
}

// Usa a posição da própria barra
draw_text(307, 75, _texto);
