#!/bin/bash

zola build
sed -i 's/https:&#x2F;&#x2F;dhpollack.github.io&#x2F;resume-v2&#x2F;//g' public/index.html
chromium --headless --disable-gpu --no-margins --print-to-pdf-no-header --print-to-pdf=static/david-pollack-resume.pdf public/index.html
