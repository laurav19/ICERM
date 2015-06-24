function [x,y] = polygon(type, n)
  
  switch type
    
    case'non-convex'
      
      b = rand(3,2);
      
      m0 = (b(2,2)-b(1,2))/(b(2,1)-b(1,1));
      x0 = min(b(1,1),b(2,1)) + rand()*(abs(b(1,1)-b(2,1)));
      y0 = b(1,2) - m0 * (b(1,1)- x0);
      
      m1 = (b(3,2)-y0)/(b(3,1)-x0);
      x1 = min(b(3,1),x0) + rand()*(abs(b(3,1)-x0));
      y1 = b(3,2) - m1 * (b(3,1)- x1);
      
      %x = [b(:,1) ; x1 ; b(1,1)];
      %y = [b(:,2) ; y1 ; b(1,2)];
      
      %x = [b(:,1) ; x1];
      %y = [b(:,2) ; y1];
      
      x = [b(1,1) ; x1 ; b(2:3,1)];
      y = [b(1,2) ; y1 ; b(2:3,2)];
      
    case 'self-inter'
    
      b = rand(3,2);
      
      m0 = (b(2,2)-b(1,2))/(b(2,1)-b(1,1));
      x0 = min(b(1,1),b(2,1)) + rand()*(abs(b(1,1)-b(2,1)));
      y0 = b(1,2) - m0 * (b(1,1)- x0);
      
      m1 = (b(3,2)-y0)/(b(3,1)-x0);
      x1 = x0 + sign(x0-b(3,1))*rand()*(abs(b(3,1)-x0));
      y1 = b(3,2) - m1 * (b(3,1)- x1);
      
      %x = [b(:,1) ; x1 ; b(1,1)];
      %y = [b(:,2) ; y1 ; b(1,2)];
      
      x = [b(:,1) ; x1];
      y = [b(:,2) ; y1];
      
    case 'convex'
      
      b = rand(3,2);
      
      m0 = (b(2,2)-b(1,2))/(b(2,1)-b(1,1));
      x0 = min(b(1,1),b(2,1)) + rand()*(abs(b(1,1)-b(2,1)));
      y0 = b(1,2) - m0 * (b(1,1)- x0);
      
      m1 = (b(3,2)-y0)/(b(3,1)-x0);
      x1 = x0 + sign(x0-b(3,1))*rand()*(abs(b(3,1)-x0));
      y1 = b(3,2) - m1 * (b(3,1)- x1);
      
      %x = [b(1,1) ; x1 ; b(2:3,1); b(1,1)];
      %y = [b(1,2) ; y1 ; b(2:3,2); b(1,2)];
      
      x = [b(1,1) ; x1 ; b(2:3,1)];
      y = [b(1,2) ; y1 ; b(2:3,2)];
      
    otherwise
      fprintf('Unknown type');
      
  end

end
