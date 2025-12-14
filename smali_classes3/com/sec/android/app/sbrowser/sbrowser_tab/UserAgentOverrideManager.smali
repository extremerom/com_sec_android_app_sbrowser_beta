.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mIsReloadRequiredIfTabIsShowing:Z

.field private final mReloadHandler:Landroid/os/Handler;

.field private final mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field private final mUserAgentOption:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mReloadHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mUserAgentOption:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->lambda$reloadIfBackForwardNav$0(Z)V

    return-void
.end method

.method private isDesktopMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private static isDesktopWebsiteEnabled(Z)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteForDexEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isDesktopWebsiteEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private synthetic lambda$reloadIfBackForwardNav$0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "reloadIfBackForwardNav - useDesktopUserAgent: "

    const-string v1, "UserAgentOverrideManager"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setUseDesktopUserAgent(ZZ)V

    return-void
.end method


# virtual methods
.method public getOverrideUserAgentOption()I
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->isDesktopMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getUserAgentOption(Z)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OverrideUserAgentOption : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgentOverrideManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUseDesktopUserAgent()Z

    move-result p0

    return p0
.end method

.method public getUserAgentOption(Z)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mUserAgentOption:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->getUserAgentOption(Z)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->isDesktopWebsiteEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    :cond_0
    return p0
.end method

.method public reloadIfBackForwardNav(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mReloadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getOverrideUserAgentOption()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getUseDesktopUserAgent()Z

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mReloadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public reloadIfRequired()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mIsReloadRequiredIfTabIsShowing:Z

    if-eqz v0, :cond_0

    const-string v0, "UserAgentOverrideManager"

    const-string v1, "reloadIfRequired : reload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reloadOriginalRequestUrl()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mIsReloadRequiredIfTabIsShowing:Z

    :cond_0
    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mIsReloadRequiredIfTabIsShowing:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mUserAgentOption:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->isDesktopMode()Z

    move-result v2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->setUserAgentOption(ZI)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->setUseDesktopUserAgent(ZZ)V

    return-void
.end method

.method public setUserAgentOption(ZII)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserAgentOption phone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgentOverrideManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mUserAgentOption:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->setUserAgentOption(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mUserAgentOption:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->setUserAgentOption(ZI)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getUserAgentOption(Z)I

    move-result p3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->isDesktopMode()Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DesktopMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_2

    if-eq p2, p3, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mIsReloadRequiredIfTabIsShowing:Z

    if-eqz v0, :cond_0

    move p2, p3

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setUseDesktopUserAgent(ZZ)V

    :cond_2
    return-void
.end method
