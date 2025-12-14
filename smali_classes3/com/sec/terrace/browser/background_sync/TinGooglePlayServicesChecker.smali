.class final Lcom/sec/terrace/browser/background_sync/TinGooglePlayServicesChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static canUseGooglePlayServices(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskWrites()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    sget-object v1, La5/b;->d:La5/b;

    sget v2, La5/c;->a:I

    invoke-virtual {v1, v2, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static shouldDisableBackgroundSync()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/background_sync/TinGooglePlayServicesChecker;->canUseGooglePlayServices(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "PlayServicesChecker"

    const-string v2, "Disabling Background Sync because Play Services is not up to date."

    invoke-static {v0, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
