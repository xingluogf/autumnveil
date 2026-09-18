import urllib.request
import os

assets_dir = r"C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\assets"
files = {
    "hero.png": "https://aka.doubaocdn.com/s/HBbvk5xY6Y",
    "game-dawn.png": "https://aka.doubaocdn.com/s/HOMAWt5mZ1",
    "game-night.png": "https://aka.doubaocdn.com/s/6W1V6LjWqF",
}

for name, url in files.items():
    path = os.path.join(assets_dir, name)
    try:
        urllib.request.urlretrieve(url, path)
        size = os.path.getsize(path)
        print(f"OK {name} {size} bytes")
    except Exception as e:
        print(f"FAIL {name}: {e}")
