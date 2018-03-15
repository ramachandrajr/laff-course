% Create some vectors
x = [ 1; 2; 3 ]
y = [ 0; -1; -2 ]
z = [ 4; 3; 2; 1 ]

% test column -> column copy
disp ( 'column -> column copy' )
if ( isequal( laff_copy( x, y ), x ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

% test column -> row copy
disp( 'column -> row copy' )
if ( isequal( laff_copy( x, y' ), x' ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

% test row -> column copy
disp( 'row -> column copy' )
if ( isequal( laff_copy( x', y ), x ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

% test row -> row copy
disp( 'row -> row copy' )
if ( isequal( laff_copy( x', y' ), x' ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

% test column -> column copy (wrong size)
disp( 'column -> column copy (wrong size)' )
if ( isequal( laff_copy( x, z ), 'FAILED' ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

% test column -> row copy (wrong size)
disp( 'column -> row copy (wrong size)' )
if ( isequal( laff_copy( x, z' ), 'FAILED' ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end
%%%% MORE TESTS HERE %%%%%