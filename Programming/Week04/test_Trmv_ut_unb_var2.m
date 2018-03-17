% var2 same as var1, no change.
% in Trmv there are only two variables A, x.
A = randi( [ -2, 2 ], 4, 4 )
x = randi( [ -2, 2 ], 4, 1 )

% in ut we use uper triangular matrix and transpose it and then multiply it
% by x.
if ( isequal( Trmv_ut_unb_var2( A, x ), triu( A )' * x  ) )
    disp( 'Trmv_un_unb_var2 appears to be correct' )
else
    disp( 'Trmv_un_unb_var2 has a problem' )
end
