;--------------------------------------------
;          MIPS ASSEMBLY EXAMPLES
;          (C) HARRY CLARK 2023
;--------------------------------------------

;--------------------------------------------
;    MIPS IS A SUB-SECTION OF THE ASSEMBLY
;    LANGUAGE USED IN THE PS1 AND N64
;
;    THE FOLLOWING SECTIONS IN THIS FILE
;    SERVE TO PROVIDE EXAMPLES OF FUNCTIONS
;    AS PER OUR LECTURE CONTENT
;--------------------------------------------

;--------------------------------------------
;   THE FOLLOWING SECTION PERTAINS TOWARDS
;   PRINTING HELLO WORLD IN MIPS IN IT'S
;   MOST SIMPLIEST FORM
;
;   THE FOLLOWING PARAMS GO AS FOLLOWS:
;
;   .data - THIS DIRECTIVE IS USED FOR 
;   CREATING VARIBALES WITH AN EXPLICIT TYPE
;
;   TYPES INCLUDE: BYTE, WORD, SPACE
;
;   BYTE - ALLOCATE 8 BITS INTO A VARIABLE
;   WORD - ALLOCATE 32 BITS INTO A VARIABLE
;   SPACE - RESERVE SPECIFIED SPACE 
;   INTO A FUNCTION 
;   (USED FOR CONSTANT DECLARATIONS)
;
;--------------------------------------------

HELLO_WORLD:

.data                   ;; USE THE DATA DIRECTIVE TO DECLARE VARIABLES
HELLO_STRING:           .ascii "Hello, World!\n"        ;; .ASCII IS USED TO DEFINE TEXT VARIABLES

.text                   ;; USE THE TEXT DIRECTIVE TO DEFINE A TEXT FUNCTION
MAIN_FUNCTION:

        LI $v0, 4       ;; CREATE A SYSTEM CALL BY LOADING AN IMMEDIATE VALUE INTO REGISTER V0
                        ;; THE FOLLOWING REGISTER IS USED IN RETURN VALUES FOR FUNCTION CALLS

        LA $a0, HELLO_STRING        ;; A0 IS USED AS A PRE-REQUISTIE TO V0 (THE ARGUMENT FOR THE FUNCTION CALL)
                                    ;; WHAT THIS IS DOING IS LOADING THE ADDRESS OF WHERE HELLO_STRING IS STORED

        syscall

        LI $V0, 10                  ;; EXIT CODE
        syscall

;--------------------------------------------
;               END OF FILE
;--------------------------------------------
        