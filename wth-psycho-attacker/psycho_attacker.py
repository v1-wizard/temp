import os
import random

from playsound import playsound


def attack():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    music_dir = os.path.join(script_dir, 'music')
    music_files = os.listdir(music_dir)
    playsound(os.path.join(music_dir, random.choice(music_files)))


if __name__ == '__main__':
    attack()
