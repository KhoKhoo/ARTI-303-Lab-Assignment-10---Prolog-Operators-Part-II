
square_area(Side, Area) :- Area is Side * Side.
square_perimeter(Side, Perimeter) :- Perimeter is 4 * Side.

rectangle_area(Width, Height, Area) :- Area is Width * Height.
rectangle_perimeter(Width, Height, Perimeter) :- Perimeter is 2 * (Width + Height).


triangle_area(Base, Height, Area) :- Area is 0.5 * Base * Height.
triangle_perimeter(A, B, C, Perimeter) :- Perimeter is A + B + C.


square(Side) :-
    square_area(Side, Area),
    square_perimeter(Side, Perimeter),
    write('Square - Area = '), write(Area),
    write(', Perimeter = '), write(Perimeter), nl.

rectangle(Width, Height) :-
    rectangle_area(Width, Height, Area),
    rectangle_perimeter(Width, Height, Perimeter),
    write('Rectangle - Area = '), write(Area),
    write(', Perimeter = '), write(Perimeter), nl.

triangle(Base, Height, A, B, C) :-
    triangle_area(Base, Height, Area),
    triangle_perimeter(A, B, C, Perimeter),
    write('Triangle - Area = '), write(Area),
    write(', Perimeter = '), write(Perimeter), nl.

% Test:
%   ?- square(4).              Area = 16, Perimeter = 16
%   ?- rectangle(3, 5).        Area = 15, Perimeter = 16
%   ?- triangle(6, 4, 5, 5, 6). Area = 12.0, Perimeter = 16
