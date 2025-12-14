.class public Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

.field private final mTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->mTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;)Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLandroid/content/ComponentName;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLandroid/content/ComponentName;I)V

    return-void
.end method

.method private updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLandroid/content/ComponentName;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x4

    invoke-virtual {p0, p1, p4, v1, p5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->updatePermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;II)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TWALocations"

    const-string p4, "Updating origin location permissions to: %b"

    invoke-static {p1, p4, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p3, p5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->runPermissionCallback(JI)V

    return-void
.end method


# virtual methods
.method public checkPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->mTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    new-instance v1, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;J)V

    invoke-virtual {v0, p2, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->checkLocationPermission(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V

    return-void
.end method
