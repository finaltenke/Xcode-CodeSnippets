import core.folder_tool as tool
import model

# 源文件夾路徑
source_folders = model.git_folders

# 目標文件夾路徑
destination_folders = model.xcode_folders

tool.copyFolderArray(source_folders, destination_folders)
print('複製完成！')