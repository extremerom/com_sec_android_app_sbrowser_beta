.class public abstract Lf1/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/w0;

.field public b:[LX0/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lf1/w0;

    invoke-direct {v0}, Lf1/w0;-><init>()V

    invoke-direct {p0, v0}, Lf1/o0;-><init>(Lf1/w0;)V

    return-void
.end method

.method public constructor <init>(Lf1/w0;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/o0;->a:Lf1/w0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lf1/o0;->b:[LX0/b;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, Lf1/o0;->a:Lf1/w0;

    if-nez v0, :cond_0

    iget-object v0, v3, Lf1/w0;->a:Lf1/u0;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v3, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v1, v2}, Lf1/u0;->f(I)LX0/b;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, LX0/b;->a(LX0/b;LX0/b;)LX0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/o0;->f(LX0/b;)V

    iget-object v0, p0, Lf1/o0;->b:[LX0/b;

    const/16 v1, 0x10

    invoke-static {v1}, LG5/X2;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lf1/o0;->e(LX0/b;)V

    :cond_2
    iget-object v0, p0, Lf1/o0;->b:[LX0/b;

    const/16 v1, 0x20

    invoke-static {v1}, LG5/X2;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lf1/o0;->d(LX0/b;)V

    :cond_3
    iget-object v0, p0, Lf1/o0;->b:[LX0/b;

    const/16 v1, 0x40

    invoke-static {v1}, LG5/X2;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lf1/o0;->g(LX0/b;)V

    :cond_4
    return-void
.end method

.method public abstract b()Lf1/w0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public c(ILX0/b;)V
    .locals 3
    .param p2    # LX0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lf1/o0;->b:[LX0/b;

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [LX0/b;

    iput-object v0, p0, Lf1/o0;->b:[LX0/b;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lf1/o0;->b:[LX0/b;

    invoke-static {v0}, LG5/X2;->c(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract d(LX0/b;)V
    .param p1    # LX0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract e(LX0/b;)V
    .param p1    # LX0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract f(LX0/b;)V
    .param p1    # LX0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract g(LX0/b;)V
    .param p1    # LX0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
