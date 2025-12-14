.class public Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

.field private final mTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->mTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->lambda$requestPermission$2(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/Callback;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->lambda$findWebApkPackageName$4(Lorg/chromium/base/Callback;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->lambda$requestPermissionFromWebApk$3(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->lambda$onWebApkLaunch$1(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->lambda$onOriginVerified$0(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private findWebApkPackageName(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lcom/sec/terrace/browser/autofill/a;

    invoke-direct {p1, p2, p0}, Lcom/sec/terrace/browser/autofill/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinSBrowserWebApkHost;->checkSBrowserBacksWebApkAsync(Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;)V

    return-void
.end method

.method private static synthetic lambda$findWebApkPackageName$4(Lorg/chromium/base/Callback;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onOriginVerified$0(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/content/ComponentName;I)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onWebApkLaunch$1(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$requestPermission$2(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->requestPermissionFromWebApk(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestPermissionFromWebApk$3(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;I)V

    return-void
.end method

.method private requestPermissionFromWebApk(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    const/4 p4, 0x5

    invoke-virtual {p0, p1, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->resetStoredPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    const/4 p0, 0x2

    invoke-static {p2, p3, p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->runPermissionCallback(JI)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->getInstance()Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    move-result-object v0

    new-instance v7, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V

    invoke-virtual {v0, p4, v7}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->requestNotificationPermission(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method private updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;I)V
    .locals 3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PermissionUpdater"

    const-string v2, "Updating notification permission to: %d"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p4, v0, p5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;II)V

    invoke-static {p2, p3, p5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->runPermissionCallback(JI)V

    return-void
.end method


# virtual methods
.method public onOriginVerified(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->mTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    new-instance v0, Lcom/sec/terrace/browser/autofill/a;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/autofill/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->checkNotificationPermission(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V

    return-void
.end method

.method public onWebApkLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->getInstance()Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    move-result-object p1

    new-instance v1, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->checkNotificationPermission(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public requestPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;J)V

    invoke-direct {p0, p2, v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->findWebApkPackageName(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    return-void
.end method
