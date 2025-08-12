# Şirket Yönetim Uygulaması

Bu proje, **Ruby on Rails 7** ile geliştirilmiş, scaffold yapısıyla oluşturulmuş, kullanıcı girişi ve yönetimi içeren bir şirket yönetim uygulamasıdır. Uygulama; çalışan ekleme, gelir-gider takibi, izin yönetimi gibi temel CRUD işlemlerini desteklemektedir.


## Özellikler

- **Kullanıcı Kayıt ve Giriş Sistemi:** Devise gemi ile güvenli kullanıcı kimlik doğrulama.
- **Çalışan Yönetimi:** Çalışanların CRUD işlemleri.
- **Gelir-Gider Yönetimi:** Şirket gelir ve giderlerini kaydetme, listeleme, güncelleme ve silme.
- **İzin Yönetimi:** Çalışanların izin taleplerini oluşturma, görüntüleme ve yönetme.
- **Arka Plan İşlemleri:** Sidekiq ile maaş bildirimi, izin yönetimi.
- **JSON API Desteği:** Jbuilder ile JSON formatında veri sunumu.



## Kullanılan Teknolojiler ve Gemler

- **Ruby on Rails 7:** Modern ve hızlı web geliştirme çatısı.
- **Devise:** Kullanıcı kimlik doğrulama ve oturum yönetimi.
- **Sidekiq:** Arka plan görevlerinin yönetimi ve işlenmesi.
- **Jbuilder:** JSON API çıktıları için şablon motoru.
