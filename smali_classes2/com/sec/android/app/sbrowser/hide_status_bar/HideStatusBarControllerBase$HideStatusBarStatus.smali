.class Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideStatusBarStatus"
.end annotation


# instance fields
.field private mIsStatusBarHidden:Z

.field private mTopControlsOffsetYPix:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/app/Activity;)Z
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayCutoutOnTop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFullScreenMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarHidden(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->isEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->mIsStatusBarHidden:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateToolbarOffset(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->mIsStatusBarHidden:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->mTopControlsOffsetYPix:F

    return-void
.end method
