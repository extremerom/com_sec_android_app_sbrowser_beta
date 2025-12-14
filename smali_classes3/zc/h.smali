.class public final Lzc/h;
.super Lyc/A;
.source "SourceFile"

# interfaces
.implements LBc/c;


# instance fields
.field public final b:LBc/b;

.field public final c:Lzc/i;

.field public final d:Lyc/d0;

.field public final e:Lyc/H;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZI)V
    .locals 7

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    sget-object p4, Lyc/H;->b:LA7/h;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lyc/H;->c:Lyc/H;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZZ)V

    return-void
.end method

.method public constructor <init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/h;->b:LBc/b;

    iput-object p2, p0, Lzc/h;->c:Lzc/i;

    iput-object p3, p0, Lzc/h;->d:Lyc/d0;

    iput-object p4, p0, Lzc/h;->e:Lyc/H;

    iput-boolean p5, p0, Lzc/h;->f:Z

    iput-boolean p6, p0, Lzc/h;->g:Z

    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final E0()Lyc/H;
    .locals 0

    iget-object p0, p0, Lzc/h;->e:Lyc/H;

    return-object p0
.end method

.method public final F0()Lyc/L;
    .locals 0

    iget-object p0, p0, Lzc/h;->c:Lzc/i;

    return-object p0
.end method

.method public final G()Lrc/o;
    .locals 2

    sget-object p0, LAc/h;->CAPTURED_TYPE_SCOPE:LAc/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, LAc/l;->a(LAc/h;Z[Ljava/lang/String;)LAc/g;

    move-result-object p0

    return-object p0
.end method

.method public final G0()Z
    .locals 0

    iget-boolean p0, p0, Lzc/h;->f:Z

    return p0
.end method

.method public final bridge synthetic H0(Lzc/f;)Lyc/w;
    .locals 0

    invoke-virtual {p0, p1}, Lzc/h;->O0(Lzc/f;)Lzc/h;

    move-result-object p0

    return-object p0
.end method

.method public final J0(Z)Lyc/d0;
    .locals 8

    new-instance v7, Lzc/h;

    iget-object v2, p0, Lzc/h;->c:Lzc/i;

    const/16 v6, 0x20

    iget-object v1, p0, Lzc/h;->b:LBc/b;

    iget-object v3, p0, Lzc/h;->d:Lyc/d0;

    iget-object v4, p0, Lzc/h;->e:Lyc/H;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZI)V

    return-object v7
.end method

.method public final bridge synthetic K0(Lzc/f;)Lyc/d0;
    .locals 0

    invoke-virtual {p0, p1}, Lzc/h;->O0(Lzc/f;)Lzc/h;

    move-result-object p0

    return-object p0
.end method

.method public final M0(Z)Lyc/A;
    .locals 8

    new-instance v7, Lzc/h;

    iget-object v2, p0, Lzc/h;->c:Lzc/i;

    const/16 v6, 0x20

    iget-object v1, p0, Lzc/h;->b:LBc/b;

    iget-object v3, p0, Lzc/h;->d:Lyc/d0;

    iget-object v4, p0, Lzc/h;->e:Lyc/H;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZI)V

    return-object v7
.end method

.method public final N0(Lyc/H;)Lyc/A;
    .locals 8

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lzc/h;

    iget-boolean v7, p0, Lzc/h;->g:Z

    iget-object v2, p0, Lzc/h;->b:LBc/b;

    iget-object v3, p0, Lzc/h;->c:Lzc/i;

    iget-object v4, p0, Lzc/h;->d:Lyc/d0;

    iget-boolean v6, p0, Lzc/h;->f:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZZ)V

    return-object v0
.end method

.method public final O0(Lzc/f;)Lzc/h;
    .locals 11

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lzc/h;->c:Lzc/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lzc/i;->a:Lyc/Q;

    invoke-virtual {v1, p1}, Lyc/Q;->d(Lzc/f;)Lyc/Q;

    move-result-object v1

    iget-object v2, v0, Lzc/i;->b:Lsb/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, LDb/J;

    const/16 v4, 0x14

    invoke-direct {v2, v4, v0, p1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object p1, v0, Lzc/i;->c:Lzc/i;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    new-instance v6, Lzc/i;

    iget-object v0, v0, Lzc/i;->d:LJb/W;

    invoke-direct {v6, v1, v2, p1, v0}, Lzc/i;-><init>(Lyc/Q;Lsb/a;Lzc/i;LJb/W;)V

    iget-object p1, p0, Lzc/h;->d:Lyc/d0;

    if-eqz p1, :cond_2

    move-object v7, p1

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    new-instance p1, Lzc/h;

    iget-boolean v9, p0, Lzc/h;->f:Z

    const/16 v10, 0x20

    iget-object v5, p0, Lzc/h;->b:LBc/b;

    iget-object v8, p0, Lzc/h;->e:Lyc/H;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZI)V

    return-object p1
.end method
