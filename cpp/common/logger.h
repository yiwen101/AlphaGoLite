#ifndef LOGGER_H
#define LOGGER_H

#include <fstream>
#include <iostream>
#include <mutex>
#include <string>
#include <ctime>

class Logger {
public:
    Logger();

    ~Logger();

    void log(const std::string& message, const std::string& level = "INFO");

    void setLogToConsole(bool enable);

    bool setLogFile(const std::string& filename);

    static const std::string LOG_DIR;

private:
    std::ofstream logFile;     // File stream for logging to a file
    bool logToConsole;        // Flag to enable/disable console logging
    std::mutex mtx;            // Mutex for thread-safe logging

    // Retrieves the current timestamp as a string
    std::string getCurrentTime();
    
};

#endif
