.class public Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;,
        Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;
    }
.end annotation


# static fields
.field private static sTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;


# instance fields
.field private final mConnectionPool:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;

.field private final mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;


# direct methods
.method public constructor <init>(LI/j;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers;->wrap(LI/j;)Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->mConnectionPool:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;LI/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->notifyLocationUpdateError(LI/d;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->safeSendExtraCommand(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;
    .locals 4

    sget-object v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->sTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LI/j;

    invoke-direct {v2, v1}, LI/j;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getPermissionStore()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->get(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;)Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;-><init>(LI/j;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;)V

    sput-object v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->sTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->sTrustedWebActivityClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    return-object v0
.end method

.method private notifyLocationUpdateError(LI/d;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    invoke-virtual {p0, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "onNewLocationError"

    invoke-virtual {p1, p2, p0}, LI/d;->onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private safeSendExtraCommand(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TWAClient"

    const-string p2, "There was an error with the client implementation"

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkLocationPermission(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;

    invoke-direct {v0, p0, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V

    return-void
.end method

.method public checkNotificationPermission(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$string;->webapk_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V

    return-void
.end method

.method public connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;->onNoTwaFound()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->mPermissionManager:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->getAllDelegateApps(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->mConnectionPool:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$ConnectionPool;->connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/util/Set;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;->onNoTwaFound()V

    return-void
.end method

.method public startListeningLocationUpdates(Ljava/lang/String;ZLI/d;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$3;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;ZLI/d;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V

    return-void
.end method

.method public stopLocationUpdates(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$4;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$4;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V

    return-void
.end method
