.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatEncryptedData(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;
    .locals 1

    new-instance p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;

    invoke-direct {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;-><init>()V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    iput-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->encryptedKey:[B

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    iput-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->encryptedData:[B

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->initializationVector:Ljava/lang/String;

    return-object p0
.end method

.method private initialize(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher$1;-><init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;)V

    const-string p0, "credit_cards"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->initialize(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public decrypt(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->formatEncryptedData(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridge;->keyStoreDecrypt(Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decryptWbs(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->formatEncryptedData(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridge;->wbsDecrypt(Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridge;->keyStoreEncrypt(Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;-><init>()V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->encryptedKey:[B

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->encryptedData:[B

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->initializationVector:Ljava/lang/String;

    iput-object p0, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    return-object p1
.end method

.method public lock()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupportedForWebPayments()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SamsungCipher"

    const-string v0, "lock failed because sdp is not supported for web payments"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->lock()Z

    move-result p0

    return p0
.end method

.method public unlock(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupportedForWebPayments()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SamsungCipher"

    const-string p1, "unlock failed because sdp is not supported for web payments"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->initialize(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->unlock()Z

    move-result p0

    return p0
.end method
