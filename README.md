#Welcome
This is my set of open source MetaTrader 4 libraries (almost all) released under the GNU GPL v3 license and 
appropriately referenced libraries compiled other open source code found in forums and other websites. A copy of the is available in the [root](https://github.com/ninety47/mt4-libs/blob/master/gpl.txt) of the repository or from 
[GNU website](http://www.gnu.org/licenses/gpl.txt).

#What is MetaTrader 4 (MT4)
MetaTrader 4 is a retail trading platform commonly used by retail traders to trade Foreign Exchange (FX) and Contracts
For Difference (CFDs). You can learn more about MetaTrader from the the MetaQuotes 
[website](http://www.metaquotes.net/).

#Why build libraries?
The MetaQuoates Language 4 (MQL4) language for MetaTrader 4 (MT4) is limited in many ways. When compared to modern
programming languages MQL4 lacks basic language features that many you may take for granted e.g. C/C++ structs. It also
suffers poor performance when asked to perform computationally intensive tasks such as statistical calculations. The
libraries available here help address some of the short comings of the core library and are aiming to provide a work
around for some of the language limitations.

#Who should use these libraries?
Anyone who wants to write a script, indicator, or expert advisor for MetaTrader 4. Naturally you will at least need to
know MQL4, how to install the libraries and indicators into your MT4 platform. I will be add the C++ code for some of the available functions but will make sure a DLL is available for download if you don't know C++ or how to build the DLL files.

#The libraries
As of 15/10/2012 there are four libraries here:
* **ninety47_stats**: is a simple library for statistical calculations - at the time of writing it currently house only 1 function to calculate the correlation.
* **ninety47_common**: holds a set of functions that I would commonly use in indicators, scripts and experts.
* **ninety47_string**: a set of helpful string manipulation functions.
* **ninety47_test**: a set of functions to help write scripts for testing (almost unit tests).

In the future I will be adding a library of trade functions.

#References
Here are some useful links:
* [Forex Factory](http://wwwforexfactory.com): Is a great source of trading ideas, MT4 help and general trader talk.
* [Steve Hopwood's FX forum](http://www.stevehopwoodforex.com/): Has lots of information and a supportive community for anyone wanting to build an indicators, experts etc.
* [Visual Studio Express Edition](http://www.microsoft.com/visualstudio/eng/products/visual-studio-express-products): Visual Studio (even though its Microsoft product) is a great IDE and hey its the easiest way to build DLLs.
* I'd put www.ninety47.com here buts its not even under construction yet :)

#Feedback
If you like this code let me know by following me here and on twitter [@ninety47](https://twitter.com/ninety47).

