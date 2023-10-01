function h = circle(x,y,r)
    d = 2*r;
    px = x - r;
    py = y - r;
    h = rectangle('Position', [px, py, d, d],'Curvature',[1, 1], ...
        'LineWidth', 3, 'EdgeColor', 'k', 'FaceColor', 'k');
    daspect([1, 1, 1]);
end

