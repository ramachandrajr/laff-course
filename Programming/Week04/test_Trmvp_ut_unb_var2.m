U = randi( [ -2, 2 ], 4, 4 )
x = randi( [ -2, 2 ], 4, 1 )
y = zeros( 4, 1 )

if ( isequal( Trmvp_ut_unb_var2( U, x, y ), ( triu( U )' * x ) + y  ) )    
    disp( 'Trmvp_ut_unb_var2 appears to be correct' )
else
    disp( 'Trmvp_ut_unb_var2 has a problem' )
end

