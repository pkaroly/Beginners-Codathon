%% UNJUMBLE SONG FUNCTION
% start your function here (remember you will need to call it 'unjumble_my_song')
function

% the first step is to remove the second song from the jumbled song. We
% know what the song was so we can just subtract it from the
% jumbled version
% BUT if the songs have different sampling frequencies we need to be
% careful
% If Fs2 is half of Fs1, that means there will only be one sample of song 2
% for every 2 samples of song 1 (so you only need to remove every second
% sample)
% HINT start from the 2nd sample and use indexing


% check the sound here if you like, using
% sound(song-name,Fs)

% I think I also had my tape recorder in reverse when I recorded my tune
% the second stage is to flip the song 
% HINT use the help documentation
% HINT don't forget to flip both channels!



% I can almost play my music in peace but I think I recorded the second half
% of the song first, then the first half
% the last thing you need to do is put the second half of the song to the
% front



% end your function here
end
