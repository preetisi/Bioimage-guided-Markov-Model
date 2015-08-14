A = imread('image.jpg'); % read image

I = rgb2gray(A); % convert color image to gray-scale

B = edge(I,'canney’); % edge detection

B2 = imdilate(B,0.3); % dilate the image

B3 = imfill(B2,'holes'); % fill interior gaps

 B4 = bwlabel(B3); % labeling

L = bwperim(B4); % draw outlines around cells

vislabels(L) % call function VisLabel(L) and write labels
