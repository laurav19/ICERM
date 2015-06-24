function angles = angles(pol)
  
  n = length(pol);
  a = nan(n,1);
  
  pol = [pol(n,:); pol; pol(1,:)];
  
  for i = 1:n
    
    a = norm(pol(i+1,:)-pol(i,:));
    b = norm(pol(i+2,:)-pol(i+1,:));
    c = norm(pol(i+2,:)-pol(i,:));
    
    cos = (a^2 + b^2 - c^2)/(2*a*b);
    
    angles(i) = acos(cos);
    
  end
end
