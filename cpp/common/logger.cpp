#include "logger.h"

const std::string Logger::LOG_DIR = "../logs/";

Logger::Logger() : logToConsole(true) {
    setLogFile(getCurrentTime() + ".log");
}

Logger::~Logger() {
    if (logFile.is_open()) {
        logFile.close();
    }
}

void Logger::setLogToConsole(bool enable) {
    std::lock_guard<std::mutex> lock(mtx);
    logToConsole = enable;
}

bool Logger::setLogFile(const std::string& filename) {
    std::lock_guard<std::mutex> lock(mtx);
    if (logFile.is_open()) {
        logFile.close();
    }
    logFile.open(LOG_DIR + filename, std::ios::out | std::ios::app);
    return logFile.is_open();
}

void Logger::log(const std::string& message, const std::string& level) {
    std::lock_guard<std::mutex> lock(mtx);
    std::string timestamp = getCurrentTime();
    std::string formattedMessage = "[" + timestamp + "] [" + level + "] " + message;

    // Log to file if enabled and file is open
    if (logFile.is_open()) {
        logFile << formattedMessage << std::endl;
    }

    // Log to console if enabled
    if (logToConsole) {
        if (level == "ERROR") {
            /*
            std::cout is used for general output and is buffered, making it suitable for normal program output.
            std::cerr is used for error messages and diagnostics and is unbuffered, ensuring that error messages are displayed immediately.
            */
            std::cerr << formattedMessage << std::endl;
        } else {
            std::cout << formattedMessage << std::endl;
        }
    }
}

std::string Logger::getCurrentTime() {
    std::time_t now = std::time(nullptr);
    char buf[20];
    std::strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", std::localtime(&now));
    return std::string(buf);
}
