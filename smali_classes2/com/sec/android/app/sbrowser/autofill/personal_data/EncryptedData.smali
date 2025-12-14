.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public encryptedData:[B

.field public encryptedKey:[B

.field public initializationVector:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedKey:[B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->initializationVector:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/EncryptedData;->encryptedData:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
