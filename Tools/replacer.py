import json
import os
import sys


def try_extract_line_key(line: str):
    valid_prefix = line.startswith('"')
    valid_suffix = line.rstrip().endswith(';')
    if not valid_prefix or not valid_suffix:
        return False, None
    
    key_start_pos = 1
    key_end_pos = line.find('"', key_start_pos)
    key_string = line[key_start_pos:key_end_pos]
    extract_result = key_end_pos > key_start_pos and len(key_string) > 0
    return extract_result, key_string


if __name__ == "__main__":
    if len(sys.argv) < 4 :
        print("3 Params needed : ")
        print("\t<src_file_path> \t\tthe .strings file to read keys from.")
        print("\t<json_translated_file_path> \t\tthe json file that holds all translated data.")
        print("\t<output_file_path> \t\twhere the result file will be output to, will be overwrite if exists.")
        sys.exit(10)

    # .strings 源文件
    strings_file_path = sys.argv[1]

    # 含有翻译好数据的 .json 文件
    data_json_file_path = sys.argv[2]

    # 输出的文件路径
    output_file_path = sys.argv[3]

    if not os.path.exists(strings_file_path):
        print(f"No .strings data file at {strings_file_path} can be found.", file=sys.stderr)
        sys.exit(1)
    
    if not os.path.exists(data_json_file_path):
        print(f"No json data file can be found at {data_json_file_path} can be found.", file=sys.stderr)
        sys.exit(2)
    
    output_file_dir_path = os.path.dirname(output_file_path)
    output_file_name = os.path.basename(output_file_path)

    if not os.path.exists(output_file_dir_path):
        os.makedirs(output_file_dir_path, exist_ok=True)
    elif os.path.exists(output_file_path):
        print(f"A file with name {output_file_name} already exists in {output_file_dir_path}, overwriting...", file=sys.stderr)

    trans_file = open(data_json_file_path, "r", encoding="utf-8")
    trans_data = json.loads(trans_file.read())
    trans_file.close()

    strings_file = open(strings_file_path, "r")
    strings_file_lines = strings_file.readlines()
    strings_file.close()

    replaced_cnt = 0
    with open(output_file_path, "w", encoding="utf-8", newline="\n") as output_file:
        for line in strings_file_lines:
            # print(line)
            extract_succeed, key_str = try_extract_line_key(line)
        
            # print(f"extract res {extract_succeed}, key str {key_str}")
            if not extract_succeed:
                output_file.write(line)
                continue

            if key_str not in trans_data:
                print(f"Key '{key_str}' does not have a translated string record, not replaced.", file=sys.stderr)
                continue

            trans_value = trans_data[key_str]
            if trans_value is None or len(trans_value) == 0:
                print(f"key '{key_str}' has a invalid translated string record, not replaced.", file=sys.stderr)                
                output_file.write(line)
                continue

            trans_value = trans_value.replace('\r', '\\r').replace('\n', '\\n')
            output_file.write(f'"{key_str}" = "{trans_value}";\n')
            replaced_cnt = replaced_cnt + 1

    print(f"{replaced_cnt} replaced.")
