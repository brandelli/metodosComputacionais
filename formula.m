disp("Versão com formula");

function y = fn_law(x)
  #y = x^2 + 1/x - 2; #(-2,-1, 4, 0.05)
  #y = x^2 - 3; #(1, 2, 5, 0.05)
  #y = e^x + x; #(-1, 0, 5, 0.05)
  #y = 3*x - cos(x); #(0, 1, 5,0.05)
 y = e^x + cos(x) - 3; #(0, 1, 5, 0.05) 
endfunction

function bisection(fn, lower_limit, upper_limit, max_iterations, error)
    abs_error = abs(lower_limit - upper_limit);
    current_iteration = 0;
    middle_point = (lower_limit + upper_limit)/2;
    while((max_iterations > current_iteration) && (error < abs_error))
        limite_inferior = lower_limit
        limite_superior = upper_limit 
        middle_point = (lower_limit + upper_limit)/2;
        ponto_medio = middle_point
        if(fn(lower_limit) * fn(middle_point) < 0)
            upper_limit = middle_point;
        else
            lower_limit = middle_point;
        endif
        abs_error = abs(lower_limit - upper_limit);
        current_iteration++;
        fim_iteracao = current_iteration
    endwhile
    raiz = middle_point
endfunction

function call_bisection(lower_limit, upper_limit, iterations, error)
    bisection(@fn_law,lower_limit, upper_limit, iterations, error)
endfunction