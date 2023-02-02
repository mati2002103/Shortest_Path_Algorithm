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


//while (t > 1 || s > 1) then
//if (tc(t,s) - tab_cost(t,s) == tc(t,s-1)) then

//s = s-1;

//elseif (tc(t,s) - tab_cost(t,s) == tc(t-1,s)) then

//t= t-1

//end
//end

endfunction

function mac = macLos(N,M)
    mac = floor(N*rand(N,M))
endfunction
x = 10;//definiujemy wielkość tablicy x =wiersze y=kolumny 
y = 4;
a = macLos(x,y);
Znajdz_trase(a,x,y)


// Rysowanie wykresów

// tworzenie wektorów "liczba" i "czas"
for k=1:10 do
    N=100*k
    M=100*k
    c=macLos(N,M)         // N - liczba elementów tablicy
    liczba(k)=N*M     // liczba - wektor liczb elementów tablicy
    tic()
    Znajdz_trase(c,N,M)
    czas(k)=toc()   // czas - wektor czasów realizacji algorytmu
end

// wykres zależności czas(liczba)
plot2d(liczba,czas,-3)  
xlabel('N*M - liczba elementów tablicy')
ylabel('Czas realizacji algorytmu (w sekundach)')





