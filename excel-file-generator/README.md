# Automation Scripts

This repository hosts a collection of automation scripts crafted to simplify, streamline, or automate specific workflows, addressing digital challenges in my life. Feel free to adapt them to suit your needs.

## Table of Contents

- [Auto-commit and Push](#auto-commit-and-push)
- [YouTube Video Downloader](#youtube-video-downloader)
- [Privately fork a Public Repo](#privately-fork-a-public-repo)
- [Excel File Generator](#excel-file-generator)
- [License](#license)

## [Auto-commit and Push](auto-commit-and-push)

- `git_scr.py` is a bash script automating the process of committing changes to a Git repository and pushing them to a remote repository. It accepts a commit message as a parameter and performs the following actions:
  - Checks if a commit message is provided. If not, it displays an error message and returns.
  - Commits the changes with the provided commit message using `git commit -am "$MSG"`.
  - Pushes the committed changes to the remote repository.

**Usage:**

```bash
./git_scr.sh "Your mesmerizing commit message here"
```

## [YouTube Video Downloader](youtube-downloader)

Unveil the secrets of ad-free, high-resolution YouTube videos without the need for a premium subscription. This Python script takes a YouTube video URL as input and provides a triple treat: revealing video insights like title and views, capturing videos in the highest resolution possible, and neatly organizing your downloads in a folder of your choice. It uses the `pytube` library to download the highest resolution video from a given YouTube link, retrieving video information such as title and views, and saving the downloaded video to a specified folder.

**Usage:**

```bash
python download_youtube.py <YouTube_URL>
```

## [Privately fork a Public Repo](privately-fork-a-public-repo)

GitHub doesn't allow private forking of public repos, making them visible on your public profile. This script offers a workaround. It takes the `SSH` link for the public repo as an argument, clones it locally, creates an empty private remote repo with the same name on your GitHub account, sets up the private repo as the new remote, and pushes the repo to that remote.

**Usage:**

```bash
./private_fork.sh <SSH_link_to_public_repo>
```

## [Excel File Generator](excel-file-generator)

This Python script processes data from a text file, removes specified characters, and generates an Excel file with the cleaned data.

**Usage:**

```bash
python excel_creator.py input_file.txt output.xlsx characters_to_remove
```

- `input_file.txt`: The path to the input text file.
- `output.xlsx`: The desired name of the output Excel file.
- `characters_to_remove`: Specify characters to be removed from each line.

**Dependencies:**

The script uses the `openpyxl` library for Excel file handling. Install it using:

```bash
pip install openpyxl
```

**Example:**

Suppose `input_data.txt` contains:

```
- Item 1
- Item 2
- Item 3
```

Running the script:

```bash
python excel_creator.py input_data.txt output.xlsx -
```

Will create an Excel file named `output.xlsx` with the content:

```
Item 1
Item 2
Item 3
```

## License

This captivating project is licensed under the MIT License. Delve into the [LICENSE](LICENSE) file for a tale of permissions and possibilities.
