move(y,a,a).
move(a,b,m).
move(b,d,i).
move(d,z,l).
move(a,c,n).
move(c,e,a).
move(e,f,r).
move(f,g,y).
move(g,z,a).
move(c,z,d).
move(c,h,c).
move(h,z,a).

estado_final(z).
estado_final(c).

revisa_automata(Lista) :-
    % Uso de función que revisa la lista, el estado inicial es y
    automata(Lista, y).

% Caso base. La lista está vacía, se compara si el estado actual es uno de los finales.
automata([], EstadoActual) :-
    estado_final(EstadoActual).

% Con una lista no vacía
automata([Letra | Resto], EstadoActual) :-
    % Comprobación de que el estado actual si tiene conexión con la letra correspondiente
    move(EstadoActual, Siguiente, Letra),
    % Cuando si estan conectadas
    automata(Resto, Siguiente).
