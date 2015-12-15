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
t1 = (1:L1)*T1;
L2 = length(song2);
T2 = 1/Fs2;
t2 = (1:L2)*T2;

% frequency = Fs1*(0:L1/2)/L1;
% Y = fft(song1_cut(:,1));
% Y = abs(Y(1:length(Y)/2+1));
% plot(frequency,Y);

amp = 5;
noise_freq = 8000;  % hz
noise2 = amp*sin(2*pi*noise_freq*t2);
song2_noisy = song2 + repmat(noise2',1,2);

% move the first half of song1 to the second half
halfway_point = length(song1_cut)/2;
song1_switch = [song1_cut(halfway_point+1:end,:) ; song1_cut(1:halfway_point,:)];

% reverse the song
song1_flip = [fliplr(song1_switch(:,1)') ; fliplr(song1_switch(:,2)') ];
song1_flip = song1_flip';

% now mix up the two songs
jumbled_song = song1_flip;
jumbled_song(2:2:end-1,:) = jumbled_song(2:2:end-1,:) + song2_noisy;

audiowrite('jumbled_song.wav',jumbled_song,Fs1);
audiowrite('song2.wav',song2_noisy,Fs2);
song2 = song2_noisy;
save('song2','song2','Fs2');
