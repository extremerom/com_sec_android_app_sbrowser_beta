.class public Lcom/osp/app/signin/sasdk/browser/BrowserUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MANUFACTURER_HONOR:Ljava/lang/String; = "HONOR"

.field private static final MANUFACTURER_HUAWEI:Ljava/lang/String; = "HUAWEI"

.field private static final MANUFACTURER_MEIZU:Ljava/lang/String; = "Meizu"

.field private static final MANUFACTURER_ONEPLUS:Ljava/lang/String; = "OnePlus"

.field private static final MANUFACTURER_OPPO:Ljava/lang/String; = "OPPO"

.field private static final MANUFACTURER_TCL:Ljava/lang/String; = "TCL"

.field private static final MANUFACTURER_VIVO:Ljava/lang/String; = "vivo"

.field private static final MANUFACTURER_XIAOMI:Ljava/lang/String; = "Xiaomi"

.field public static final PACKAGE_NAMES_FOR_CUSTOM_TAB_BROWSERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAMES_FOR_STAND_ALONE_BROWSERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_SAMSUNG_INTERNET:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final PACKAGE_SAMSUNG_INTERNET_BETA:Ljava/lang/String; = "com.sec.android.app.sbrowser.beta"

.field private static final TAG:Ljava/lang/String; = "BrowserUtil"

.field private static sUsableBrowsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "com.android.chrome"

    const-string v1, "org.mozilla.firefox"

    const-string v2, "com.sec.android.app.sbrowser"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->PACKAGE_NAMES_FOR_CUSTOM_TAB_BROWSERS:Ljava/util/List;

    const-string v10, "com.brave.browser"

    const-string v11, "com.microsoft.emmx"

    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "com.android.chrome"

    const-string v3, "org.mozilla.firefox"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.UCMobile"

    const-string v6, "sogou.mobile.explorer"

    const-string v7, "com.qihoo.browser"

    const-string v8, "com.android.browser"

    const-string v9, "com.vivo.browser"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->PACKAGE_NAMES_FOR_STAND_ALONE_BROWSERS:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBrowser(Landroid/content/Context;Landroid/app/Activity;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->createBrowser(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;

    move-result-object p0

    return-object p0
.end method

.method public static createBrowser(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->isCustomTabAvailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->isChinaManufacturer()Z

    move-result v2

    const-string v3, "is_samsung_internet"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->isSamsungInternetPackage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "createBrowser - isCustomTabNotAvailable ? "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChinaManufacturer ? "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromSamsungInternet ? "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BrowserUtil"

    invoke-static {v3, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    new-instance v0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->createCustomTabBrowser(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

    invoke-direct {v0, p0, p1, p2}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->createCustomTabBrowser(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    new-instance v0, Lcom/osp/app/signin/sasdk/browser/StandAloneBrowser;

    invoke-direct {v0, p0, p1, p2}, Lcom/osp/app/signin/sasdk/browser/StandAloneBrowser;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static createCustomTabBrowser(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setCustomTabBrowser(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)V

    return-object p0
.end method

.method private static getAvailableBrowserName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->isAvailableBrowserInstalledAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->isUsableBrowser(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static getAvailableCustomTabBrowserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->PACKAGE_NAMES_FOR_CUSTOM_TAB_BROWSERS:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->getAvailableBrowserName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableStandaloneBrowserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->PACKAGE_NAMES_FOR_STAND_ALONE_BROWSERS:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->getAvailableBrowserName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasNoUsableBrowser()Z
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static initUsableBrowsers(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://www.google.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "BrowserUtil"

    if-eqz v1, :cond_2

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resolveInfoList has "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Usable Browsers(Size) : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isAvailableBrowserInstalledAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "BrowserUtil"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_1

    :cond_0
    move v1, p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isAvailableBrowserInstalledAndEnabled ? "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static declared-synchronized isChinaManufacturer()Z
    .locals 3

    const-class v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "OPPO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vivo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TCL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "OnePlus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HONOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isCustomTabAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->getAvailableCustomTabBrowserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isPackageDisabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isPackageDisabled ? "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BrowserUtil"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private static isSamsungInternetPackage(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUsableBrowser(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->sUsableBrowsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
