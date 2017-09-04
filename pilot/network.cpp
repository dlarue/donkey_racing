#include "network.h"
#include "queue.h"
#include "image.h"  //  for warp size
#include "pipeline.h"
#include <assert.h>
#include <unistd.h>


static FrameQueue *networkInput;
static Pipeline *networkPipeline;

static void process_network(Pipeline *, Frame *&src, Frame *&dst, void *) {
    //  do the thing!
    usleep(25000);
}

bool load_network(char const *name) {
    if (!networkInput) {
        size_t size;
        int width, height, planes;
        get_unwarp_info(&size, &width, &height, &planes);
        assert(planes == 2);
        assert(width == 149);
        assert(height == 59);
        networkInput = new FrameQueue(2, size, width, height, 8);
        networkPipeline = new Pipeline(process_network);
        networkPipeline->connectInput(networkInput);
        networkPipeline->start(NULL);
    }
    return true;
}

FrameQueue *network_input_queue() {
    assert(networkInput != NULL);
    return networkInput;
}

