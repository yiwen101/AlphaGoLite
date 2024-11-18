#include "../common/logger.h"
//g++ ../common/logger.cpp logger.cpp -o temp && ./temp
int main() {
    Logger logger;
    logger.log("Hello, World!");
    return 0;
}