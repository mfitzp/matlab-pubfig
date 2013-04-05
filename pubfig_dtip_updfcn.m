function output_txt = pubfig_dtip_updfcn(hDatatip, event_obj)
% Test alternate datatip text
% obj Currently not used (empty)
% event_obj Handle to event object
%
% output_txt Datatip text (string or string cell array)
%

    output_txt = get(hDatatip,'String');
end