function td = addTd(varargin)
    prc = precision();
	class = 'center';
    switch length(varargin)
        case 1
            numeration = varargin{1};
			td = ['<td class="' class '">' numeration '</td>\n'];  
        case 2
		    digital = varargin{2};
            if ~isempty(strfind(varargin{1}, '%'))
                formatSpec = varargin{1};
                td = ['<td class="' class '">' ...
                    formatSpec '</td>\n'];  		
                td = sprintf(td, digital);
            elseif ~isempty(strfind(varargin{1}, 'class'))
                td = ['<td class="' varargin{1}(7:end) '">' ...
                    varargin{2} '</td>\n'];
            else			
                formatSpec = prc(varargin{1});
                td = ['<td class="' class '">' ...
                    formatSpec '</td>\n'];  		
                td = sprintf(td, digital);
            end
        otherwise
            error('Wrong number of input arguments')
    end
end