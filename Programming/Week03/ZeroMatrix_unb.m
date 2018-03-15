% Programmed by: Ram jr
%                ramachandrajr3@gmail.com

function [ A_out ] = ZeroMatrix_unb( A )
  % Divide matrix into two parts, first part containing nothing for now.
  [ AL, AR ] = FLA_Part_1x2( A, ...
                               0, 'FLA_LEFT' );

  % Loop while size of a left part of matrix is less than size of whole
  % matrix A
  while ( size( AL, 2 ) < size( A, 2 ) )

    % put left part into A0 and one column of AR into a1 vector and then
    % put the remaining AR into A2
    [ A0, a1, A2 ]= FLA_Repart_1x2_to_1x3( AL, AR, ...
                                         1, 'FLA_RIGHT' );

    %------------------------------------------------------------%
    % Set a1 vector to zero vector of size of a1 vector.
    a1 = laff_zerov(a1);

    %------------------------------------------------------------%
    % Join the a1 vector to A0 and set AL and set AR to A2 
    [ AL, AR ] = FLA_Cont_with_1x3_to_1x2( A0, a1, A2, ...
                                           'FLA_LEFT' );

  end
  
  % Set A_out to the matrix of two matrices AL and AR
  A_out = [ AL, AR ];

return