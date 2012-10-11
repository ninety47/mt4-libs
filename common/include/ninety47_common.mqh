/*
This library and source code are released under the GNU General Public
License v3. 

A copy of the license can be found in the my GitHub repository here
https://github.com/ninety47/mt4_indies/blob/master/license.txt

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
along with this program.  If not, see <http://www.gnu.org/licenses/>.

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

#import "ninety47_common.ex4"
   //--------------------------------------------------------------------------
   // Price related functions   
   //--------------------------------------------------------------------------
   double getPrice(string symbol, int mode, int tf, int shift);
   // Description:
   //    Returns the price for the supplied symbol on the give time frame at time 'shift'.
   //
   // Params:
   //    string   symbol   The symbols e.g. Symbol() or "EURUSD".
   //    int      mode     The type of price to return must be a valid Price constant. See MQL4 Reference for PRICE_CLOSE etc.
   //    int      tf       The time frame of interest must be a valid time frame constant. See MQL4 Reference for PERIOD_D1 etc. 
   //    int      shift    How many bars back do you want the price.
   //
   // Returns:
   //    double   The select price value.
   //
   
   //--------------------------------------------------------------------------
   // Graphical User Interface functions
   //-------------------------------------------------------------------------- 
   void getScreenDimensions(string symbol, int period, int& dims[]);
   // Description:
   //    Returns the dimensions of chart for window for symbol at period e.g. AUDUSD, H1.
   //    Note: need to verify what happens if we have 2 AUDUSD H1 windows open.
   //
   // Params:
   //    string   symbol   The symbol for the window/chart you want the dimensions of.
   //    int      period   See MQL4 Reference for PERIOD_D1 etc.
   //    int[]    dims     Results are stored in here [widht, height].
   //
   // Returns:
   //    Nothing directly. Result returned by reference through 'dims'.
   //
    
#import

