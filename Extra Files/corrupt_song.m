clear
close all
clc

% corrupt the song
song1 = 'christmas-song.mp3';
song2 = 'song2.mp3';

[song1,Fs1] = audioread(song1);
[song2,Fs2] = audioread(song2);

% downsample song 2
song2 = downsample(song2,2);
Fs2 = Fs2/2;

% chopping song 1 now
% need to make it this much less - 1360512
ind1 = 680256;
ind2 = 680255;
song1_cut = song1(ind1:end-ind2,:);

% add the same noise to both songs
L1 = length(song1_cut);
T1 = 1/Fs1;
t1 = (0:L1-1)*T1;
L2 = length(song2);
T2 = 1/Fs2;
t2 = (0:L2-1)*T2;

% frequency = Fs1*(0:L1/2)/L1;
% Y = fft(song1_cut(:,1));
% Y = abs(Y(1:length(Y)/2+1));
% plot(frequency,Y);

amp = 1;
noise_freq = 15000;  % hz
noise1 = amp*sin(2*pi*noise_freq*t1);
noise2 = amp*sin(2*pi*noise_freq*t2);

song1_noisy = song1_cut + repmat(noise1',1,2);
song2_noisy = 100*song2 + repmat(noise2',1,2);

% move the first half of song1 to the second half
halfway_point = length(song1_noisy)/2;
song1_switch = [song1_noisy(halfway_point+1:end,:) ; song1_noisy(1:halfway_point,:)];

% now mix up the two songs
jumbled_song = song1_switch;
jumbled_song(2:2:end-1,:) = jumbled_song(2:2:end-1,:) + song2_noisy;
