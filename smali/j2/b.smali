.class public final Lj2/b;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# instance fields
.field public final a:LX4/c;

.field public b:Ljava/lang/Object;

.field public c:Lj2/c;


# direct methods
.method public constructor <init>(LX4/c;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lj2/b;->a:LX4/c;

    iget-object v0, p1, LX4/c;->a:Lj2/b;

    if-nez v0, :cond_0

    iput-object p0, p1, LX4/c;->a:Lj2/b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a listener registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lj2/b;->b:Ljava/lang/Object;

    iget-object v1, p0, Lj2/b;->c:Lj2/c;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    :cond_0
    return-void
.end method

.method public final onActive()V
    .locals 1

    iget-object p0, p0, Lj2/b;->a:LX4/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, LX4/c;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LX4/c;->d:Z

    iput-boolean v0, p0, LX4/c;->c:Z

    iget-object v0, p0, LX4/c;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    invoke-virtual {p0}, LX4/c;->a()V

    new-instance v0, Lk2/a;

    invoke-direct {v0, p0}, Lk2/a;-><init>(LX4/c;)V

    iput-object v0, p0, LX4/c;->g:Lk2/a;

    invoke-virtual {p0}, LX4/c;->b()V

    return-void
.end method

.method public final onInactive()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lj2/b;->a:LX4/c;

    iput-boolean v0, p0, LX4/c;->b:Z

    return-void
.end method

.method public final removeObserver(Landroidx/lifecycle/Y;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lj2/b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lj2/b;->c:Lj2/c;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj2/b;->a:LX4/c;

    invoke-static {p0, v0}, LG5/F2;->b(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
