function [ alpha ] = laff_norm2( x )

% Dot product of two vectors

% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );

% x is an nx1 array (column vector) or a 1xn array (row vector).
if ( m_x ~= 1 && n_x ~= 1 )
    alpha = 'FAILED';
    return
end
% if x is not a vector the output should be 'FAILED'.
if ( ~isvector( x ) )
alpha = 'FAILED';
    return
end
    

alpha = zeros();

if ( n_x == 1 )     % x is a column vector
    for i=1:m_x   
        alpha = alpha + ( x( i,1 ) * x( i,1 ) );
    end
else                % x is a row vector    
    for i=1:n_x   
        alpha = alpha + ( x( 1,i ) * x( 1,i ) );  
    end
end

alpha = sqrt(alpha);


return
end
