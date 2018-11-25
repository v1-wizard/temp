import vlc


def attack():
    p = vlc.MediaPlayer("file:///./ne_perezvonily.mp3")
    p.play()