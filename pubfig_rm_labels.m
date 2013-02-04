function pubfig_rm_labels(fh)

% Find all lineseries objects
hdl = findobj(fh,'Type','text');
for i = 1:length( hdl )
    set(hdl(i),'Visible','off')    
end
