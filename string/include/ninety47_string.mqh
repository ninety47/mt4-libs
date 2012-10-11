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
//|                                              ninety47_string.mqh |
//|                                                 www.ninety47.com |
//+------------------------------------------------------------------+

#property copyright "Michael O\'Keeffe"
#property link      "www.ninety47.com"

#import "ninety47_string.ex4"
   void StringSplit(string str, string sep, string& result[]);
   // Dresciption:
   //    Splits a string into based about a delimter, sep, and stores
   //    the resulting tokens in the results array.
   //    For example to split a comma seprated string:
   //       str = "AUDUSD,USDCHF,USDJPY,USDSGD"
   //    the user would call the method with sep = ",". The and 
   //    result would be populated with each element.
   //
   // Paramters:
   //    string   str   The string delimted by 'sep' to be split into 
   //                   tokens.
   //    string   sep   The token seprator (can be any length)
   //    string[] result Reference to an array to store the result
   //                   in. Note the length result will be changed
   //                   to suite number of tokens.
   //
   // Returns:
   //    Nothing
   //
   // To do:
   //    1. optionally strip trailing and leading whitespace from tokens
   //
   
       
   int StringArraySearch(string array[], string value);
   // Description:
   //    Simple linear search of the array to find "value". The location of
   //    value is returned to the user or a value less than zero if not
   //    token was not found.
   //
   // Paramters:
   //    string[] array The array to search.
   //    string   value The element to search for.
   //
   // Return:
   //    int   the location in the array of value otherwise a value 
   //          less than zero (e.g. an illegal index).
   //
   
   bool StringArrayDelete(string& array[], int loc);
   // Description:
   //    Deletes the element at the index 'loc' form the array.
   // 
   // Paramters:
   //    string[] array The array to delete the elemnt from.
   //    int      loc   The index of the element to delete.
   //
   // Return:
   //    bool  True if the element was succesfully deleted,
   //          False otherwise.
   //
   // Notes:
   //    Known bug failes to delete the item at index 0.
   //    10/10/2012.
   
      
   string ArrayToString(string array[], string sep);
   // Descripiton:
   //    The reverse of StringSplit. Takens an array of string
   //    ans concatentates them into a 'sep' delimted string.
   // 
   // Parameters:
   //    string[] array The array to convert to a string.
   //    string   sep   The string that will delimit the tokens
   //                   once they are in a string.
   //
   // Results:
   //    string   A concatenation of the elements in array 
   //             separated by 'sep'.
   //
   
#import

