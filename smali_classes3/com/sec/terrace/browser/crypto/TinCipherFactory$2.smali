.class Lcom/sec/terrace/browser/crypto/TinCipherFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/crypto/TinCipherFactory;->createGeneratorCallable()Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/crypto/TinCipherFactory;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$2;->this$0:Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;
    .locals 5

    const-string v0, "Couldn\'t get generator data."

    const-string v1, "cr.CipherFactory"

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$2;->this$0:Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    invoke-static {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->a(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;

    move-result-object p0

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;->getBytes(I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    new-instance v0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;-><init>(Ljava/security/Key;[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const-string p0, "Couldn\'t get generator instances."

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_1
    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_2
    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$2;->call()Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    move-result-object p0

    return-object p0
.end method
