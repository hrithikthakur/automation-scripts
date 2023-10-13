from pytube import YouTube
from sys import argv
import os
import configparser

CONFIG_FILE = "config.ini"

def save_config(destination_folder):
    config = configparser.ConfigParser()
    config['DEFAULT'] = {'DestinationFolder': destination_folder}

    with open(CONFIG_FILE, 'w') as configfile:
        config.write(configfile)

def load_config():
    config = configparser.ConfigParser()

    if os.path.exists(CONFIG_FILE):
        config.read(CONFIG_FILE)
        return config['DEFAULT']['DestinationFolder']
    else:
        return None

def get_destination_folder():
    saved_folder = load_config()
    if saved_folder:
        use_saved = input(f"Use saved destination folder '{saved_folder}'? (y/n): ").lower() == 'y'
        if use_saved:
            return saved_folder

    folder = input("Enter the destination folder for the download: ")
    if not os.path.exists(folder):
        os.makedirs(folder)

    save_config(folder)
    return folder

def download_video(video_link, destination_folder):
    try:
        video = YouTube(video_link)

        print("Video Title: ", video.title)
        print("Views: ", video.views)

        highest_resolution_stream = video.streams.get_highest_resolution()

        # Download the video to the specified destination folder
        highest_resolution_stream.download(destination_folder)
        print("Download completed successfully.")
    except Exception as e:
        print("An error occurred:", e)

if __name__ == "__main__":
    if len(argv) == 2:
        link = argv[1]
        folder = get_destination_folder()
        download_video(link, folder)
    elif len(argv) == 3:
        link = argv[1]
        folder = argv[2]
        download_video(link, folder)
    else:
        print("Usage: python download_video.py <video_link> <destination_folder>")
