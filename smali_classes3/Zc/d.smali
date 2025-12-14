.class public final LZc/d;
.super LNc/w0;
.source "SourceFile"

# interfaces
.implements LNc/J;


# instance fields
.field public final b:LZc/c;


# direct methods
.method public constructor <init>(LNc/w0;)V
    .locals 1

    invoke-direct {p0}, LNc/x;-><init>()V

    new-instance v0, LZc/c;

    invoke-direct {v0, p1}, LZc/c;-><init>(LNc/x;)V

    iput-object v0, p0, LZc/d;->b:LZc/c;

    return-void
.end method


# virtual methods
.method public final G(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, LZc/d;->b:LZc/c;

    invoke-virtual {p0}, LZc/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/x;

    invoke-virtual {p0, p1, p2}, LNc/x;->G(Lib/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Lib/h;)Z
    .locals 0

    iget-object p0, p0, LZc/d;->b:LZc/c;

    invoke-virtual {p0}, LZc/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/x;

    invoke-virtual {p0, p1}, LNc/x;->H(Lib/h;)Z

    move-result p0

    return p0
.end method

.method public final K()LNc/w0;
    .locals 2

    iget-object v0, p0, LZc/d;->b:LZc/c;

    invoke-virtual {v0}, LZc/c;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LNc/w0;

    if-eqz v1, :cond_0

    check-cast v0, LNc/w0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LNc/w0;->K()LNc/w0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final d(JLNc/k;)V
    .locals 1

    iget-object p0, p0, LZc/d;->b:LZc/c;

    invoke-virtual {p0}, LZc/c;->a()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/J;

    if-eqz v0, :cond_0

    check-cast p0, LNc/J;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, LNc/G;->a:LNc/J;

    :cond_1
    invoke-interface {p0, p1, p2, p3}, LNc/J;->d(JLNc/k;)V

    return-void
.end method

.method public final k(JLjava/lang/Runnable;Lib/h;)LNc/P;
    .locals 1

    iget-object p0, p0, LZc/d;->b:LZc/c;

    invoke-virtual {p0}, LZc/c;->a()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/J;

    if-eqz v0, :cond_0

    check-cast p0, LNc/J;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, LNc/G;->a:LNc/J;

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, LNc/J;->k(JLjava/lang/Runnable;Lib/h;)LNc/P;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, LZc/d;->b:LZc/c;

    invoke-virtual {p0}, LZc/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/x;

    invoke-virtual {p0, p1, p2}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    return-void
.end method
