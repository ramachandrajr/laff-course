L = randi( [ -2, 2 ], 4, 4 )
x = randi( [ -2, 2 ], 4, 1 )
y = zeros( 4, 1 )

if ( isequal( Trmvp_lt_unb_var1( L, x, y ), ( tril( L )' * x ) + y  ) )    
    disp( 'Trmvp_lt_unb_var1 appears to be correct' )
else
    disp( 'Trmvp_lt_unb_var1 has a problem' )
end

