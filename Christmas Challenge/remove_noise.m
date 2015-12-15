% REMOVE NOISE FUNCTION
% start your function here (call it 'remove_noise');
function 

% create a vector of time points that starts from 
% 1/Fs, increments by 1/Fs and ends at the total song length in seconds
% HINT song length in seconds is the number of samples in the song divided
% by the sampling rate
% HINT check the length of your vector t - is it the same length as your
% song? 
t = 

% create a vector that is a sin wave
% HINT use the sin function
% HINT MATLAB works in radians not 
% Hz so don't forget to multiply your noise frequnecy by 2 * pi


% now multiply your sin wave by the noise amplitude so it is the correct
% height!



% now subtract your sin vector from
% the noisy song
% HINT don't forget to subtract it from both channels!
% HINT you might need to tranpose your sin vector if it's not the right
% shape


% end your function here
end