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

ninety47_string is a library of string handling functions for 
Metatrader 4 that are useful in indicators, expert advisors or 
general scripts.

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
//|                                              ninety47_string.mq4 |
//|                                                 www.ninety47.com |
//+------------------------------------------------------------------+

#property copyright "Michael O\'Keeffe"
#property link      "www.ninety47.com"
#property library



void StringSplit(string str, string sep, string& result[]) {
   if (StringFind(str, sep) < 0) {
      ArrayResize(result, 1);
      result[0] = str;
   } else {
      int loc = 0;
      int newLoc = 0;
      int size = 0;

      while(newLoc > -1) {
         size = size + 1;
         newLoc = StringFind(str, sep, loc);
         
         ArrayResize(result, size);
         if (newLoc > -1) {
            if (newLoc - loc > 0) result[size-1] = StringSubstr(str, loc, newLoc - loc);            
         } else {  
            result[size-1] = StringSubstr(str, loc, 0);
         }
         loc = newLoc + 1;
      }      
   }
}


int StringArraySearch(string array[], string value) {
   int loc = -1;
   int index = 0;
   int N = ArraySize(array);
   while (index < N) {
      if (array[index] == value) {
         loc = index;
         break;
      }
      index = index + 1;
   }
   Print("Value = |" + value + "|  Found at index = " + loc);
   return(loc);
}


bool StringArrayDelete(string& array[], int loc) {
   int sz = ArraySize(array);
  
   if (loc < 0 || sz <= loc) return(false);
  
   if (loc < (sz-1)) {
      for (int index = loc+1; index < sz; index++) {
         array[index-1] = array[index]; 
      }
   }   
   ArrayResize(array, sz-1);
   return(true);
}

string ArrayToString(string array[], string sep) {
   string result = array[0];
   for (int i = 1; i < ArraySize(array); i++) {
      result = StringConcatenate(result, sep, array[i]);
   }
   return(result);
}