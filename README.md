# CodeXuLyAudio
Tập code xử lý dữ liệu âm thanh (Audio) bao gồm 8 file, gồm 2 chức năng chính: 
<br>
<br>*** TIỀN XỬ LÝ DỮ LIỆU ***
<br>1.Convert_to_wav.sh : Chuyển đổi định dạng file audio .mp3 sang .wav 
<br>2.Rename.sh : Đổi tên file audio thống nhất. VD: audio_1.wav, audio_2.wav,... 
<br>3.Formating.sh : Định dạng audio thống nhất về sample rate, channel, bitdepth. 
<br>4.Remove_silence.sh : Loại bỏ khoảng lặng ở đầu file và cuối file audio.
<br>
<br>*** ĐA DẠNG DỮ LIỆU *** 
<br>5.Change_trim_align.sh : Nhân số lượng dữ liệu bằng cách thay đổi padding đầu file 
<br>6.Change_speed.sh : Nhân số lượng dữ liệu bằng cách thay đổi tốc độ phát audio 
<br>7.Change_pitch.sh : Nhân số lượng dữ liệu bằng cách thay đổi cao độ audio

<br>--- FILE: run_full.sh : Chạy liên tục 7 bước

<br>--- HƯỚNG DẪN CHẠY FILE: 
<br>Câu lệnh linux: ./tên_file.sh thư_mục_audio
<br>Ví dụ: ./1.Convert_to_wav.sh ../music/
