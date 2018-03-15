function [ B_out ] = Scale_matrix_unb( alpha, B )

  [ BL, BR ] = FLA_Part_1x2( B, ...
                               0, 'FLA_LEFT' );

  while ( size( BL, 2 ) < size( B, 2 ) )

    [ B0, b1, B2 ]= FLA_Repart_1x2_to_1x3( BL, BR, ...
                                         1, 'FLA_RIGHT' );

    %------------------------------------------------------------%

    b1 = laff_scal( alpha, b1 );
    
    %------------------------------------------------------------%

    [ BL, BR ] = FLA_Cont_with_1x3_to_1x2( B0, b1, B2, ...
                                           'FLA_LEFT' );

  end

  B_out = [ BL, BR ];

return
