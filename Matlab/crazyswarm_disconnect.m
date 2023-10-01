function y = crazyswarm_disconnect(tcp_obj)
    write(tcp_obj, 'EXIT');
    disp('Disconnected from Crazyswarm');
    delete(tcp_obj);
end