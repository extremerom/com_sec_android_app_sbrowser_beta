.class public Lcom/sec/android/app/sbrowser/webapp/WebappUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getDisplayCutoutMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getOpaqueColor(I)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getOpaqueColor(I)I

    move-result p0

    return p0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setFullScreen(Landroid/view/Window;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public static setNavBarUpdate(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static shoudUseLightForegroundOnBackground(I)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result p0

    return p0
.end method
