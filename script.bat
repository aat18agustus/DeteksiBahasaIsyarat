import os
import random

# Definisikan path direktori
source_directory = 'D:\dataset\DeteksiBahasaIsyarat\valid\ain'

# Ambil semua file dalam direktori sumber
all_files = os.listdir(source_directory)

# Hitung jumlah file yang akan dihapus (40% dari total)
num_files_to_delete = int(0.4 * len(all_files))

# Acak urutan file
random.shuffle(all_files)

# Pilih file yang akan dihapus
files_to_delete = all_files[:num_files_to_delete]

# Hapus file yang dipilih
for file in files_to_delete:
    os.remove(os.path.join(source_directory, file))

print(f"Total files deleted: {len(files_to_delete)}")
