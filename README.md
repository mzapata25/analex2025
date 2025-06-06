# E1 Implementación de Análisis Léxico (Autómata y Expresión Regular)
Por: Mateo Rodrigo Zapata Crapa (A01708573)

## Descripción
Para este proyecto, todas las palabras usadas aquí provienen del lenguaje Quenya, uno de los varios lenguajes élficos creados por J. R. R. Tolkien (Quenya - Wikipedia, la enciclopedia libre, 2024).

El analizador léxico de este proyecto será usado con una base de un autómata finito determinístico (DFA). Este tipo de estructura se caracteriza por ir cambiando de manera automatizada según las instrucciones proporcionadas y por no tener ambigüedad, o sea, siempre que recibe una instrucción, realizará la misma acción, como desplazarse a otro estado, es la parte a la que nos referimos cuando decimos que es determinístico (Autómata finito determinista - Wikipedia, la enciclopedia libre, 2019).

Una solución con un DFA es aquí considerada como la ideal, debido a que es un grupo de palabras pequeño (tan solo 5 palabaras), además de que es un fin claro, aprobar las 5 palabras y negar cualquier otra cadena. También hay que tener en cuenta que un autómata no determinístico introduce cierto elemento de ambigüedad, innecesario aquí y que hace bastante más compleja su implementación.

Este proyecto consiste en construir un analizador léxico que pueda determinar si una palabra es parte del lenguaje o no.
En este caso, correspondía averiguar si una palabra forma parte del lenguaje compuesto por las palabras (amil, an, anarya, anca y and).
Para este fin, se construyó tanto un autómata como una expresión regular que solamente admiten una palabra del lenguaje y descartan cualquier otra.

## Diseño

![Automata_Final](https://github.com/user-attachments/assets/b7493b67-27d9-4693-b798-387e82731dda)


Expresión regular:
^a(n$|mil$|narya$|nca$|nd$)

En ambos casos, están diseñados de tal manera para que únicamente reconozcan palabras que SÍ formen parte del lenguaje, excluyendo cualquier otra.
En el caso del autómata, este tiene dos estados finales, ya que el autómata sigue diferentes "caminos" que representan cada una de las palabras, hasta llegar al estado final "Z", pero hay un caso especial: la palabra "An" es una de las 5 que el autómata debe de dar por buena, pero con las letras "An" también comienzan otras, como "Anarya", "Anca" y "And", así que hay un segundo estado final, el "C". Este estado final se activa después de recibir las letras "An", pero, al contrario que "Z", este sí tiene continuación, permitiendo al mismo tiempo evaluar si es la palabra "An" o si es una de las que comienzan por esas dos letras.


