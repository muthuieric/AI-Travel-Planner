# AI-Travel-Planner

## Overview

AI Travel Planner is a Jac-based simulation that suggests travel destinations based on user preferences. The project integrates AI (via Gemini LLM) to provide context-aware, intelligent suggestions, while also supporting offline fallback using random destination selection.

## Features

Suggests destinations based on budget, activity type, and trip duration.

Provides AI-generated hints (requires a valid Gemini API key).

Offline fallback ensures the program works even if AI is unavailable.

Demonstrates Jac walkers and nodes for interactive workflows.

## Files

travel_planner.jac – Main Jac program defining walkers, nodes, and AI hooks.

travel_planner.impl.jac – Implementation for walker behavior, handling input and AI suggestions.

## Setup

#### Activate virtual environment:

python -m venv .env
source .env/bin/activate


#### Install dependencies:

pip install jaclang
pip install byllm  # optional, for AI hints


### Set Gemini API key:

export GEMINI_API_KEY="YOUR_API_KEY_HERE"

### Usage

Run the planner:

jac run travel_planner.jac


The program suggests destinations with optional AI hints.

If AI service is unavailable, random fallback suggestions are used.

### Example Output
🌍 Suggested destination: Kenya!
Zanzibar, Tanzania

🌍 Suggested destination: Japan!
Kyoto, Tokyo

## Notes

Handles AI service errors gracefully.

Project demonstrates AI-enhanced Jac applications and scalable, interactive workflows.