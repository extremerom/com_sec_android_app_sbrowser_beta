.class public abstract LB0/I;
.super Lz0/G;
.source "SourceFile"

# interfaces
.implements Lz0/z;


# instance fields
.field public f:Z

.field public g:Z

.field public final h:Lz0/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz0/G;-><init>()V

    new-instance v0, Lz0/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lz0/u;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LB0/I;->h:Lz0/u;

    return-void
.end method

.method public static C(LB0/O;)V
    .locals 1

    iget-object v0, p0, LB0/O;->j:LB0/O;

    if-eqz v0, :cond_0

    iget-object v0, v0, LB0/O;->i:Landroidx/compose/ui/node/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    iget-object p0, p0, LB0/F;->m:LB0/z;

    invoke-virtual {p0}, LB0/z;->e()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    invoke-virtual {p0}, LB0/F;->b()LB0/b;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, LB0/F;

    iget-object p0, p0, LB0/F;->m:LB0/z;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LB0/z;->e()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract A()Lz0/y;
.end method

.method public abstract B()J
.end method

.method public abstract D()V
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(IILjava/util/Map;Lsb/k;)Lz0/y;
    .locals 7

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    new-instance v0, LB0/H;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, LB0/H;-><init>(IILjava/util/Map;Lsb/k;LB0/I;)V

    return-object v0

    :cond_0
    const-string p0, "Size("

    const-string p3, " x "

    const-string p4, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-static {p1, p2, p0, p3, p4}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract w(Lz0/i;)I
.end method

.method public final x(Lz0/i;)I
    .locals 4

    invoke-virtual {p0}, LB0/I;->z()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, LB0/I;->w(Lz0/i;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    iget-wide v0, p0, Lz0/G;->e:J

    sget p0, LH0/i;->c:I

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public abstract y()LB0/I;
.end method

.method public abstract z()Z
.end method
