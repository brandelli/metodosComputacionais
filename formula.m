disp("Versão com formula");

function y = fn_law(x)
  y = x^2 + 1/x - 2;
endfunction

function bisection(fn, lower_limit, upper_limit, max_iterations, error)
    abs_error = abs(lower_limit - upper_limit);
    current_iteration = 0;
    while((max_iterations > current_iteration) && (error < abs_error))
        middle_point = (lower_limit + upper_limit)/2;
        if(fn(lower_limit) * fn(middle_point) < 0)
            upper_limit = middle_point;
        else
            lower_limit = middle_point;
        endif
        abs_error = abs(lower_limit - upper_limit);
        current_iteration++;
    endwhile
    middle_point
endfunction

function call_bisection(lower_limit, upper_limit, iterations, error)
    bisection(@fn_law,lower_limit, upper_limit, iterations, error)
endfunction