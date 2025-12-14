.class public final LZb/f;
.super Lyc/o;
.source "SourceFile"

# interfaces
.implements Lyc/l;


# instance fields
.field public final b:Lyc/A;


# direct methods
.method public constructor <init>(Lyc/A;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZb/f;->b:Lyc/A;

    return-void
.end method


# virtual methods
.method public final G0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final L0(Lyc/H;)Lyc/d0;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LZb/f;

    iget-object p0, p0, LZb/f;->b:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p0

    invoke-direct {v0, p0}, LZb/f;-><init>(Lyc/A;)V

    return-object v0
.end method

.method public final M0(Z)Lyc/A;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object p0, p0, LZb/f;->b:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LZb/f;

    iget-object p0, p0, LZb/f;->b:Lyc/A;

    invoke-virtual {p0, p1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object p0

    invoke-direct {v0, p0}, LZb/f;-><init>(Lyc/A;)V

    return-object v0
.end method

.method public final O0()Lyc/A;
    .locals 0

    iget-object p0, p0, LZb/f;->b:Lyc/A;

    return-object p0
.end method

.method public final Q0(Lyc/A;)Lyc/o;
    .locals 0

    new-instance p0, LZb/f;

    invoke-direct {p0, p1}, LZb/f;-><init>(Lyc/A;)V

    return-object p0
.end method

.method public final w0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final y(Lyc/w;)Lyc/d0;
    .locals 3

    const-string p0, "replacement"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    invoke-static {p0}, Lyc/b0;->f(Lyc/w;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lyc/b0;->e(Lyc/w;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of p1, p0, Lyc/A;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p0, Lyc/A;

    invoke-virtual {p0, v0}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p1

    invoke-static {p0}, Lyc/b0;->f(Lyc/w;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, LZb/f;

    invoke-direct {p0, p1}, LZb/f;-><init>(Lyc/A;)V

    move-object p1, p0

    goto :goto_2

    :cond_2
    instance-of p1, p0, Lyc/r;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lyc/r;

    iget-object v1, p1, Lyc/r;->b:Lyc/A;

    invoke-virtual {v1, v0}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v2

    invoke-static {v1}, Lyc/b0;->f(Lyc/w;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, LZb/f;

    invoke-direct {v1, v2}, LZb/f;-><init>(Lyc/A;)V

    move-object v2, v1

    :goto_0
    iget-object p1, p1, Lyc/r;->c:Lyc/A;

    invoke-virtual {p1, v0}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v0

    invoke-static {p1}, Lyc/b0;->f(Lyc/w;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, LZb/f;

    invoke-direct {p1, v0}, LZb/f;-><init>(Lyc/A;)V

    move-object v0, p1

    :goto_1
    invoke-static {v2, v0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p1

    invoke-static {p0}, Lyc/c;->g(Lyc/w;)Lyc/w;

    move-result-object p0

    invoke-static {p1, p0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
