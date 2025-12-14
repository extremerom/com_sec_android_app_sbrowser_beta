.class public Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;


# instance fields
.field private final mLocationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

.field private final mNotificationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

.field private final mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mNotificationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mLocationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

    return-void
.end method

.method private appHandlesBrowsableIntent(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/base/PackageManagerUtils;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public static get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;
    .locals 4

    sget-object v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->sPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getPermissionStore()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->get(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;)Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->get()Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V

    new-instance v2, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->get()Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V

    new-instance v3, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    invoke-direct {v3, v0, v1, v2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;)V

    sput-object v3, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->sPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    return-object v3
.end method


# virtual methods
.method public getLocationPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mLocationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->checkPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V

    return-void
.end method

.method public onOriginVerified(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->appHandlesBrowsableIntent(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "PermissionUpdater"

    const-string p2, "Package does not handle Browsable Intents for the origin."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    invoke-virtual {v0, p1, p3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->addDelegateApp(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mNotificationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->onOriginVerified(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWebApkLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mNotificationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->onWebApkLaunch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestNotificationPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->mNotificationPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->requestPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V

    return-void
.end method
