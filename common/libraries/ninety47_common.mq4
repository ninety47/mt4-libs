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

ninety47_common is a library of functions for Metatrader 4 that are
useful in indicators, expert advisors or general scripts.

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
//|                                              ninety47_common.mq4 |
//|                                          http://www.ninety47.com |
//|------------------------------------------------------------------|
//| Note this libarary uses DLLs so make you you enable DLL imports  |
//| in an expert advisors, scripts or indicators that use this       |
//| library.                                                         |
//+------------------------------------------------------------------+

#property copyright "Michael O\'Keeffe"
#property link      "http://www.ninety47.com"
#property library

#import "user32.dll"
   int GetClientRect(int hWnd, int rect[4]);
#import

double getPrice(string symbol, int mode, int tf, int shift) {
   double price;
   switch (mode) {
   case PRICE_OPEN:
      price = iOpen(symbol, tf, shift);
      break;
   case PRICE_LOW:
      price = iLow(symbol, tf, shift);
      break;
   case PRICE_HIGH:
      price = iHigh(symbol, tf, shift);
      break;
   case PRICE_MEDIAN:
      price = (iHigh(symbol, tf, shift) + iLow(symbol, tf, shift))/2.0;
      break;
   case PRICE_TYPICAL:
      price = (iHigh(symbol, tf, shift) + iLow(symbol, tf, shift) + iClose(symbol, tf, shift))/3.0;
      break;
   case PRICE_WEIGHTED:
      price = (iHigh(symbol, tf, shift) + iLow(symbol, tf, shift) + 2.0 * iClose(symbol, tf, shift))/3.0;
      break;
   case PRICE_CLOSE:
   default:
      price = iClose(symbol, tf, shift);
      break;
   }
   return(price);
}




void getScreenDimensions(string symbol, int period, int& dims[]) {
   int hWnd = WindowHandle(symbol, period);
   int res[4];
   int dummy = GetClientRect(hWnd, res);
   dims[0] = res[2];
   dims[1] = res[3];   
}