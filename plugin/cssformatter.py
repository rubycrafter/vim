#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import re, sys

text = sys.stdin.read()
#text = open('test.css').read()

# Начало комментария
text = re.sub(r'\s*/\*{1,2}[\s\n]*', '/**\n', text)
# Комментарий
text = re.sub(r'\s\*', '\n *', text)
# Конец комментария
text = re.sub(r'\s*\*/[\s\n]*', '\n */\n', text)
# Начало блока
text = re.sub(r'\s*{[\s\n]*', ' {\n', text)
# Разделение свойств
text = re.sub(r'\s*;[\s\n]*', ';\n', text)
# Конец блока
text = re.sub(r'\s*}[\s\n]*', '\n}\n\n', text)

for line in text.split('\n'):
    text = line.strip('\n')
    match = re.search('\s*(.*):\s*(.*);$', text)

    if match:
        length = 24 - len(match.group(1)) - 1
        print '%s%s:%s%s;' % (' '*4, match.group(1), ' '*length, match.group(2))
    else:
        print text

