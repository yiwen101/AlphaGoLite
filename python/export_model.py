import torch
print("inside exporter.py")
class Model(torch.nn.Module):
    def __init__(self, state_dict=None):
        super(Model, self).__init__()
        self.state_dict = state_dict


def load_model(file_path, create_new_model=False):
    if create_new_model:
        model = Model()
        return model
    state_dict = torch.load(file_path,map_location="cpu")
    model = Model(state_dict)
    return model

def main(args):
    model = load_model(args.model_path)
    

