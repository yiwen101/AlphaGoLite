#include <vector>
typedef int Player;
static constexpr Player Player_Black = 1;
static constexpr Player Player_White = 2;

typedef int Position_State;
static constexpr Position_State Position_EMPTY = 0;
static constexpr Position_State Position_BLACK = 1;
static constexpr Position_State Position_WHITE = 2;
static constexpr Position_State Position_WALL = 3;
static constexpr int NUM_Position_State = 4;

static inline Position_State get_opposite_position(Position_State position) {
    if (position == Position_BLACK) {
        return Position_WHITE;
    } else if (position == Position_WHITE) {
        return Position_BLACK;
    } else {
        return position;
    }
}

struct ChainData {
    Player owner;
    int size;
    int liberties;
};

struct Board {
    Board();
    Board(int x, int y);
    bool can_play_move(int x, int y, Player player);
    void play_move(int x, int y, Player player);
    void print_board();

    int x;
    int y;
    std::vector<std::vector<Position_State> > board;
};