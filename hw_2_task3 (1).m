figure; 
hold('on');
axis tight manual
axis('square');
video = VideoWriter('roots_of_unity.avi');
open(video)
for i = 1 : 1000           %generation of 1000 points
    x = rand;
    y = rand;
    if x^2 + y^2 <= 1      %dots inside the circle
      scatter(x, y, 'r');
      drawnow;
      writeVideo(video, getframe(gcf));
    else                  %dots outside the circle
      scatter(x, y, 'b');
      drawnow;
      writeVideo(video, getframe(gcf));
    end

end
hold('off');
close(video);