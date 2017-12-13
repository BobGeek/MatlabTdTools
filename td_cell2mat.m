function out_data = td_cell2mat(data)
out_data.title = data(1,:);
out_data.matdata = cellfun(@(x)str2num(char(x)),data(2:end,:));

