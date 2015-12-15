%% UNJUMBLE SONG FUNCTION
% start your function here (remember you will need to call it 'unjumble_my_song')
function clean_song = unjumble_my_song_ans(song1,song2,Fs1,Fs2)

% the first step is to remove the hip-hop song from the jumbled song. We
% know what the hip-hop song was so we can just subtract it from the
% jumbled version
% BUT if the songs have different sampling frequencies we need to be
% careful
% If Fs2 is half of Fs1, that means there will only be one sample of song 2
% for every 2 samples of song 1 (so you only need to remove every second
% sample)
% HINT start from the 2nd sample and use indexing

clean_song = song1;
clean_song(2:2:end-1,:) = clean_song(2:2:end-1,:) - song2;

% I think I also had my tape recorder in reverse when I recorded my tune
% the second stage is to flip the song 
% HINT use the help documentation
clean_song = [fliplr(clean_song(:,1)') ; fliplr(clean_song(:,2)')];
clean_song = clean_song';


% I can almost play my music in peace but I think I recorded the second half
% of the song first, then the first half
% the last thing you need to do is put the second half of the song to the
% front
halfway = length(clean_song)/2;
clean_song = [clean_song(halfway+1:end,:) ; clean_song(1:halfway,:)];


% end your function here
end