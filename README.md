# nginx-log-analyser

# Nginx Log Analyser
A simple Bash-based tool to analyze Nginx access logs and provide insights into traffic patterns, including top IP addresses, most requested paths, status codes, and user agents.

## Features
The script parses a standard Nginx access.log file and identifies:

### Top 5 IP addresses making requests.

### Top 5 most requested paths (URLs).

### Top 5 response status codes (e.g., 200, 404, 500).

### Top 5 user agents (the browsers/bots visiting your site).

## Requirements
A Linux/Unix-based environment (Linux, macOS, WSL, or Git Bash on Windows).

awk, sort, uniq, and head (standard on most systems).

## Installation
Clone this repository or download the script:
`shell
git clone https://github.com/your-username/nginx-log-analyser.git
cd nginx-log-analyser
`
Make the script executable:

`shell
chmod +x nginx-log-analyzer.sh
`
Usage
Ensure your log file (e.g., logfile.txt) is in the same directory as the script, then run:

`shell
./nginx-log-analyzer.sh
`
Example Output
`shell
Top 5 IP addresses with the most requests:
178.128.94.113 - 1000 requests
142.93.143.8 - 600 requests
...

Top 5 most requested paths:
/v1-health - 850 requests
/login - 200 requests
...

Top 5 response status codes:
200 - 1500 requests
404 - 50 requests
...
`
## Project Link
This project was built as part of the Nginx Log Analyser challenge on roadmap.sh.