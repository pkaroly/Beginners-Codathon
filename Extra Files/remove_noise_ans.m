% REMOVE NOISE FUNCTION
% start your function here (call it 'remove_noise');
function out = remove_noise_ans(song,Fs,freq,amp)

% create a vector of time points that starts from 
% 1/Fs, increments by 1/Fs and ends at the total song length in seconds
% HINT song length in seconds is the number of samples in the song divided
% by the sampling rate
% HINT check the length of your vector t - is it the same length as your
% song? 
t = (1:length(song))/Fs;

% create a vector that is a sin wave
% HINT use the sin function
% HINT MATLAB works in radians not 
% Hz so don't forget to multiply your noise frequnecy by 2 * pi
noise = sin(2*pi*freq*t);

% now multiply your sin wave by the noise amplitude so it is the correct
% height!
noise = amp * noise;

% now subtract your sin vector from
% the noisy song
% HINT don't forget to subtract it from both channels!
out = song;
out(:,1) = out(:,1) - noise';
out(:,2) = out(:,2) - noise';

% end your function here
end