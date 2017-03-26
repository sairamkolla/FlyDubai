function passengerList = loadPassengerList()
%GETPASSENGERLIST reads the fixed passenger list in passenger.txt and returns a
%cell array of the words
%   passengerList = GETPASSENGERLIST() reads the fixed passenger list in passenger.txt 
%   and returns a cell array of the words in passengerList.


%% Read the fixed passengerulary list
fid = fopen('passenger_ids.txt');

% Store all passengers in cell array passenger{}
n = 1682;  % Total number of passengers 

passengerList = cell(n, 1);
for i = 1:n
    % Read line
    line = fgets(fid);
    % Word Index (can ignore since it will be = i)
    [idx, passengerName] = strtok(line, ' ');
    % Actual Word
    passengerList{i} = strtrim(passengerName);
end
fclose(fid);

end
