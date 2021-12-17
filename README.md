# HoogBERTa

This repository includes the Thai pretrained language representation (HoogBERTa_base) and the fine-tuned model for multitask sequence labeling.

# Installation

```
$ python setup.py install
```

To download model, use

```
>>> import hoogberta
>>> hoogberta.download()
```

# Usage

see test.py


# Documentation

To annotate POS, NE and cluase boundary, use the following commands

```python
from hoogberta.multitagger import HoogBERTaMuliTaskTagger
tagger = HoogBERTaMuliTaskTagger(cuda=False) # or cuda=True
output = tagger.nlp("วันที่ 12 มีนาคมนี้ ฉันจะไปเที่ยววัดพระแก้ว ที่กรุงเทพ")
```

The output is a list of annotations (token, POS, NE, MARK). "MARK" is annotation for a single white space, which can be PUNC (not clause boundary) or MARK (clause boundary). Note that, for clause boundary classification, the current pretrained model works well with inputs that contain two clauses. If you want a more precise output, we suggest that you could run tagger.nlp iteratively.

To extract token features, based on the RoBERTa architecture, use the following commands

```python
from hoogberta.encoder import HoogBERTaEncoder
encoder = HoogBERTaEncoder(cuda=False) # or cuda=True
token_ids, features = encoder.extract_features("วันที่ 12 มีนาคมนี้ ฉันจะไปเที่ยววัดพระแก้ว ที่กรุงเทพ")
```

In current version, both methods support only one sentence (or document) at a time.
