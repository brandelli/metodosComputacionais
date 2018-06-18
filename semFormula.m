disp("Versão sem formula");

function y = fn_bisection(x)
  y = x^2 + 1/x - 2;
endfunction

function bisection(l_point, u_point, m_iterations, error)
    fn = @fn_bisection;
    abs_error = abs(l_point - u_point);
    c_iteration = 0;
    m_point = m_point = (l_point + u_point)/2;
    while((m_iterations > c_iteration) && (error < abs_error))
        c_iteration++;
        m_point = (l_point + u_point)/2;
        fn_m_point = fn(m_point)
        fn_u_point = fn(u_point);
        if((fn_u_point > 0 && fn_m_point > 0) || (fn_u_point < 0 && fn_m_point < 0) )
            u_point = m_point;
        else
            l_point = m_point;
        endif
        abs_error = abs(l_point - u_point);
        d_l_point = l_point
        d_u_point = u_point
    endwhile
    m_point
endfunction
