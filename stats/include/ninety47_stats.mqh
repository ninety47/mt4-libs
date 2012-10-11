/*
This library and source code are released under the GNU General Public
License v3. 

A copy of the license can be found in the my GitHub repository here
https://github.com/ninety47/mt4-libs/blob/master/gpl.txt

Trading is a risky business and in using this code you accept ALL 
responsibility for ensure it works as intended. Simply put I provide 
this code as-is with no warranty or guarantee that it works. I am
not liable for any losses you incur through bugs in the software
implemented in this library. 

All that said, feel free to chip me a couple of bones if you 
appreciate work I've done here and it helps you turn a profit.

----------------------------------------------------------------------

ninety47_stats is a library of functions for statistical calculations
and analysis in Metatrader 4 that areuseful in indicators, expert 
advisors or general analysis scripts.

Copyright (C) 2012  Michael O'Keeffe (a.k.a. ninety47)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/gpl.txt.

*/

//+------------------------------------------------------------------+
//|                                               ninety47_stats.mq4 |
//|                                          http://www.ninety47.com |
//|------------------------------------------------------------------|
//| Note this libarary uses DLLs so make you you enable DLL imports  |
//| in an expert advisors, scripts or indicators that use this       |
//| library.                                                         |
//+------------------------------------------------------------------+


#property copyright "Michael O\'Keeffe"
#property link      "http://www.ninety47.com"


#import "libninety47stats-0.1.dll"
   double pearsons(int n, double x[], double y[]);
   // Description:
   //    Calculates the correlation coefficient (Pearson's product-moment)
   //    for the supplied arrays x and y.
   //    For more information on the implementation see wikipedia,
   //    http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient
   // Parametres:
   //    int      n  The length of the supplied arrays.
   //    double[] x  The first series of data (correlated against y)
   //    double[] y  The 2nd series of data.
   // Returns:
   //    double   The correlation coefficient, r, for x and y. 
   //             r is in [-1,1].
   
#import

//+------------------------------------------------------------------+