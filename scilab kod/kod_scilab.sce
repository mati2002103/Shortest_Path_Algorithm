function mniejszawartosc = mniejsza(x, y)
  if x < y then
    mniejszawartosc = x;
  else
    mniejszawartosc = y;
  end
endfunction

function wynik = Znajdz_trase(tab_cost,x,y)
//punkt startowy tablicy kosztów  
 
 tc(1,1) = tab_cost(1,1)
 for i=2:x
     tc(i,1) = tc(i-1,1) + tab_cost(i,1); //kolumna kosztów
 end
  for i=2:y
     tc(1,i) = tc(1,i-1) + tab_cost(1,i); //wiersze kosztów
 end
 for i=2:x
     for j=2:y
         tc(i,j) = mniejsza(tc(i-1,j),tc(i,j-1))+tab_cost(i,j)
     end
end

t =x;
s =y;


while (t > 1 || s > 1) then
if (tc(t,s) - tab_cost(t,s) == tc(t,s-1)) then
disp("lewo")
s = s-1;

elseif (tc(t,s) - tab_cost(t,s) == tc(t-1,s)) then
disp("góra")
t= t-1

end
end

    
 disp("asd")
 disp(tc())
 disp("Koszt dostania się z lewego górnego rogu tabeli do prawego dolnego: ",tc(x,y))
endfunction

function mac = macLos(N,M)
    mac = floor(N*rand(N,M))
endfunction
x = 10;//definiujemy wielkość tablicy x =wiersze y=kolumny 
y = 4;
a = macLos(x,y);
disp(a);
Znajdz_trase(a,x,y)




