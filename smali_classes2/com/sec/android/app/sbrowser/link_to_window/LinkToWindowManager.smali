.class public Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;
    }
.end annotation


# instance fields
.field private mIsLinkToWindowEnabled:Z

.field private mLinkToWindowReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mIsLinkToWindowEnabled:Z

    const-string p0, "LinkToWindowManager"

    const-string v0, "LinkToWindowManager created"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->lambda$getLinkToWindowLatestTabs$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->onLinkToWindowDisabled()V

    return-void
.end method

.method private bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->onLinkToWindowEnabled()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->setFaviconToBundle(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    return-object v0
.end method

.method private getLinkToWindowAvailableTabs(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "LinkToWindowManager"

    const-string v1, "getLinkToWindowAvailableTabs - invalid url"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private getLinkToWindowLatestTabs(Ljava/util/List;ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;I",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, LB0/r;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, LB0/r;-><init>(I)V

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, p2, :cond_3

    return-object p1

    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge p0, p2, :cond_4

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-object p3
.end method

.method private isPermissionNeeded()Z
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.mdx"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    const-wide/32 v5, 0xf86ea21

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :catch_0
    const-string p0, "LinkToWindowManager"

    const-string v1, "Couldn\'t find mdx package"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$getLinkToWindowLatestTabs$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private notifyAliveToLinkToWindow()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SBROWSER_IS_ALIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.mdx"

    const-string v3, "com.samsung.android.mdx.windowslink.interactor.multidisplay.browsercontinuity.BrowserContinuityEnableReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyAliveToLinkToWindow, package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinkToWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onLinkToWindowDisabled()V
    .locals 2

    const-string v0, "LinkToWindowManager"

    const-string v1, "onLinkToWindowDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mIsLinkToWindowEnabled:Z

    return-void
.end method

.method private onLinkToWindowEnabled()V
    .locals 2

    const-string v0, "LinkToWindowManager"

    const-string v1, "onLinkToWindowEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mIsLinkToWindowEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendTabData()V

    return-void
.end method

.method private setFaviconToBundle(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "favicon"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getFaviconByUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getIconFetcher()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Favicon from cache, url: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LinkToWindowManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v3}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;->onFaviconAvailable(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getIconFetcher()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;-><init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;)V

    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    return-void
.end method

.method public getIconFetcher()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p0

    return-object p0
.end method

.method public getLatestLinkToWindowTabs(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_manager/TabManager;",
            "I)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getLinkToWindowAvailableTabs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getLinkToWindowLatestTabs(Ljava/util/List;ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isLinkToWindowEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mIsLinkToWindowEnabled:Z

    return p0
.end method

.method public registerReceiver()V
    .locals 5

    const-string v0, "registerReceiver"

    const-string v1, "LinkToWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mLinkToWindowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$1;-><init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mLinkToWindowReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.intent.action.SBROWSER_LINK_TO_WINDOW_ENABLED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.SBROWSER_LINK_TO_WINDOW_DISABLED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mLinkToWindowReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.android.mdx.permission.ADD_RECENT_WEBSITES"

    invoke-static {v2, v3, v0, v4}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->notifyAliveToLinkToWindow()V

    const-string p0, "registerReceiver done"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->isPermissionNeeded()Z

    move-result p0

    const-string v0, "LinkToWindowManager"

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.mdx.permission.ADD_RECENT_WEBSITES"

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "sendBroadcast LTW data 2"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "sendBroadcast LTW data 1"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendDataImpl()V
    .locals 19

    move-object/from16 v8, p0

    const-string v0, "sendTabData start"

    const-string v9, "LinkToWindowManager"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v0, "sendTabData, activity is null, return"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "sendTabData, tabManager is null, return"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getLatestLinkToWindowTabs(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)Ljava/util/List;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.SBROWSER_LINK_TO_WINDOW_DATA"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.mdx"

    const-string v2, "com.samsung.android.mdx.windowslink.interactor.multidisplay.browsercontinuity.BrowserContinuityEnableReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const-string v0, "tab_count"

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v13, :cond_2

    invoke-virtual {v8, v10, v12}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_2
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v15, v0

    :goto_0
    if-ge v15, v13, :cond_3

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v2, "url"

    invoke-virtual {v7, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTimestampMillis()J

    move-result-wide v2

    const-string v0, "time_stamp"

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Tab data - Index: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeStamp: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", title: "

    const-string v3, ", url: "

    invoke-static {v0, v2, v1, v3, v6}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v14

    move-object/from16 v16, v9

    move-object v9, v5

    move v5, v13

    move-object/from16 v17, v11

    move-object v11, v6

    move-object v6, v10

    move-object/from16 v18, v10

    move-object v10, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;-><init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/atomic/AtomicInteger;ILandroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v8, v11, v9}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getFaviconByUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;)V

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    goto :goto_0

    :cond_3
    return-void
.end method

.method public sendTabData()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceCount()I

    move-result v0

    const-string v1, "unregisterReceiver, instance Count: "

    const-string v2, "LinkToWindowManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mLinkToWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->mLinkToWindowReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "unregisterReceiver done"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p0, "unregisterReceiver failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
