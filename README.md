# P2_Probstat_B_5025201123

## David Fischer Simanjuntak
## 5025201123

## Soal
1. Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.

![image](https://user-images.githubusercontent.com/78857208/170870044-c11fbd63-2ee9-4e59-ac0a-da231e1b1278.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.
a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
b. carilah nilai t (p-value)
c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

penjelasan soal : Terdapat 9 orang yang ikut dalam penelitian kadar saturasi oksigen. Setiap orang diminta untuk melakukan aktivitas A selama 15 menit untuk di ukur 
kadar saturasi oksigen mereka sebelum dan sesudah melakukan aktivitas A. 

### Mencari Standar Deviasi dari selisih data
Pertama adalah mencari nilai standar deviasi dari sebelum dan sesudah. Sebelum adalah x dan sesudah adalah y. Harus mencari nilai selisih dari y dan x terlebih dahulu 
kemudian memasukkan rumus nya.

  - x = (78,75,67,77,70,72,78,74,77) 
  - y = (100,95,70,90,90,90,89,90,100)
  - standar = sd(y-x)
  - Hasil : ![image](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/1%20a.png)

### Mencari nilai t
Kita harus mencari selisih dari nilai x dan y nya kemudian memasukkan rumus dari t nya.
  - selisih = y-x
  - t = (sum(selisih)/9)/(standar/sqrt(9))
  - Hasil : ![image](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/1%20b.png)

### Menentukan pengaruh
Tidak ada pengaruh yang signifikan dalam hal kadar saturasi oksigen

  - var.test(x,y)
  - t.test(x, y, mu=0, alternative = "two.sided", var.equal = TRUE)
  
  ![image](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/1%20c.1.png)
  
  ![image](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/1%20c.2.png)

2. Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).
a. Apakah Anda setuju dengan klaim tersebut?
b. Jelaskan maksud dari output yang dihasilkan!
c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

### Apakah setuju dengan klaim
Saya setuju

### Jelaskan maksud dari output yang dihasilkan
Berdasarkan gambar tersebut terdapat nilai dari null hypothesis, yaitu μ=20000, kemudian nilai dari alternative hypothesis H1 yaitu μ > 20000, dan nilai dari z adalah 8,9744

![image](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/2%20a.png)

### Buatlah kesimpulan
Berdasarkan hasil yang telah di dapatkan, yaitu nilai pada p-value lebih besar dari 0,05 dan nilai z dapat disimpulkan bahwa null hypothesis ditolak dan mobil dikendarai lebih dari 20000 kilometer per tahun.

3. Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/78857208/170870178-29df34d4-28f5-4373-bfba-64ba8b006a17.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :
A. H0 dan H1
B. Hitung Sampel Statistik
C. Lakukan Uji Statistik (df =2)
D. Nilai Kritikal
E. Keputusan
F. Kesimpulan

### H0 dan H1
Untuk nilai H0 dan H1 memiliki nilai yang berbeda dan nilai dari H0 dan H1 tidak sama dengan 0

### Hitung sampel statistik
Untuk menghitung sampel statistik kita menggunakan tsum.test dan karena ada 2 populasi kita menggunakan alternative = two.side
  - tsum.test(mean.x=3.64, s.x=1.67, n.x=19, mean.y=2.79, s.y=1.32, n.y=27, alternative="two.side", var.equal=TRUE, conf.level=0.95)

![image](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/3%20b.png)

### Melakukan uji statistik (df=2)
  - ujistatis <- qt(c(0.05/2, 1-(0.05/2)), df=2)

![gambar](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/3%20c.png)

### Nilai kritikal
  - qchisq(p=0.05, df=2, lower.tail=FALSE)

![gambar](https://github.com/D-060103/P2_Probstat_B_5025201123/blob/main/Screenshot/3%20d.png)

### Keputusan
Keputusan adalah alternatif atas solusi-solusi yang ada yang belum memiliki kepastian. Untuk membuat keputusan bisa dilakukan dengan t.test. Dalam hal ini keputusannya adalah menerima H0

### Kesimpulan
Kesimpulan yang kita peroleh adalah perbedaan rata-rata yang tidak ada jika dilihat dari uji statistik dan dipengaruhi oleh nilai kritikal. Perbedaan pada mean saham untuk bandung dan bali yang didapatkan adalah 0.

4. Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika : diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
Maka Kerjakan atau Carilah:
A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.
B. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.
D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?
E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
Jelaskan.
F. Visualisasikan data dengan ggplot2

5. Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:
a. Buatlah plot sederhana untuk visualisasi data
b. Lakukan uji ANOVA dua arah
c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
d. Lakukan uji Tukey
e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
