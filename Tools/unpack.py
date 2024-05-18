import os
import sys

class MSThiefAssetsUnpacker:
    def Unpack(self, ignore_fz_digit=False):
        filePtr = self.filePtr
        if not filePtr:
            return False  # 如果文件指针为空，则加载失败

        if ignore_fz_digit:
            filePtr.read(1)

        entryCount = int.from_bytes(filePtr.read(4), byteorder='little')
        if entryCount - 1 > 0xFFFF:
            return False  # 条目数量异常，加载失败

        for _ in range(entryCount):
            nameLength = int.from_bytes(filePtr.read(4), byteorder='little')
            nameString = filePtr.read(nameLength).decode('utf-8')
            fileLength = int.from_bytes(filePtr.read(4), byteorder='little')
            if fileLength == 0:
                print(f"ignored 0 len file {nameString}")
                continue
            self.entry_record_arr.append(
                {
                    "name": nameString,
                    "fileLength": fileLength
                }
            )

        for entry_record in self.entry_record_arr:
            entry_file_name = entry_record["name"]
            self.name_list_fp.write(f'{entry_file_name}\n')
            entry_file_len = entry_record["fileLength"]
            entry_data_binary = self.filePtr.read(entry_file_len)

            # 创建对应文件夹
            file_path = os.path.join(self.root_dir, os.path.dirname(entry_file_name))
            os.makedirs(file_path, exist_ok=True)
            
             # 创建文件并写入数据，使用条目名作为文件名
            file_name = os.path.join(file_path, os.path.basename(entry_file_name))
            with open(file_name, 'wb') as f:
                f.write(entry_data_binary)

        return len(self.entry_record_arr)

    def record_file_position(self):
        self.file_position = self.filePtr.tell()

    def __init__(self, filename, root_dir, name_list_filename):
        self.entry_record_arr = []
        self.filePtr = open(filename, 'rb')
        self.root_dir = root_dir
        self.file_position = 0
        self.name_list_fp = open(name_list_filename, 'w', newline='\n')

    def __del__(self):
        if self.filePtr:
            self.filePtr.close()
            self.filePtr = None
        if self.name_list_fp:
            self.name_list_fp.close()
            self.name_list_fp = None


if __name__ == "__main__":
    asset_file_path = sys.argv[1]
    output_path = sys.argv[2]
    name_list_path = sys.argv[3]

    ignore_first_digit = False

    if len(sys.argv) > 4 :
        ignore_first_digit = sys.argv[4].lstrip('-') == "ignore-fz-digit"

    name_list_dir = os.path.dirname(name_list_path)
    if not os.path.exists(name_list_dir):
        os.makedirs(name_list_dir)

    if not os.path.exists(output_path):
        os.makedirs(output_path, exist_ok=True)

    if not os.path.exists(asset_file_path):
        print("Invalid path input, please check.")
        sys.exit(1)

    print(f"Asset_file_path {asset_file_path}, outputing to {output_path}")

    bvfs = MSThiefAssetsUnpacker(asset_file_path, output_path, name_list_path)
    bvfs.Unpack(ignore_first_digit)
