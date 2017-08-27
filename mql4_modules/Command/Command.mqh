//+------------------------------------------------------------------+
//|                                                      Command.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, Keisuke Iwabuchi"
#property link      "https://order-button.com/"
#property strict


#ifndef _LOAD_MODULE_COMMAND
#define _LOAD_MODULE_COMMAND


#import "shell32.dll"
   int ShellExecuteW(int, string, string, string, string, int);
#import


class Command
{
   public:
      static bool cmd(const string command);
};


/**
 * Execute command with cmd.exe.
 *
 * @pram const string command  The command you want to execute.
 *
 * @return bool  Returns true if successful, otherwise false.
 */
static bool Command::cmd(const string command)
{
   return(Shell32::ShellExecuteW(0, "open", "C:\\Windows\\System32\\cmd.exe", command, "", 0) > 32);
}


#endif

