#include "board.h"
#include <iostream>

Board::Board() : Board(9, 9) {}
Board::Board(int x, int y) : x(x), y(y) {
    board = std::vector<std::vector<Position_State>>(x+2, std::vector<Position_State>(y+2, Position_EMPTY));
    for (int i = 0; i < x+2; i++) {
        board[i][0] = Position_WALL;
        board[i][y+1] = Position_WALL;
    }
    for (int i = 0; i < y+2; i++) {
        board[0][i] = Position_WALL;
        board[x+1][i] = Position_WALL;
    }
}

// todo
bool Board::can_play_move(int x, int y, Player player) {
    return true;
}

void Board::play_move(int x, int y, Player player) {
    board[x][y] = player;
}

void Board::print_board() {
    for (int i = 0; i < x+2; i++) {
        for (int j = 0; j < y+2; j++) {
            if (board[i][j] == Position_EMPTY) {
                std::cout << ".";
            } else if (board[i][j] == Position_BLACK) {
                std::cout << "X";
            } else if (board[i][j] == Position_WHITE) {
                std::cout << "O";
            } else {
                std::cout << "#";
            }
        }
        std::cout << std::endl;
    }
}

// smoke_test
int main() {
    Board board;
    int turn = 1;
    int x, y;
    while(true) {
        board.print_board();
        bool is_black = turn%2 == 1;
        turn++;
        std::cout << "Enter move for player " << (is_black ? "black" : "white") << std::endl;
        std::cin >> x >> y;
        board.play_move(x, y, is_black ? Player_Black : Player_White);
    }
}