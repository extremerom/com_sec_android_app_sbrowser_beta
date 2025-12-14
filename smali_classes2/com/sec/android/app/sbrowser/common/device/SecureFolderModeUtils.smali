.class public Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOGTAG:Ljava/lang/String; = "SecureFolderModeUtils"


# direct methods
.method public static declared-synchronized isSecureFolderMode()Ljava/lang/Boolean;
    .locals 7

    const-string v0, "isSecureFolderMode isSecureFolderId : "

    const-string v1, "isSecureFolderMode myUserId : "

    const-class v2, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-object v3

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v1
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    :goto_0
    const v4, 0xf4252

    :try_start_3
    invoke-static {v4}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/PersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->setSecureFolderMode(Ljava/lang/Boolean;)V
    :try_end_3
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_4
    sget-object v4, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return-object v0

    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
