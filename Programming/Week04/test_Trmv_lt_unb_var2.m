A = randi( [ -2, 2 ], 4, 4 )
x = randi( [ -2, 2 ], 4, 1 )

% in lt transpose lower triangular matrix.
if ( isequal( Trmv_lt_unb_var2( A, x ), tril( A )' * x  ) )
    disp( 'Trmv_lt_unb_var2 appears to be correct' );
else
    disp( 'Trmv_lt_unb_var2 has a problem' );
end
