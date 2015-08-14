[f,p]=uigetfile( {'*.avi','AVI Video files (*.avi)';'Select an AVI format video','input\'}); 

   Frames=mmreader([p,f]);
   get(Frames);
   nFrames = Frames.NumberOfFrames;
   pickind='jpg';

for k = 1:nFrames
    % mov(k).cdata = read(Frames, k);
    a=read( Frames,k);

%%%%% SOME OPERATION
   strtemp=strcat('E:\K1frames\',int2str(k),'.',pickind);
   imwrite(a,strtemp);
end

