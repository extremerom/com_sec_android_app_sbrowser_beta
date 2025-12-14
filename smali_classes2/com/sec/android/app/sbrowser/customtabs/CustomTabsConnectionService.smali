.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;
.super LH/t;
.source "SourceFile"


# instance fields
.field private mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LH/t;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUpSession(LH/y;)Z
    .locals 2
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanUpSession() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->cleanUpSession(LH/y;)V

    invoke-super {p0, p1}, LH/t;->cleanUpSession(LH/y;)Z

    move-result p0

    return p0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "extraCommand() commandName:"

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public mayLaunchUrl(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH/y;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mayLaunchUrl() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mayLaunchUrl() url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mayLaunchUrl(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public newSession(LH/y;)Z
    .locals 2
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newSession() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->newSession(LH/y;)Z

    move-result p0

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "Service#onBind()"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, LH/t;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "CustomTabsConnectionService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->loadInBackground()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "Service#onUnbind()"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public postMessage(LH/y;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postMessage() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "postMessage() message:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->postMessage(LH/y;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public receiveFile(LH/y;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveFile() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receiveFile() uri:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->receiveFile(LH/y;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public requestPostMessageChannel(LH/y;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "requestPostMessageChannel() session:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CustomTabsConnectionService"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "requestPostMessageChannel() sourceOrigin:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "requestPostMessageChannel() targetOrigin:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    new-instance p4, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {p4, p2}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Landroid/net/Uri;)V

    new-instance p2, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {p2, p3}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, p1, p4, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->requestPostMessageChannel(LH/y;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z

    move-result p0

    return p0
.end method

.method public updateVisuals(LH/y;Landroid/os/Bundle;)Z
    .locals 2
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateVisuals() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->updateVisuals(LH/y;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public validateRelationship(LH/y;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 3
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateRelationship() session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsConnectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "validateRelationship() relation:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "validateRelationship() origin:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v0, p3}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->validateRelationship(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public warmup(J)Z
    .locals 2

    const-string v0, "warmup() flags:"

    const-string v1, "CustomTabsConnectionService"

    invoke-static {p1, p2, v0, v1}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnectionService;->mConnection:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->warmup(J)Z

    move-result p0

    return p0
.end method
