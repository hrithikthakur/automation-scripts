# Automation Scripts

This repository contains a set of automation scripts designed to either simplify, streamline or automate a certain workflow, thus solving a specific problem in my digital life. Feel free to reuse it according to your convenience.

## Table of Contents

- [Auto-commit and Push](#auto-commit-and-push)
- [YouTube Video Downloader](#youtube-video-downloader)
- [Privately fork a Public Repo](#privately-fork-a-public-repo)
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

## [Privately fork a Public Repo](privately-fork-a-public-repo.sh)
GitHub doesn't allow you to privately fork a public repo. So, they are visible on your public profile. Some of us don't like this! And, here is a (legal?)  workaround.

### How it works
First, the script takes the `SSH` link for the public repo as an argument and clones it locally in a chosen default directory. Then, it create an empty private remote repo of the same name on my github account using github cli. then, navigates to that directory, deltes the origianl remote, and then set the origin/amin of the private repo just created as the new remote. Then, it pushes the repo to that remote. If successsful, return, all done! Else, oops!!

## License

This captivating project is licensed under the MIT License. For a closer look, delve into the [LICENSE](LICENSE) file for a tale of permissions and possibilities.
