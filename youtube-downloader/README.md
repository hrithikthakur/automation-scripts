# YouTube Video Downloader

## Overview

This Python script allows you to download YouTube videos using the `pytube` library. You can specify the video link and destination folder either through command-line arguments or interactively.

## Prerequisites

- Python installed (version 3.6 or above)
- Required library: `pytube` (install using `pip3 install pytube`)

## Usage

### Command-line arguments

1. **Video Link**: Provide the YouTube video link as the first command-line argument.
2. **Destination Folder (optional)**: Optionally, you can specify the destination folder as the second command-line argument.

#### Example:

```bash
python3 yt_downloader.py <video_link> <destination_folder>
```

### Interactive mode

If no command-line arguments are provided, the script will interactively prompt you for the video link and destination folder.

## Configuration

The script utilises a configuration file (`config.ini`) to store the default destination folder. If you've used the script before, it will ask if you want to use the saved destination folder.

## How to Run

1. Open a terminal or command prompt.
2. Navigate to the directory containing the script.
3. Run the script using one of the following methods:

   - Command-line arguments:

     ```bash
     python3 yt_downloader.py <video_link> <destination_folder>
     ```

   - Interactive mode:

     ```bash
     python3 yt_downloader.py
     ```

4. Follow the on-screen prompts to complete the process.

## Note
- The detinatiion folder accepts both absolute and relative paths.
- In case of any errors during the download, the script will display an error message.
