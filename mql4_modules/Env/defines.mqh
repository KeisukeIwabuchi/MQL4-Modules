//+------------------------------------------------------------------+
//|                                                      defines.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+


#ifdef IS_DEBUG
   #define __Digits          Env::get<int>("DIGITS", _Digits)
   #define __Point           Env::get<double>("POINT", _Point)
   #define __Period          Env::get<int>("PERIOD", _Period)
   #define __Symbol          Env::get<string>("SYMBOL", _Symbol)
   #define __AccountCurrency Env::get<string>("CURRENCY", AccountCurrency())
#else
   #define __Digits          _Digits
   #define __Point           _Point
   #define __Period          _Period
   #define __Symbol          _Symbol
   #define __AccountCurrency AccountCurrency()
#endif
