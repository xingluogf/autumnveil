from PIL import Image
import os

src = r"C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\_shots\index_desktop.png"
out_dir = r"C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\_shots"
img = Image.open(src)
w, h = img.size
mid = h // 2
img.crop((0, 0, w, mid)).save(os.path.join(out_dir, "desktop_top.png"))
img.crop((0, mid, w, h)).save(os.path.join(out_dir, "desktop_bottom.png"))
print("saved", w, h)
