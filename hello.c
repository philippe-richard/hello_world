#include "util.h"

int main(int argc, const char* const argv[])
{
  printf("Hello, you big, beautiful, github on z/OS!\n");
  showArgs(stdout, argc, argv);
  return 0;
}
