import os
import core.folder_tool as tool
import model

# 源文件夾路徑
source_folders = model.git_folders

# 目標文件夾路徑
destination_folders = model.xcode_folders

def copyFolderArray(source_folders, destination_folders):
    # 使用循環遍歷source_folders和destination_folders，並調用copyFolder函數
    for i in range(len(source_folders)):
        # 展開目標文件夾路徑中的波浪號（~）
        source_folder = source_folders[i]
        destination_folder = os.path.expanduser(destination_folders[i])
        tool.copyFolder(source_folder, destination_folder)


copyFolderArray(source_folders, destination_folders)
print('複製完成！')