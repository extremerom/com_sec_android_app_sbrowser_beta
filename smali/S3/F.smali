.class public final LS3/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/s;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LS3/F;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LH6/g;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LH6/g;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LS3/F;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LS3/F;->a:I

    iput-object p2, p0, LS3/F;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, LS3/F;->a:I

    iput-object p2, p0, LS3/F;->c:Ljava/lang/Object;

    iput-boolean p3, p0, LS3/F;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LS3/F;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS3/F;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, LS3/F;->b:Z

    return-void
.end method

.method public constructor <init>(Ld1/e;Z)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LS3/F;->a:I

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, LS3/F;-><init>(ILjava/lang/Object;)V

    iput-boolean p2, p0, LS3/F;->b:Z

    return-void
.end method


# virtual methods
.method public K(Ls/i;)Z
    .locals 1

    iget-object p0, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p0, Lm/C;

    iget-object p0, p0, Lm/C;->b:Lm/s;

    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Lm/s;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public a(Ls/i;Z)V
    .locals 1

    iget-boolean p2, p0, LS3/F;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, LS3/F;->b:Z

    iget-object p2, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p2, Lm/C;

    iget-object v0, p2, Lm/C;->a:Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    iget-object p2, p2, Lm/C;->b:Lm/s;

    const/16 v0, 0x6c

    invoke-virtual {p2, v0, p1}, Lm/s;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LS3/F;->b:Z

    return-void
.end method

.method public b(Lcom/google/ar/core/F;)V
    .locals 3

    iget-object v0, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LS3/F;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {v1, p1}, Lcom/google/ar/core/InstallActivity;->f(Lcom/google/ar/core/F;)V

    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {p1}, Lcom/google/ar/core/InstallActivity;->g()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/ar/core/v;->m:Lcom/google/ar/core/v;

    iget-boolean p1, p1, Lcom/google/ar/core/v;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {p1}, Lcom/google/ar/core/InstallActivity;->e()V

    :cond_2
    iget-object p1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/ar/core/InstallActivity;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/ar/core/InstallActivity;

    new-instance v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    invoke-direct {v2}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    :goto_0
    iput-boolean v1, p0, LS3/F;->b:Z

    monitor-exit v0

    return-void

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c(Lcom/google/ar/core/exceptions/FatalException;)V
    .locals 3

    iget-object v0, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LS3/F;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LS3/F;->b:Z

    iget-object v1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/ar/core/InstallActivity;

    sget-object v2, Lcom/google/ar/core/F;->b:Lcom/google/ar/core/F;

    invoke-virtual {v1, v2}, Lcom/google/ar/core/InstallActivity;->f(Lcom/google/ar/core/F;)V

    iget-object p0, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, LS3/F;->b:Z

    return p0
.end method

.method public e(ILjava/lang/CharSequence;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-ltz p1, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-ltz v1, :cond_6

    iget-object v1, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast v1, Ld1/e;

    if-nez v1, :cond_0

    invoke-virtual {p0}, LS3/F;->d()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, p1, :cond_3

    if-ne v4, v2, :cond_3

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    sget-object v5, Ld1/f;->a:LS3/F;

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    if-eq v4, v2, :cond_1

    packed-switch v4, :pswitch_data_0

    move v4, v2

    goto :goto_1

    :cond_1
    :pswitch_0
    move v4, v1

    goto :goto_1

    :cond_2
    :pswitch_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    if-eq v4, v0, :cond_4

    invoke-virtual {p0}, LS3/F;->d()Z

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized f(LS3/C;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LS3/F;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, LS3/F;->b:Z

    invoke-interface {p1}, LS3/C;->c()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LS3/F;->b:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p2, p0, LS3/F;->c:Ljava/lang/Object;

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LS3/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, LS3/F;->b:Z

    if-eqz v0, :cond_0

    const-string p0, "FALL_THROUGH"

    goto :goto_0

    :cond_0
    iget-object p0, p0, LS3/F;->c:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
