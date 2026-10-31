
user(kholod, 1234).
user(ali, 5678).
user(sara, abc123).

login :-
    attempt(1).

attempt(N) :-
    write('Username: '), read(U),
    write('Password: '), read(P),
    (   user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        (   N < 3
        ->  N1 is N + 1,
            attempt(N1)
        ;   write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl
        )
    ).
