# Markdown File Formatter
This script is designed to check a list of Markdown files for two types of formatting issues: broken links and missing metadata. It can be a useful tool for maintaining the quality and consistency of Markdown-based documentation or content.

## Features
- Checks a list of Markdown files for broken links and missing metadata
- Prints detailed information about any issues found, including the file name and line number
- Provides a clear indication if no issues were found in a file

## Usage
1. Clone the repository or download the script file.
2. Open the script file and modify the `files` array to include the Markdown files you want to check:

   ```go
   files := []string{"file1.md", "file2.md", "file3.md"}
   ```

3. Save the changes and run the script using a Go runtime environment.

   ```
   go run script.go
   ```

4. The script will output the results of the check for each file, indicating any issues found.

## How it Works
The script uses the following approach to check the Markdown files:

1. It opens each file and creates a new `bufio.Scanner` to read the file line by line.
2. It uses regular expressions to check for two types of issues:
   - Broken links: Markdown links that do not contain the "http" string, indicating a potentially broken link.
   - Missing metadata: Lines that consist only of three hyphens (`---`), which could indicate missing metadata.
3. If any issues are found, the script prints detailed information about the issue, including the file name and line number.
4. If no issues are found, the script prints a message indicating that the file is free of any formatting problems.
