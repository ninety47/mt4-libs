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
//|                                                ninety47_test.mq4 |
//|                                          http://www.ninety47.com |
//+------------------------------------------------------------------+
#property copyright "Michael O\'Keeffe"
#property link      "http://www.ninety47.com"
#property library

bool ABORT_FLAG = false;
bool TEST_FLAG = false;


/* Template:

   Print("----------------------------------------------------------------------");

   // Test code goes here
   if (ABORT_FLAG) {
      Print("    FAIL");
      return(0);
   }

   Print("----------------------------------------------------------------------");
   Print("Testing <Function Name>:");
   Print("----------------------------------------------------------------------");


*/

void assertTrue(bool predicate, string msg, bool abort=true, bool showOnPass=false) {
   if (predicate){
      if (showOnPass) Print("[PASS] " + msg);
   } else {
      Print("[FAIL] " + msg);
      if (abort) ABORT_FLAG = true;   
   }
   TEST_FLAG = predicate;
}


void assertStringArrayEqual(string& a[], string& b[], bool abort=true, bool showOnPass=false) {
   int n = ArraySize(a);
   int m = ArraySize(b);
   int index;
   bool test;
   assertTrue(n == m, "Arrays are not of equal length!", true, false);
   
   test = true;
   for (index = 0; index < n; index++) {
      test = test && (a[index] == b[index]);
      assertTrue(test, "Elements at " + index + "are not, " + a[index] + " != " + b[index], false, showOnPass);
   }
   
   if (!test && abort) {
      ABORT_FLAG = true; 
   }
   TEST_FLAG = test;
}


bool abort_flag() {
   return(ABORT_FLAG);
}


bool test_flag() {
   return(TEST_FLAG);
}