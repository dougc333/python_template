#!/bin/bash

@echo "development environment" 
nvm use lts/gallium
source .venv/bin/activate
conda deactivate

