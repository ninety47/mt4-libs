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
//|                                                  test_string.mq4 |
//|                                          http://www.ninety47.com |
//+------------------------------------------------------------------+
#property copyright "Michael O\'Keeffe"
#property link      "http://www.ninety47.com"

#include <ninety47_string.mqh>
#include <ninety47_test.mqh>

extern bool verbose = false;

int start()   {
   string sep = ",";
   string str = "AUDUSD,EURUSD,USDCHF";
   string result[3];
   string resultString;
   bool test = false;
   int index, location;
 
   // Expected test data
   string expected[3] = {"AUDUSD", "EURUSD", "USDCHF"};
   string expectedString = "AUDUSD,EURUSD,USDCHF";
   string deleteFrom[3];
   string deleteExpected[2];
   int expectedN = 3;
   
   // Testing split string.
   Print("----------------------------------------------------------------------");
   StringSplit(str, sep, result);      
   assertTrue(ArraySize(result) == expectedN, "Expected 3 elements but got " + ArraySize(result), true, verbose);   
   test = true;   
   for (index = 0; index < expectedN; index++) {
      test = test && (result[index] == expected[index]);      
      assertTrue(test, "Expected |" + expected[index] + "| but got |" + result[index] + "|", false, verbose);
   
   }
   //assertTrue(test, "StringSplit status", true, verbose);
   if (test_flag()) {
      Print("    PASS");
   } else {
      Print("    FAIL");
      if (abort_flag()) return(0);
   }
   Print("----------------------------------------------------------------------");
   Print("Testing StringSplit:");
   Print("----------------------------------------------------------------------");

   
   Print("----------------------------------------------------------------------");   
   test = true;
   for (index = 0; index < expectedN; index++) {   
      location = StringArraySearch(expected, expected[index]);
      test = test && (location == index);
      assertTrue(test, "Expected result to be " + index + " but got index:" + location , false, verbose);
   }
   assertTrue(test, "StringArraySearch status", true, verbose);   

   if (test_flag()) {
      Print("    PASS");
   } else {
      Print("    FAIL");
      if (abort_flag()) return(0);
   }
   Print("----------------------------------------------------------------------");
   Print("Testing StringArraySearch:");
   Print("----------------------------------------------------------------------");

   
   
   Print("----------------------------------------------------------------------");
   location = 0;
   ArrayResize(deleteFrom, expectedN);
   ArrayCopy(deleteFrom, expected);
   deleteExpected[0] = expected[1];
   deleteExpected[1] = expected[2];
   test = StringArrayDelete(deleteFrom, location);
   if (!test) assertTrue(test, "Could not delete value as expected!", true, verbose);
   else assertStringArrayEqual(deleteFrom, deleteExpected, true, verbose);

   location = 1;
   ArrayResize(deleteFrom, expectedN);
   ArrayCopy(deleteFrom, expected);      
   deleteExpected[0] = expected[0];
   deleteExpected[1] = expected[2];
   test = StringArrayDelete(deleteFrom, location);
   if (!test) assertTrue(test, "Could not delete value as expected!", true, verbose);
   else assertStringArrayEqual(deleteFrom, deleteFrom, true, verbose);   

   location = 2;
   ArrayResize(deleteFrom, expectedN);
   ArrayCopy(deleteFrom, expected);      
   deleteExpected[0] = expected[0];
   deleteExpected[1] = expected[1];
   test = StringArrayDelete(deleteFrom, location);
   if (!test) assertTrue(test, "Could not delete value as expected!", true, verbose);
   else assertStringArrayEqual(deleteFrom, deleteFrom, true, verbose);   
   
   if (test_flag()) {
      Print("    PASS");
   } else {
      Print("    FAIL");
      if (abort_flag()) return(0);
   }
   Print("----------------------------------------------------------------------");
   Print("Testing StringArrayDelete:");
   Print("----------------------------------------------------------------------");
   
   Print("----------------------------------------------------------------------");
   resultString = ArrayToString(expected, ",");
   assertTrue(resultString == expectedString, "Expected " + expectedString + " but got " + resultString + ".", true, verbose);

   if (test_flag()) {
      Print("    PASS");
   } else {
      Print("    FAIL");
      if (abort_flag()) return(0);
   }
   Print("----------------------------------------------------------------------");
   Print("Testing ArrayToString:");
   Print("----------------------------------------------------------------------");

   return(0);
}

