.class public Lcom/sec/terrace/browser/crypto/TinCipherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/crypto/TinCipherFactory$LazyHolder;,
        Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;,
        Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherDataObserver;
    }
.end annotation


# instance fields
.field private mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

.field private mDataGenerator:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataLock:Ljava/lang/Object;

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRandomNumberProvider:Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;

    invoke-direct {v0}, Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mRandomNumberProvider:Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mRandomNumberProvider:Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->notifyCipherDataGenerated()V

    return-void
.end method

.method private createGeneratorCallable()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$2;-><init>(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/crypto/TinCipherFactory;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$LazyHolder;->a()Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    move-result-object v0

    return-object v0
.end method

.method private notifyCipherDataGenerated()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherDataObserver;

    invoke-interface {v0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherDataObserver;->onCipherDataGenerated()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCipher(I)Ljavax/crypto/Cipher;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getCipherData(Z)Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->key:Ljava/security/Key;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->iv:[B

    invoke-direct {v2, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string p0, "cr.CipherFactory"

    const-string p1, "Error in creating cipher instance."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCipherData(Z)Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->triggerKeyGeneration()V

    :try_start_0
    iget-object p1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataGenerator:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    new-instance p1, Lcom/sec/terrace/browser/crypto/TinCipherFactory$1;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$1;-><init>(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_4

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_4
    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    return-object p0
.end method

.method public restoreFromBundle(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "org.chromium.content.browser.crypto.CipherFactory.KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "org.chromium.content.browser.crypto.CipherFactory.IV"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    new-instance v3, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    invoke-direct {v3, v2, p1}, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;-><init>(Ljava/security/Key;[B)V

    iput-object v3, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    monitor-exit v1

    return v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->key:Ljava/security/Key;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->iv:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    monitor-exit v1

    return v4

    :cond_3
    const-string p0, "cr.CipherFactory"

    const-string p1, "Attempted to restore different cipher data."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "cr.CipherFactory"

    const-string p1, "Error in restoring the key from the bundle."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v0
.end method

.method public saveToBundle(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getCipherData(Z)Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->key:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->iv:[B

    if-eqz v1, :cond_1

    const-string v1, "org.chromium.content.browser.crypto.CipherFactory.KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "org.chromium.content.browser.crypto.CipherFactory.IV"

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->iv:[B

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public triggerKeyGeneration()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mData:Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataGenerator:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->createGeneratorCallable()Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->mDataGenerator:Ljava/util/concurrent/FutureTask;

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
