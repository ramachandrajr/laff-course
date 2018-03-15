function [ A_out ] = Set_to_identitiy_unb( A )

  % partition the input matrix into 4 parts.  
  % 2,3 arguments of FLA_Part_2x2, indicate row and column number to which
  % partition should be done.
  [ ATL, ATR, ...
    ABL, ABR ] = FLA_Part_2x2( A, ...  
                               0, 0, 'FLA_TL' );

  % while the size of top left is less than size of whole A matrix.
  while ( size( ATL, 1 ) < size( A, 1 ) )

    % Convert a 2x2 matrix into a set of matrices, vectors and a constant
    % FLA_BR states that values should be drawn into a01, a21 and alpha11
    % from bottom right matrix.
    [ A00,  a01,     A02,  ...
      a10t, alpha11, a12t, ...
      A20,  a21,     A22 ] = FLA_Repart_2x2_to_3x3( ATL, ATR, ...
                                                    ABL, ABR, ...
                                                    1, 1, 'FLA_BR' );

    %------------------------------------------------------------%

    % set the values of alpha and its above and below vectors.
    a01 = laff_zerov( a01 );
    alpha11 = laff_onev( alpha11 );
    a21 = laff_zerov( a21 );
    
    %------------------------------------------------------------%

    % Move set values into the matrix to leave the unchanged parts for
    % repartion in next stage
    [ ATL, ATR, ...
      ABL, ABR ] = FLA_Cont_with_3x3_to_2x2( A00,  a01,     A02,  ...
                                             a10t, alpha11, a12t, ...
                                             A20,  a21,     A22, ...
                                             'FLA_TL' );

  end

  A_out = [ ATL, ATR
            ABL, ABR ];

return
