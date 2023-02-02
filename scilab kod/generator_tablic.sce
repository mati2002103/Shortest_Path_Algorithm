// Zestaw funkcji pomocniczych do tworzenia zmiennych, 
// tablic jednowymiarowych (wektorów) oraz macierzy
// złożonych z losowych liczb całkowitych nieujemnych

// T - losowa tablica 1-wymiarowa liczb całkowitych z przedziału [0, N-1]
// (nieuporządkowana)

function T = tabLos(N)
    T = floor(N*rand(1,N))
endfunction

// T - losowa tablica jednowymiarowa liczb całkowitych z przedziału [0, N-1]
// posortowana niemalejąco

function T = tabSort(N)
    T = gsort(tabLos(N),'g','i')
endfunction

// mac - losowa macierz o wymiarze NxM 
// liczb całkowitych o wartościach z przedziału [0, N-1]

function mac = macLos(N,M)
    mac = floor(N*rand(N,M))
endfunction

// losowa liczba całkowita z przedziału [0, N-1]

function X = los(N)
    X = floor(N*rand())
endfunction
