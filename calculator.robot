*** Test Cases ***
Test Catenate
    ${str}=     Catenate    hello,   world    boyone
    Should Be Equal     ${str}      hello, world boyone

Test Evaluate
    ${result}=     Evaluate    1 + 1
    Should Be Equal     ${result}   ${2}