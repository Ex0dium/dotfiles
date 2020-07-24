#!/bin/bash

TITLE=$1

echo \
    "---
title: $TITLE
author: $USER

numbersections: true
autoEqnLabels: true

geometry:
- top=30mm
- bottom=30mm
- left=20mm
- right=20mm
---

Introduction

# Section

## Subsection" > "$TITLE.md"

echo "Wrote Markdown template for \"$TITLE\" as author \"$USER\""


