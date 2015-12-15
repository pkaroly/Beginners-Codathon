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
[song1,Fs1] = audioread('jumbled-song.mp3');
[song2,Fs2] = audioread('other-song.mp3');

% you should notice that song1 and song2 are both matrices
% the first dimension is the length of the song (number of samples)
% the second dimension is the number of channels (L & R speaker)
% that means you will need to write your code to do the left channel and
% the right channel

% Fs1 and Fs2 are the sampling frequency of the song (the number of data
% points per second). You will need this information to play the songs
% correctly

% You can listen to the songs using the sound command:
sound(jumbled-song,Fs1);

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

% it still doesn't sound great. I think there's some noise on top of it.
% Let's try and remove it..


%% challenge 2: make the song sound even better
% I know the noise is probably shaped like a sin wave at a particular
% frequency

% write a function that removes a sin wave from the song

% FIRST we need to know what frequency that pesky sine wave is at
% I can look at the frequencies in the song by following these steps:

% 1. Find the length of my song? Call it L
% HINT there is a function to caluclate the lenght of a vector
L = 

% 2. What is the period of my song? Call it T
% HINT period is the inverse of sampling frequency
% so 1 / (sampling frequency)
T = 

% now I know all the possible song frequencies because
% the highest possible frequency is half the sampling frequency
frequency = Fs1*(0:L/2)/L;

% I can look at the frequency content of the song useing a command called
% the fast fourier transform
song_frequencies = fft(clean_song);

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
% fill in the frequency where you can see the spike
noise_freq = 
% HINT you can use the cursor to click the signal and it will tell you the
% x value (frequency) at that point

% now we're going to create a function that will remove the noise at that
% frequency

% test your function
cleaner_song = remove_noise(song1,Fs1,noise_freq);


%% the end
% bonus - what is my brothers fave song?

% double bonus - sing the next line of my brothers fave song
