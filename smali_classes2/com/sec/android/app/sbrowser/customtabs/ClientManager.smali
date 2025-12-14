.class Lcom/sec/android/app/sbrowser/customtabs/ClientManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$CalledWarmup;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$PredictionStatus;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$MayLaunchUrlType;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;,
        Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionDisconnectStatus;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LH/y;",
            "Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

.field private mWarmupHasBeenCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mWarmupHasBeenCalled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->loadInBackground()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$resetPostMessageHandlerForSession$5(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LH/y;IZLcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$validateRelationshipInternal$3(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LH/y;IZLcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Landroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$initializeWithPostMessageOriginForSession$2(Landroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void
.end method

.method private declared-synchronized callOnSession(LH/y;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH/y;",
            "TT;",
            "Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;->run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized callOnSession(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;->run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private cleanupSessionInternal(LH/y;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$bindToPostMessageServiceForSession$1(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$postMessage$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$dontKeepAliveForSession$8(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$cleanupSessionInternal$9(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->lambda$validateRelationshipInternal$4(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void
.end method

.method private synthetic lambda$bindToPostMessageServiceForSession$1(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->serviceConnection:LH/C;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, LH/C;->bindSessionToPostMessageService(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$cleanupSessionInternal$9(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->logConnectionClosed(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->serviceConnection:LH/C;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, LH/C;->cleanup(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->originVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->cleanUp()V

    :cond_1
    iget-object v0, p2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->disconnectCallback:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;->run(LH/y;)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    iget p1, p2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method private static synthetic lambda$dontKeepAliveForSession$8(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getKeepAliveConnection()Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->disconnect()V

    return-void
.end method

.method private static synthetic lambda$initializeWithPostMessageOriginForSession$2(Landroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-virtual {p2, p0, p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->initializeWithPostMessageUri(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$postMessage$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Ljava/lang/Integer;
    .locals 0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->postMessageFromClientApp(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$resetPostMessageHandlerForSession$5(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->reset(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method private synthetic lambda$validateRelationshipInternal$3(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LH/y;IZLcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p9, :cond_0

    if-eqz p10, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "online"

    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->uri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p9, p2}, LH/c;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    iget-object p0, p6, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-virtual {p5}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->uri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->setPostMessageTargetUri(Landroid/net/Uri;)V

    :cond_2
    iget-object p0, p6, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-virtual {p0, p7, p8, p9, p10}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->onOriginVerified(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$validateRelationshipInternal$4(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->originVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->start(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void
.end method

.method private logConnectionClosed(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->a(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getKeepAliveConnection()Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    const-string v0, "logConnectionClosed() - SessionDisconnectStatus : "

    const-string v1, "ClientManager"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->b(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Z)V

    return-void
.end method

.method private declared-synchronized validateRelationshipInternal(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Z)Z
    .locals 10
    .param p4    # Lcom/sec/terrace/browser/customtabs/TerraceOrigin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/sec/android/app/sbrowser/customtabs/e;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p5

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/e;-><init>(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LH/y;IZLcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    new-instance p1, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, v9, p4, p2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;-><init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;Ljava/lang/String;I)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->originVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/f;

    const/4 p4, 0x0

    invoke-direct {p1, p4, v0, p3}, Lcom/sec/android/app/sbrowser/customtabs/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mLinkedOrigins:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public bindToPostMessageServiceForSession(LH/y;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const-string v0, "ClientManager"

    const-string v1, "bindToPostMessageServiceForSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized cleanupSession(LH/y;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, LH/y;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->logConnectionClosed(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->setCustomTabsCallback(LH/c;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->cleanupSessionInternal(LH/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized cleanupUnusedSessions()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH/y;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getCustomTabsCallback()LH/c;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->cleanupSessionInternal(LH/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized dontKeepAliveForSession(LH/y;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/d;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCallbackForSession(LH/y;)LH/c;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/d;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH/c;

    return-object p0
.end method

.method public getClientPackageNameForSession(LH/y;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/d;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getDefaultReferrerForSession(LH/y;)Lcom/sec/terrace/browser/TerraceReferrer;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getClientPackageNameForSession(LH/y;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->constructValidReferrerForAuthority(Ljava/lang/String;)Lcom/sec/terrace/browser/TerraceReferrer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public initializeWithPostMessageOriginForSession(LH/y;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;)V

    return-void
.end method

.method public declared-synchronized isPrerenderingAllowed(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->isPrerenderingAllowed()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized keepAliveForSession(LH/y;Landroid/content/Intent;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getKeepAliveConnection()Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->connect()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->setKeepAliveConnection(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return p2

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_6
    :goto_3
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized newSession(LH/y;ILcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;LH/C;)Z
    .locals 8
    .param p4    # Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LH/C;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p1, LH/y;->c:LH/x;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    if-eqz p2, :cond_2

    iget-object p1, p1, LH/y;->c:LH/x;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->setCustomTabsCallback(LH/c;)V

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->b(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p1, LH/y;->c:LH/x;

    move-object v0, v7

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;-><init>(Landroid/content/Context;ILH/c;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;LH/C;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    return v0
.end method

.method public postMessage(LH/y;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/sec/android/app/sbrowser/customtabs/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public declared-synchronized recordUidHasCalledWarmup(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mWarmupHasBeenCalled:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerPrerenderRequest(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->registerPrerenderRequest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetPostMessageHandlerForSession(LH/y;Lcom/sec/terrace/Terrace;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/customtabs/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->callOnSession(LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;)V

    return-void
.end method

.method public declared-synchronized uidToSessions(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LH/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    iget v3, v3, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->uid:I

    if-ne v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH/y;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateStatsAndReturnWhetherAllowed(LH/y;ILjava/lang/String;Z)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->uid:I

    if-eq v1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v1, p1, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->lowConfidencePrediction:Z

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, p3, v3, v4, p4}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->setPredictionMetrics(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v2

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->updateStatsAndReturnWhetherAllowed()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_3
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized validateRelationship(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/os/Bundle;)Z
    .locals 6

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->validateRelationshipInternal(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized verifyAndInitializeWithPostMessageOriginForSession(LH/y;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->validateRelationshipInternal(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
