.class Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDefault;
.super Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public isStatusBarHidden(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getCurrentStatus(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->isStatusBarHidden(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isTurnedOn(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSupportHideStatusBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isHideStatusBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToAddTopMargin(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public onToolbarOffsetChanged(Landroid/app/Activity;F)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isFinOnPageRunning(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getCurrentStatus(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->updateToolbarOffset(F)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "HideStatusBarControllerDefault"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Not focused activity: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isMainViewShowing(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "MainView is not showing"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    :cond_4
    :goto_0
    return-void
.end method
