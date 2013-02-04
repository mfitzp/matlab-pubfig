function pubfig_m(fh,matchreg,action,value)

% Find all lineseries objects
hdl = findobj(fh,'Type','line');
for i = 1:length( hdl )

    % Check if displayname contains the matchclass
    dn = get(hdl(i), 'DisplayName');
    fdn = regexp(dn,matchreg);
    % fdn = findstr( dn, matchclass );
    if fdn
        fprintf ( 1, 'Updating %s to %s %s\n', dn, action, value);
    
        if strcmp(action, 'marker')
            set(hdl(i), 'Marker',value); 
        elseif strcmp(action, 'face')
            set(hdl(i), 'MarkerFaceColor',value); 
        elseif strcmp(action, 'line')
            set(hdl(i), 'LineStyle',value); 
        elseif strcmp(action, 'visible')
            set(hdl(i), 'Visible',value); 
        end
    
    end
    
end
