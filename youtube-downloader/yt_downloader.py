from pytube import YouTube
from sys import argv

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
    if len(argv) != 3:
        print("Usage: python download_video.py <video_link> <destination_folder>")
    else:
        link = argv[1]
        folder = argv[2]
        download_video(link, folder)
