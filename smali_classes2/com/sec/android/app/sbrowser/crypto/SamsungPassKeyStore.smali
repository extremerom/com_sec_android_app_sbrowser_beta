.class Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAuthenticator:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mNonceKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mNonceTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

.field private mSessionEnabled:Z

.field private mSessionKey:[B

.field private mSessionToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mNonceKeys:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mNonceTokens:Ljava/util/HashMap;

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->lambda$startSession$0()V

    return-void
.end method

.method private synthetic lambda$startSession$0()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->generateKey(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionKey:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public generateKey(Ljava/lang/String;)V
    .locals 4

    const-string v0, "generateKey mSessionEnabled:"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "SamsungPassKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->updateAlias(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mNonceKeys:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->generateKey(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()[B
    .locals 4

    const-string v0, "getKey mSessionEnabled:"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "SamsungPassKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionKey:[B

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mNonceKeys:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getToken()[B
    .locals 4

    const-string v0, "getToken mSessionEnabled:"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "SamsungPassKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionToken:[B

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mNonceTokens:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public hasToken()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->getToken()[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startSession()V
    .locals 2

    const-string v0, "SamsungPassKeyStore"

    const-string v1, "startSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PIN"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/crypto/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/crypto/a;-><init>(Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopSession()V
    .locals 3

    const-string v0, "SamsungPassKeyStore"

    const-string v1, "stopSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionKey:[B

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionToken:[B

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateAlias(Ljava/lang/String;)V
    .locals 2

    const-string v0, "updateAlias alias:"

    const-string v1, "SamsungPassKeyStore"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    return-void
.end method

.method public updateToken([B)V
    .locals 4

    const-string v0, "updateToken mSessionEnabled:"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "SamsungPassKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionToken:[B

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mSessionToken:[B

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mNonceTokens:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->mAuthenticator:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
