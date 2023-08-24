# Automation Scripts

This repository contains a set of automation scripts designed to either simplify, streamline or automate a certain workflow, thus solving a specific problem in my digital life. Feel free to reuse it according to your convenience.

## Table of Contents

- [Auto-commit and Push](#auto-commit-and-push)
- [YouTube Video Downloader](#youtube-video-downloader)
- [License](#license)

## [Auto-commit and Push](git_scr.sh)

-`git_scr.py` is a bash script that automates the process of committing changes to a Git repository and pushing them to a remote repository. It accepts a commit message as a parameter and performs the following actions:
  -- Checks if a commit message is provided. If not, it displays an error message and returns.
  -- Commits the changes with the provided commit message using `git commit -am "$MSG"`.
  -- Pushes the committed changes to the remote repository.

**Usage:**

```bash
./git_scr.sh "Your mesmerising commit message here"
```

## [YouTube Video Downloader](yt_downloader.py)

Unlock the secrets of ad-free, high-resolution YouTube videos without shelling out for a premium subscription. This Python script takes a YouTube video URL as input and delivers a triple treat: unveiling video insights like title and views, capturing videos in the highest resolution possible, and neatly organizing your downloads in a folder of your choice. It uses the `pytube` library to download the highest resolution video from a given YouTube link as a parameter and performs the following actions:
  -- Retrieves video information such as title and views.
  -- Downloads the video in the highest available resolution.
  -- Saves the downloaded video to a specified folder.

**Usage:**

```bash
python download_youtube.py <YouTube_URL>
```

## License

This captivating project is licensed under the MIT License. For a closer look, delve into the [LICENSE](LICENSE) file for a tale of permissions and possibilities.
