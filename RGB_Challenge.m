%% Challenge
% write a function that takes in three images and stacks them on top of
% each other.

% HINT: in MATLAB you can read an image so it becomes just a matrix of
% numbers. The numbers represent intensity values for each pixel.
% This is done using the 'imread' command. You can use it something like
% this:
% image_matrix = imread('picture.jpg')

% Your function should:
% - have one output which is the final matrix
% - have the following inputs
%       - input1: first image filename (.jpg)
%       - input2: second image filename (.jpg)
%       - input3: third image filename (.jpg)


% Your function should also:
% - display the final image (you can use imagesc command to display a
%   matrix as an image)
% - save the final image as a picture file (remember the print command is
%   used to save images)

% We've made some notes to help you get going!

% START YOUR FUNCTION HERE
% remember function syntax is: 
% function [output1,output2, ...] = function_name(input1,input2,...)


% first step: read the three different images as three different matrices
% matrix 1
matrix1 = 
% matrix 2
matrix2 = 
% matrix 3
matrix3 = 

% You should notice that your 3 matrices are 3-dimensional
% We are now going to take slices from them in the third dimension
% HINT: to take the slices of the third dimension your code should
% look something like this:
% slice1 = matrix1(:,:,1)
% slice2 = matrix2(:,:,2)
% etc ...

% second step: take slices of your three matrices
% take slice TWO from matrix 1
image_1 = 

% take slice ONE from matrix 2
image_2 = 

% take slice THREE from matrix 3
image_3 = 

% third step: concatenate image_1, image_2 and image_3 along the THIRD
% dimension
% HINT: you can use the cat function and specify the dimension to be 3
% HINT: don't forget to name your final matrix to be the same name as your
% function output (because this is what you want to output)


% fourth step: displaying and saving your concatenated matrix
figure;     % new figure
a = axes;   % new axis (don't worry about this bit)

% display your image here


% don't worry about this bit -
% I am just turning off your axis so that the picture looks prettier
set(a,'visible','off');


% now save the figure using the print function



% END YOUR FUNCTION HERE
% rememember EVERYTHING your function does needs to be before the 'end'
% command (so don't bother writing anything underneath this)

% now go test your function :-D
% VERY IMPORTANT: before testing DON'T FORGET to re-name this file so that
% the name is the same as the function. i.e. you need to change the name
% from RGB_Challenge.m to image_stacker.m
