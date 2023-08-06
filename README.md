# Automation Repository

Welcome to the Automation Repository, a collection of meticulously crafted automation scripts designed to simplify and optimize your workflow. These scripts were ingeniously created to address specific challenges in the digital realm, making your digital life a breeze. The repository encompasses a variety of automation solutions, each meticulously designed for peak efficiency.

## Table of Contents

- [Auto-commit and Push](#auto-commit-and-push)
- [YouTube Video Downloader](#youtube-video-downloader)
- [License](#license)

## [Auto-commit and Push](git_scr.sh)

`git_scr.py` is a brilliant bash script meticulously engineered to revolutionize your Git workflow. It streamlines the process of committing changes to your Git repository and seamlessly pushes them to a remote destination. With an elegant touch, it allows you to provide a commit message as a parameter, orchestrating the following symphony of actions:

- It checks for the presence of a commit message. Should you omit this vital piece, rest assured, it will gracefully alert you and step back.
- It performs a graceful and artful commit, capturing your changes and preserving them with your provided message using the `git commit -am "$MSG"` command.
- Like a maestro leading an orchestra, it takes center stage and pushes your harmonious changes to the remote repository, ensuring your work reaches the right audience.

**Usage:**

```bash
./git_scr.sh "Your mesmerizing commit message here"
```

## [YouTube Video Downloader](yt_downloader.py)

Unlock the secrets of ad-free, high-resolution YouTube videos without shelling out for a premium subscription. Behold, the Python-powered YouTube Video Downloader script! This masterpiece accepts a YouTube video URL as its muse and unveils a trifecta of wonders: a peek into video insights like the majestic title and view count, the art of capturing videos in the pinnacle of resolutions, and the grand organization of your downloads in a folder of your choice. Powered by the enchanting `pytube` library, this script seamlessly downloads the highest-resolution video from your chosen YouTube link, and performs this enchanting sequence of actions:

- It performs a delicate dance, gracefully retrieving the video's title and view count, leaving you mesmerized by its insights.
- With finesse, it captures the video in the most pristine resolution available, ensuring your visual experience is nothing short of cinematic.
- It treats your storage with utmost respect, tenderly placing the downloaded video within a designated folder, like a curator preserving a masterpiece.

**Usage:**

```bash
python download_youtube.py <YouTube_URL>
```

## License

This captivating project is licensed under the MIT License. For a closer look, delve into the [LICENSE](LICENSE) file for a tale of permissions and possibilities.
