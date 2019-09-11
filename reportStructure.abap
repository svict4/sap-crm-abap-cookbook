REPORT Z_REPORT_PROGRAM_1.

*--------------------------------------------------------------------*
*   Data declarations
*--------------------------------------------------------------------*

*--------------------------------------------------------------------*
*   LOAD-OF-PROGRAM
*     This is essentially the program's constructor.
*--------------------------------------------------------------------*
LOAD-OF-PROGRAM.

*--------------------------------------------------------------------*
*   Initialisation
*     The initialisation of the program, directly after LOAD-OF...
*--------------------------------------------------------------------*
INITIALIZATION.

*--------------------------------------------------------------------*
*   AT SELECTION-SCREEN
*    Defines event blocks for different events triggered at runtime
*     during selecting screen processing.
*--------------------------------------------------------------------*
AT SELECTION-SCREEN.

*--------------------------------------------------------------------*
*   START-OF-SELECTION
*     Standard processing block of the program. Triggerred by running
*      the program after any standard screens have been processed.
*--------------------------------------------------------------------*
START-OF-SELECTION.

*--------------------------------------------------------------------*
*   END-OF-SELECTION
*     Triggerred directly after START-OF... UNLESS the program is
*      associated with a logical databse in which case triggered after
*      database has completed work.
*--------------------------------------------------------------------*
END-OF-SELECTION.
