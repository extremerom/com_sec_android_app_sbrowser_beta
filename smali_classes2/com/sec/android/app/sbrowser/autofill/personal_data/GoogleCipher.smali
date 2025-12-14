.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/GoogleCipher;
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


# virtual methods
.method public decrypt(Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
