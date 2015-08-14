input_v = VideoReader('C:\Users\Hersh\Documents\712\project\timelapse_yeast.mp4');
nFrames = 30;
h_video = input_v.Height;
vidWidth = input_v.Width;
arrayFrame = zeros(30,'uint8');
mov(1:nFrames) = struct('cdata', zeros(h_video, vidWidth, 3, 'uint8'),...
'colormap', []);
for k = 1 : nFrames
mov(k).cdata = read(input_v, k);
end
for k = 1: nFrames
imwrite(mov(k).cdata,['C:\Users\Hersh\Documents\712\project',num2str(k),'.jpg']);
end

