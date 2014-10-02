/**
How to output on a port
-----------------------
**/


#include <xs1.h>

/**
    To output on a port you need to declare a global 'port' variable. No
    two ports may be initialized with the same port identifier:
**/

out port p = XS1_PORT_1A;


/**
    The value XS1_PORT_1A refers to an external pin on the device. It is
    defined in the header file 'xs1.h', which must be included to use
    these port initializers:
**/


int main() {

  /** Port output is done via the  '<:' operator. The following statement
      outputs the value 1 to port p, causing the port to drive its
      corresponding pin high
   **/
  p <: 1;

/**
   The port continues to drive its pin high until execution of the next
   statement which outputs the value 0 to port p, causing the port to
   drive its pin low:
**/

  p <: 0;


  return 0;
}
