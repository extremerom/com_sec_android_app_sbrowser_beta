.class public Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthPromptActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostInflation()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onPostInflation()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLandscapeIrisPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_NORMAL_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :cond_0
    return-void
.end method

.method public onPreInflation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->onPreInflation()V

    return-void
.end method

.method public setContentView()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    const v0, 0x7f0e0464

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    return-void
.end method

.method public shouldApplyDialogStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
