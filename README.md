# E1 Implementación de Análisis Léxico (Autómata y Expresión Regular)
Por: Mateo Rodrigo Zapata Crapa (A01708573)

## Descripción
Este proyecto consiste en construir un analizador léxico que pueda determinar si una palabra es parte del lenguaje o no.
En este caso, correspondía averiguar si una palabra forma parte del lenguaje compuesto por las palabras (amil, an, anarya, anca y and), provenientes del lenguaje élfico.
Para este fin, se construyó tanto un autómata como una expresión regular que solamente admiten una palabra del lenguaje y descartan cualquier otra.

## Diseño

![Autómata drawio](https://github.com/user-attachments/assets/056788a4-7f1c-47e7-ad9b-15511e33b73b)


Expresión regular:
^a(n$|mil$|narya$|nca$|nd$)

En ambos casos, están diseñados de tal manera para que únicamente reconozcan palabras que SÍ formen parte del lenguaje, excluyendo cualquier otra.
En el caso del autómata, este tiene más de un estado final (uno para cada una de las 5 palabras que debe de reconocer).
Además, en un caso, hay un estado que puede o no ser final, ya que si el estado inicial "A" recibe 0, se sigue al estado "N" que puede ser final (formando la palabra "An") si no recibe nada o ser parte de una palabra más larga siguiendo otro estado si recibe 0, 1 o 2.
También hay varios casos donde, por las letras que tiene una palabra, más de un número puede derivar en el mismo estado. Por ejemplo, si el estado inicial "A" recibe tanto 1 como 2, se sigue al estado "M".
