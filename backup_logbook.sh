#!/usr/bin/env bash

backup_logbook() {
  local base_dir=$HOME/Library/Containers/com.coradine.LogTenProX/Data/Documents
  local logtenpro_data_dir="LogTenProData"
  local logtenpro_db="LogTenCoreDataStore.sql"
  local dest_dir=${1:-$HOME}

  echo "--- [LogTen Pro X Backup] --- START"
  if test -f $base_dir/$logtenpro_data_dir/$logtenpro_db; then
    echo "[LTPX Backup] Found db at: $base_dir/$logtenpro_data_dir/$logtenpro_db"
    local dest_file=$dest_dir/LogTenPro-Script-Backup-$(date +'%m%d%Y').zip

    if test -f $dest_file; then
      echo "[LTPX Backup] Already backed up today."
    else
      echo "[LTPX Backup] Creating back up at $(dirname "${dest_file}")"
      (cd $base_dir; zip -qrdc  $dest_file $logtenpro_data_dir/*  -x "*.DS_Store";)
      if test -f ${dest_file}; then
        echo "[LTPX Backup] Completed: $(basename ${dest_file})"
      else
        echo "[LTPX Backup] Error!"
      fi
    fi
  else
    echo "[LTPX Backup] No database found at $base_dir"
  fi
  echo "--- [LogTen Pro X Backup] --- END"
}
