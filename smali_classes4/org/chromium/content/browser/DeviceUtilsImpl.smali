.class public Lorg/chromium/content/browser/DeviceUtilsImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private static isDisplayTabletSized(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayUtil;->getCurrentSmallestScreenWidthAllowingFallback(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lorg/chromium/content/browser/DeviceUtilsImpl;->isDisplayTabletSized(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "use-mobile-user-agent"

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/chromium/base/CommandLine;->removeSwitch(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method
