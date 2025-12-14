.class public abstract LWc/i;
.super LNc/Z;
.source "SourceFile"


# instance fields
.field public b:LWc/d;


# virtual methods
.method public final G(Lib/h;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, LWc/i;->b:LWc/d;

    const/4 p1, 0x1

    const/4 v0, 0x2

    invoke-static {p0, p2, p1, v0}, LWc/d;->c(LWc/d;Ljava/lang/Runnable;ZI)V

    return-void
.end method

.method public final K()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, LWc/i;->b:LWc/d;

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, LWc/i;->b:LWc/d;

    const/4 p1, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p2, p1, v0}, LWc/d;->c(LWc/d;Ljava/lang/Runnable;ZI)V

    return-void
.end method
