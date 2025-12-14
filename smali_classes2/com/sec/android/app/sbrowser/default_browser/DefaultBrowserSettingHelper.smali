.class Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;


# instance fields
.field private mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf425b

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetBySemRoleManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetBySemRoleManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->sInstance:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->sInstance:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->sInstance:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    return-object v0
.end method


# virtual methods
.method public getCurrentBrowserSetting()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;

    return-object p0
.end method

.method public isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;->isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onRoleManagerResult(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;->onResult(Landroid/content/Context;I)V

    return-void
.end method

.method public resetBrowserSettingHelperInstance()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->sInstance:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    return-void
.end method

.method public setSamsungInternetAsDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->mDefaultBrowserSetting:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;->setSamsungInternetAsDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V

    return-void
.end method
