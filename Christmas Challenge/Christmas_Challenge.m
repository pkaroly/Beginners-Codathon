%% MATLAB CHRISTMAS CHALLENGE
% your challenge is to write a function that 
% 1) unscrambles two songs which have been recorded over the top of each
% other
% 2) removes  extra noise from one of the songs

clear
close all
clc

% load in the songs
% you will see that in Matlab songs are just like vectors
[song1,Fs1] = audioread('jumbled_song.wav');
[song2,Fs2] = audioread('song2.wav');

% you should notice that song1 and song2 are both matrices
% the first dimension is the length of the song (number of samples)
% the second dimension is the number of channels (L & R speaker)
% that means you will need to write your code to do the left channel and
% the right channel

% Fs1 and Fs2 are the sampling frequency of the song (the number of data
% points per second). You will need this information to play the songs
% correctly

% You can listen to the songs using the sound command:
sound(song1,Fs1);

% That sounds like a pack of hyenas!

% HINT type 'clear sound' into the command window to stop a song from
% playing immediately

%% challenge 1: make the song sound good
% I was trying to record my favourite christmas song but my annoying
% brother kept playing his fave song over the top of my recording 
% write a function to help me remove the other song!

clean_song = unjumble_my_song(song1,song2,Fs1,Fs2);
% let's listen to it!
sound(clean_song,Fs1);


% I wonder what on earth the second song is?
load('song2');
sound(song2,Fs2);
% you can't tell because there's some sort of noise on top of it

%% challenge 2: remove the noise from song 2
% I know the noise is probably shaped like a sin wave at a particular
% frequency

% write a function that removes a sin wave from the song

% FIRST we need to know what frequency that pesky sine wave is at
% I can look at the frequencies in the song by following these steps:

% 1. Find the length of my song? Call it L
% HINT there is a function to caluclate the lenght of a vector
L = 

% now I know all the possible song frequencies because
% the highest possible frequency is half the sampling frequency
frequency = Fs2*(0:L/2-1)/L;

% I can look at the frequency content of the song useing a command called
% the fast fourier transform (and only look at one channel)
song_frequencies = fft(song2(:,1));

% I only need the first half of the frequency info (the second half is
% actually just a copy of the same information)
% can you help me work out the halfway point of the vector called song_frequencies?
halway_point = 
% thanks!
song_frequencies = song_frequencies(1:halfway_point);

% now I want to take the absolute value of song frequencies. Can you find a
% function that will do it for me?
song_frequencies = 

% OK we're ready to take a look at the frequency. Make a plot with
% frequency on the x-axis and song_frequencies on the y-axis
figure;

% The noise will look like a very clear spike in the signal. It is probably
% at quite a high frequency.. 
% fill in the frequency where you can see the largest spike
noise_freq = 
% HINT you can use the cursor to click the signal and it will tell you the
% x value (frequency) at that point

% now we're going to create a function that will remove the noise at that
% frequency

% test your function
% noise amplitude is the size of the noise
% i'm going to let you know that it is 5!
noise_amp = 5;
clean_song2 = remove_noise_ans(song2,Fs2,noise_freq,noise_amp);


%% the end
sound(clean_song2,Fs2);
% bonus - what is my brothers fave song?

% double bonus - sing the next line of my brothers fave song
