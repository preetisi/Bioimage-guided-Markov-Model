workingDir = pwd;
imageNames = dir(fullfile(workingDir, 'images', '*.png'));
imageNames = {imageNames.name};
%Setup the output video
outputVideo = VideoWriter(fullfile(workingDir,"myoutput.avi"));
outputVideo.FrameRate = 4;
open(outputVideo);
for ii = 1:length(imageNames)
    img = imread(fullfile(workingDir,'images',imageNames{ii}));
    writeVideo(outputVideo,img);
end
close(outputVideo);

