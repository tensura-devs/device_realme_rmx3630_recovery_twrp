\#!/bin/bash

# Script untuk clone tree device Realme RMX3630

echo "Menghapus source tree lama..."
if rm -rf device/realme/RMX3630; then
    echo "✅ Source Tree deleted successfully"
else
    echo "❌ Failed to delete Source Tree"
    exit 1
fi

echo ""
echo "Menambahkan source tree baru..."
if git clone -b twrp-12.1 https://github.com/tensura-devs/device_realme_rmx3630_recovery_twrp.git device/realme/RMX3630; then
    echo "✅ Source Tree Added successfully"
else
    echo "❌ Failed to add Source Tree"
    exit 1
fi

echo ""
echo "✅ Proses selesai!"
