mkdir models
mkdir models/L12
mkdir models/hoogberta_base


gdown https://drive.google.com/uc?id=1Cdt2uPtRFgUa5CgtifWlHH2fzNsm3g-n

mv model.ckpt ./models/L12

gdown https://drive.google.com/uc?id=1fYtRAyh6d4W9LVCSJiSYKKM_CCPflBc9
gdown https://drive.google.com/uc?id=1ZNxpVHNZbAfdWA-wu7iMSUtcySzQCJam
gdown https://drive.google.com/uc?id=1ct9xaAUkqxbn9X8JgO8yKfBYWT1Dthld

mv dict.txt models/hoogberta_base
mv checkpoint_best.pt models/hoogberta_base
mv th_18M.50000.bpe models/hoogberta_base

gdown https://drive.google.com/uc?id=1xQHDAE8nbFu2wAM6SAXtTjk890JWLUhy

unzip dict.zip

mv dict ./models