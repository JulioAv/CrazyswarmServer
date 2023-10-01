function y=crazyswarm_test(tcp_obj)
    s.cmd = 190;
    write(tcp_obj, uint8(jsonencode(s)));
    try
        y=jsondecode(char(read(tcp_obj)));
    catch
        disp("Try again...");
    end
end

