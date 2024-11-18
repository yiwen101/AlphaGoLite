#include <string>
#include "../common/logger.h"
#include "../model/board.h"
#include "../model/board_history.h"
#include "../model/player.h"
class NNEvaluator {
    public:
        NNEvaluator(
        const std::string& modelName,

        //todo: add const std::string& expectedSha256,
        Logger* logger,
        const std::string& randSeed
        );
    ~NNEvaluator();
    NNEvaluator(const NNEvaluator& other) = delete;
    NNEvaluator& operator=(const NNEvaluator& other) = delete;
    void evaluate(
        Board& board,
        const BoardHistory& history,
        Player nextPlayer
        //const MiscNNInputParams& nnInputParams,
        //NNResultBuf& buf,
    );

};
