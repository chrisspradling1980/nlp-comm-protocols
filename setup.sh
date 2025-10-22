setup.sh

#NLP Communication Protocols Setup Script
# This script sets up the environment for running the NLP framework on Termux or any Unix-like system.

"Starting setup for NLP Communication Protocols..."

# Step 1: Update and install Python if needed
"Updating packages..."
pkg update -y && pkg upgrade -y

"Installing Python and pip..."
pkg install -y python
pkg install -y pip

# Step 2: Install virtualenv (optional but recommended)
"Installing virtualenv..."
pip install --upgrade pip
pip install virtualenv

# Step 3: Create virtual environment
"Creating virtual environment..."
virtualenv venv
source venv/bin/activate

# Step 4: Install project dependencies
"Installing project dependencies..."
pip install -r requirements.txt

# Step 5: Confirm setup
"Setup complete. You can now run:"
source venv/bin/activate
python src/main.py

# Optional: Add alias to simplify activation
"alias nlpcomm='source $(pwd)/venv/bin/activate && python src/main.py'" >> ~/.bashrc
Alias 'nlpcomm' added to ~/.bashrc. 
Restart Termux or run 'source ~/.bashrc' to use it."

"You are ready to explore NLP + communication protocols!"
