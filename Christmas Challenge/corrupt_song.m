% corrupt the song
function out = corrupt_song(song,Fs);

load(song)

% add noise
L = length(y);
T = 1/Fs;
t = (0:L-1)*T;
amp = 0.5;
noise_freq = 4000;  % hz

noise = amp*sin(2*pi*noise_freq*t);

out = y + noise';