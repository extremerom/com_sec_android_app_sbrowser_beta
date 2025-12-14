.class public Lf1/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lf1/w0;


# instance fields
.field public final a:Lf1/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lf1/n0;

    invoke-direct {v0}, Lf1/n0;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lf1/m0;

    invoke-direct {v0}, Lf1/m0;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lf1/o0;->b()Lf1/w0;

    move-result-object v0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v0}, Lf1/u0;->a()Lf1/w0;

    move-result-object v0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v0}, Lf1/u0;->b()Lf1/w0;

    move-result-object v0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v0}, Lf1/u0;->c()Lf1/w0;

    move-result-object v0

    sput-object v0, Lf1/u0;->b:Lf1/w0;

    return-void
.end method

.method public constructor <init>(Lf1/w0;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/u0;->a:Lf1/w0;

    return-void
.end method


# virtual methods
.method public a()Lf1/w0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/u0;->a:Lf1/w0;

    return-object p0
.end method

.method public b()Lf1/w0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/u0;->a:Lf1/w0;

    return-object p0
.end method

.method public c()Lf1/w0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/u0;->a:Lf1/w0;

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public e()Lf1/i;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf1/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lf1/u0;

    invoke-virtual {p0}, Lf1/u0;->n()Z

    move-result v1

    invoke-virtual {p1}, Lf1/u0;->n()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lf1/u0;->m()Z

    move-result v1

    invoke-virtual {p1}, Lf1/u0;->m()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object v1

    invoke-virtual {p1}, Lf1/u0;->j()LX0/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lf1/u0;->h()LX0/b;

    move-result-object v1

    invoke-virtual {p1}, Lf1/u0;->h()LX0/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lf1/u0;->e()Lf1/i;

    move-result-object p0

    invoke-virtual {p1}, Lf1/u0;->e()Lf1/i;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(I)LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, LX0/b;->e:LX0/b;

    return-object p0
.end method

.method public g()LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    return-object p0
.end method

.method public h()LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, LX0/b;->e:LX0/b;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lf1/u0;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lf1/u0;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object v2

    invoke-virtual {p0}, Lf1/u0;->h()LX0/b;

    move-result-object v3

    invoke-virtual {p0}, Lf1/u0;->e()Lf1/i;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i()LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    return-object p0
.end method

.method public j()LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, LX0/b;->e:LX0/b;

    return-object p0
.end method

.method public k()LX0/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf1/u0;->j()LX0/b;

    move-result-object p0

    return-object p0
.end method

.method public l(IIII)Lf1/w0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lf1/u0;->b:Lf1/w0;

    return-object p0
.end method

.method public m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public p([LX0/b;)V
    .locals 0

    return-void
.end method

.method public q(Lf1/w0;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
