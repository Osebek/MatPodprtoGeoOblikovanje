function say( varargin )
	global username
	global chatpath
	
	c = clock;
	
	[fileID, errmsg] = fopen(chatpath,'a');
	fprintf( fileID, '<%02d:%02d> %s: %s \r', c(4), c(5), username, sprintf('%s ', varargin{:}) );
	fclose(fileID);
end