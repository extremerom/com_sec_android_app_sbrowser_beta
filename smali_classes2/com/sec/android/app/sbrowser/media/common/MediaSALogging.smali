.class public Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fullscreen()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->getFullscreenScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static fullscreen(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->getFullscreenScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullscreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->getFullscreenScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getFullscreenScreenId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "710_FL"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "710_FR"

    return-object v0

    :cond_1
    const-string v0, "710"

    return-object v0
.end method

.method private static getMainScreenId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "201_FL"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "201_FR"

    return-object v0

    :cond_1
    const-string v0, "201"

    return-object v0
.end method

.method public static main(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->getMainScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onResume(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "312"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "309"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static popup(Ljava/lang/String;)V
    .locals 1

    const-string v0, "711"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static selectVideoHistory()V
    .locals 1

    const-string v0, "3217"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static videoHistory(Ljava/lang/String;)V
    .locals 1

    const-string v0, "309"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static videoHistoryActionMode()V
    .locals 1

    const-string v0, "312"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public static videoHistoryActionMode(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "312"

    int-to-long v1, p1

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
