.class public final LB0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz0/G;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:LB0/b;

.field public final g:Ljava/util/HashMap;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(LB0/b;I)V
    .locals 0

    iput p2, p0, LB0/z;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lz0/G;

    iput-object p1, p0, LB0/z;->a:Lz0/G;

    const/4 p1, 0x1

    iput-boolean p1, p0, LB0/z;->b:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LB0/z;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(LB0/z;Lz0/i;ILB0/O;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p2, p2

    invoke-static {p2, p2}, LG5/A;->a(FF)J

    move-result-wide v0

    :cond_0
    :goto_0
    iget p2, p0, LB0/z;->h:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p3}, LB0/O;->G()LB0/J;

    move-result-object p2

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-wide v2, p2, LB0/J;->j:J

    sget p2, LH0/i;->c:I

    const/16 p2, 0x20

    shr-long v4, v2, p2

    long-to-int p2, v4

    int-to-float p2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    invoke-static {p2, v2}, LG5/A;->a(FF)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lr0/b;->d(JJ)J

    move-result-wide v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p3, v0, v1}, LB0/O;->P(J)J

    move-result-wide v0

    :goto_1
    iget-object p3, p3, LB0/O;->k:LB0/O;

    invoke-static {p3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p2, p0, LB0/z;->a:Lz0/G;

    invoke-interface {p2}, LB0/b;->n()LB0/m;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p3}, LB0/z;->b(LB0/O;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p1}, LB0/z;->c(LB0/O;Lz0/i;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p2}, LG5/A;->a(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lz0/i;

    if-eqz p2, :cond_2

    invoke-static {v0, v1}, Lr0/b;->b(J)F

    move-result p2

    invoke-static {p2}, LG5/p2;->e(F)I

    move-result p2

    goto :goto_2

    :cond_2
    invoke-static {v0, v1}, Lr0/b;->a(J)F

    move-result p2

    invoke-static {p2}, LG5/p2;->e(F)I

    move-result p2

    :goto_2
    iget-object p0, p0, LB0/z;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {p1, p0}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    sget p0, Lz0/b;->a:I

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(LB0/O;)Ljava/util/Map;
    .locals 0

    iget p0, p0, LB0/z;->h:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, LB0/O;->G()LB0/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, LB0/J;->A()Lz0/y;

    move-result-object p0

    invoke-interface {p0}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, LB0/O;->A()Lz0/y;

    move-result-object p0

    invoke-interface {p0}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(LB0/O;Lz0/i;)I
    .locals 0

    iget p0, p0, LB0/z;->h:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, LB0/O;->G()LB0/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, LB0/I;->x(Lz0/i;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1, p2}, LB0/I;->x(Lz0/i;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, LB0/z;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LB0/z;->d:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, LB0/z;->e:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/z;->b:Z

    iget-object v0, p0, LB0/z;->a:Lz0/G;

    invoke-interface {v0}, LB0/b;->b()LB0/b;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, LB0/z;->c:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, LB0/b;->requestLayout()V

    :goto_0
    iget-boolean v2, p0, LB0/z;->d:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, LB0/b;->q()V

    :cond_2
    iget-boolean p0, p0, LB0/z;->e:Z

    if-eqz p0, :cond_3

    invoke-interface {v0}, LB0/b;->requestLayout()V

    :cond_3
    invoke-interface {v1}, LB0/b;->a()LB0/z;

    move-result-object p0

    invoke-virtual {p0}, LB0/z;->e()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, LB0/z;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v1, LB0/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, LB0/z;->a:Lz0/G;

    invoke-interface {v2, v1}, LB0/b;->g(LB0/a;)V

    invoke-interface {v2}, LB0/b;->n()LB0/m;

    move-result-object v1

    invoke-virtual {p0, v1}, LB0/z;->b(LB0/O;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/z;->b:Z

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, LB0/z;->d()Z

    move-result v0

    iget-object v1, p0, LB0/z;->a:Lz0/G;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LB0/b;->b()LB0/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, LB0/b;->a()LB0/z;

    move-result-object v0

    iget-object v1, v0, LB0/z;->f:LB0/b;

    if-eqz v1, :cond_2

    invoke-interface {v1}, LB0/b;->a()LB0/z;

    move-result-object v0

    invoke-virtual {v0}, LB0/z;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, LB0/z;->f:LB0/b;

    if-eqz v0, :cond_6

    invoke-interface {v0}, LB0/b;->a()LB0/z;

    move-result-object v1

    invoke-virtual {v1}, LB0/z;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, LB0/b;->b()LB0/b;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, LB0/b;->a()LB0/z;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, LB0/z;->g()V

    :cond_4
    invoke-interface {v0}, LB0/b;->b()LB0/b;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, LB0/b;->a()LB0/z;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, LB0/z;->f:LB0/b;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, LB0/z;->f:LB0/b;

    :cond_6
    :goto_1
    return-void
.end method
