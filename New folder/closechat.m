global chattimer
if ~isempty(chattimer)
	stop(chattimer);
	delete(chattimer);
	clear global chatpath chattimer username
end
fclose('all');
fprintf( 'chat closed.\n' );