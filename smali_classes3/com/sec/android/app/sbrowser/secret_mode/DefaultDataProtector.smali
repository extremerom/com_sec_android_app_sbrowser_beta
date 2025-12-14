.class public Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->savePassword(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearData()V
    .locals 9

    const-string v0, "DefaultDataProtector"

    const-string v1, "index : "

    const-string v2, "dir_path"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_INTERNAL_URL:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "_id >= 0 AND is_deleted = 0"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    if-lez v4, :cond_3

    if-ltz v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove secret reading list : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->removeSecretDb(Landroid/content/Context;)V

    return-void

    :goto_1
    if-eqz v3, :cond_5

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
.end method

.method public hasPassword()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->hasPassword()Z

    move-result p0

    return p0
.end method

.method public lockData()V
    .locals 0

    return-void
.end method

.method public resetPassword()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->clearPassword()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/DefaultDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->savePassword(Ljava/lang/String;)V

    return-void
.end method

.method public unlockData(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
