import os
import sys

if __name__ == "__main__":
    assets_path = sys.argv[1]
    output_pack_path = sys.argv[2]

    if not os.path.exists(assets_path):
        print(f"Assets folder at {assets_path} does not exists.", file=sys.stderr)
        sys.exit(1)

    if os.path.exists(output_pack_path):
        print(f"Output file path already exists, overwriting..", file=sys.stderr)
    else:
        output_pack_dir = os.path.dirname(output_pack_path)
        os.makedirs(output_pack_dir, exist_ok=True)
    

    assets_path = assets_path.replace('\\', '/')
    file_record_list = []

    for root, dirs, files in os.walk(assets_path):
        root_path = root.replace('\\', '/')
        for file_name in files:
            relative_path = os.path.relpath(root_path, assets_path).replace('\\','/')
            abs_path = f'{root_path}/{file_name}'

            rel_path = f'{relative_path}/{file_name}'

            if relative_path == '.':
                rel_path = file_name

            name_bytes = rel_path.encode('utf-8')

            file_record_list.append({
                "name_bytes" : name_bytes,
                "name_length" : len(name_bytes),
                "file_length" : os.path.getsize(abs_path),
                "file_path" : abs_path
            })

    with open(output_pack_path, 'wb', newline=None) as target_fp:
        target_fp.write(len(file_record_list).to_bytes(4, byteorder='little'))

        for file_record in file_record_list:
            target_fp.write(len(file_record["name_bytes"]).to_bytes(4, byteorder='little'))
            target_fp.write(file_record["name_bytes"])
            target_fp.write(file_record["file_length"].to_bytes(4, byteorder='little'))
        
        for file_record in file_record_list:
            with open(file_record["file_path"], 'rb') as read_fp:
                target_fp.write(read_fp.read())
    
    print(f'Packed {len(file_record_list)} files.')