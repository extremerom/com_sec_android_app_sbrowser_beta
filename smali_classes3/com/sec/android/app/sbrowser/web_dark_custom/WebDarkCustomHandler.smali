.class public Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;
    }
.end annotation


# static fields
.field private static sDebugEnabled:Z = false


# instance fields
.field private mCustomCssApplied:Z

.field private mDarkMode:I

.field private mDarkModeObserver:Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDelegate:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkMode:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->lambda$evaluateJavaScript$0(Ljava/lang/String;)V

    return-void
.end method

.method private static isEnabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->sDebugEnabled:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v1

    const-string v2, "WebDarkCustom"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isRequired()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isUseWebsiteDarkThemeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$evaluateJavaScript$0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WebDarkCustomHandler"

    const-string v1, "Evaluated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDelegate:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;->evaluateJavaScript(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDarkModeObserver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkModeObserver:Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/web_dark_custom/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/b;-><init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkModeObserver:Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkModeObserver:Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->addObserver(Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;)V

    return-void
.end method

.method public applyCustomCss()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public applyCustomCssInThread()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDelegate:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getCustomScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->evaluateJavaScript(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->removeDarkModeObserver()V

    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCustomCssApplied()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    return p0
.end method

.method public getDarkMode()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkMode:I

    return p0
.end method

.method public onTabHidden()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->removeDarkModeObserver()V

    return-void
.end method

.method public onTabShown()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->updateCustomCss(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->addDarkModeObserver()V

    return-void
.end method

.method public onUrlChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    return-void
.end method

.method public removeCustomCss()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getRemoveScript()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->evaluateJavaScript(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    return-void
.end method

.method public removeDarkModeObserver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkModeObserver:Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkModeObserver:Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;)V

    :cond_0
    return-void
.end method

.method public setCustomCssApplied(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    return-void
.end method

.method public updateCustomCss(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->applyCustomCss()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mCustomCssApplied:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->removeCustomCss()V

    :cond_3
    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->mDarkMode:I

    return-void
.end method
