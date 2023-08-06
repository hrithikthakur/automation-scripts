# Automation Repository

This repository contains a set of automation scripts designed to simplify and streamline workflow. These scripts were created to automate a specific problem in my digital
life. The repository includes the following files:

## [Auto-commit and Push](git_scr.sh)

`git_scr.py` is a bash script that automates the process of committing changes to a Git repository and pushing them to a remote repository. It accepts a commit message as a 
parameter and performs the following actions:

- Checks if a commit message is provided. If not, it displays an error message and returns.
- Commits the changes with the provided commit message using `git commit -am "$MSG"`.
- Pushes the committed changes to the remote repository.

Usage:

```bash
./git_scr.sh "Your commit message here"
```

## [YouTube Video Downloader](yt_downloader.py)

You don't need to pay for YouTube Premium to watch ad-free high resolution videos from the YouTube Platform. This Python script takes a YouTube video URL as input and delivers a triple treat: unveiling video insights like title and views, capturing videos in the highest resolution possible, and neatly organizing your downloads in a folder of your choice. It uses the `pytube` library to download the highest resolution video from a given YouTube link as a 
parameter and performs the following actions:

- Retrieves video information such as title and views.
- Downloads the video in the highest available resolution.
- Saves the downloaded video to a specified folder.

Usage:

```bash
python download_youtube.py <YouTube_URL>
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
