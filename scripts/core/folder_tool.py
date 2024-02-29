import shutil
import os

def copyFolder(source_folder, destination_folder):
    # 檢查目標文件夾是否存在，如果不存在則創建
    if not os.path.exists(destination_folder):
        os.makedirs(destination_folder)

    # 獲取源文件夾中的所有文件列表
    files = os.listdir(source_folder)

    # 循環遍歷文件列表並複製到目標文件夾
    for file in files:
        source_file = os.path.join(source_folder, file)
        destination_file = os.path.join(destination_folder, file)
        # shutil.copy2(source_file, destination_file)
        # 使用shutil.copytree複製整個目錄樹，允許目標文件夾存在
        shutil.copytree(source_folder, destination_folder, symlinks=False, ignore=None, dirs_exist_ok=True)
        print(f'複製文件: {source_file} 到 {destination_file}')
