.class public final LH/x;
.super LH/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:LH/y;


# direct methods
.method public constructor <init>(LH/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/x;->a:LH/y;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1, p2}, Lc/b;->t(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1, p2}, Lc/b;->m(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onActivityLayout(IIIIILandroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object v0, p0, LH/y;->a:Lc/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lc/b;->h(IIIIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onActivityResized(IILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1, p2, p3}, Lc/b;->d0(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1}, Lc/b;->o0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onMinimized(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1}, Lc/b;->X(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1, p2}, Lc/b;->g0(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1, p2}, Lc/b;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1, p2, p3, p4}, Lc/b;->p0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onUnminimized(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1}, Lc/b;->a0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, LH/x;->a:LH/y;

    iget-object p0, p0, LH/y;->a:Lc/b;

    invoke-interface {p0, p1}, Lc/b;->x(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabsSessionToken"

    const-string p1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
