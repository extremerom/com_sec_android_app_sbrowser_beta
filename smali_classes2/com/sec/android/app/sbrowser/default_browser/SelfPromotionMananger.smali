.class public Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefaultSettingHelper:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

.field private mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->mDefaultSettingHelper:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->lambda$showDialogIfNeeded$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    return-object v0
.end method

.method public static isSetAsDefaultSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const v0, 0xf425b

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showDialogIfNeeded$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->setDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V

    return-void
.end method


# virtual methods
.method public isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->mDefaultSettingHelper:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onRoleManagerResult(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->mDefaultSettingHelper:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->onRoleManagerResult(Landroid/content/Context;I)V

    return-void
.end method

.method public setDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->mDefaultSettingHelper:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSettingHelper;->setSamsungInternetAsDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserUpdatedCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserUpdatedCallback;->onDefaultBrowserUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showDialogIfNeeded(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->isSetAsDefaultSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SelfPromotionMananger"

    if-nez v0, :cond_0

    const-string p0, "Set as default is not supported!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "Block showing set as default dialog before agree help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "Default browser is already Samsung internet!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p2, "disable-default-browser-dialog"

    invoke-static {p2}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "Default browser dialog is blocked by commandline switch."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p2, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->showIfNeeded(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
