.class public abstract Landroidx/lifecycle/M;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;


# instance fields
.field public final a:LZ3/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/M;)V

    iput-object v0, p0, Landroidx/lifecycle/M;->a:LZ3/x;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/D;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/M;->a:LZ3/x;

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/L;

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    iget-object p0, p0, Landroidx/lifecycle/M;->a:LZ3/x;

    invoke-virtual {p0, p1}, LZ3/x;->D(Landroidx/lifecycle/B;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/B;->ON_CREATE:Landroidx/lifecycle/B;

    iget-object v1, p0, Landroidx/lifecycle/M;->a:LZ3/x;

    invoke-virtual {v1, v0}, LZ3/x;->D(Landroidx/lifecycle/B;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    iget-object v1, p0, Landroidx/lifecycle/M;->a:LZ3/x;

    invoke-virtual {v1, v0}, LZ3/x;->D(Landroidx/lifecycle/B;)V

    sget-object v0, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    invoke-virtual {v1, v0}, LZ3/x;->D(Landroidx/lifecycle/B;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    iget-object v1, p0, Landroidx/lifecycle/M;->a:LZ3/x;

    invoke-virtual {v1, v0}, LZ3/x;->D(Landroidx/lifecycle/B;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
