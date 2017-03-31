function chat()
	
	global chattimer
	if ~isempty(chattimer)
		error( 'Please stop running chattimer with ''closechat'' before running chat!' );
	end
	global username
	global chatpath
	
	folder			= fileparts( which(mfilename) );
	chatpath		= [ folder, filesep, date, '.log' ];
	username		= getenv('username');
	fprintf(' --- %s, Welcome to MATLAB Chat v0.1 ---\n', username );
	
	chattimer = timer( 'TimerFcn', @(~,~) reload_chat(), 'Period', 10, 'ExecutionMode', 'FixedSpacing' );
	t				= true;
	l				= 0;
	start(chattimer);
	
	function reload_chat()
		[fileID, errmsg] = fopen(chatpath,'r');
		if fileID == -1
			if t
				fprintf( 'no messages today\n' );
				t = false;
			end
			dataArray = '';
		else
			dataArray = fread(fileID, '*char' );
			fclose(fileID);
		end
		if length( dataArray ) > l
			fprintf( dataArray(l+1:end) );
			l = length( dataArray );
		end
	end
	
end