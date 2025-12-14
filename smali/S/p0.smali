.class public final LS/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LQ/j;

.field public static final f:LJ7/c;


# instance fields
.field public a:J

.field public b:LQ/j;

.field public c:Z

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LQ/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQ/j;-><init>(F)V

    sput-object v0, LS/p0;->e:LQ/j;

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, LG5/v;->l(FLH0/i;I)LQ/A;

    move-result-object v0

    sget-object v1, LQ/H;->a:LA7/h;

    const-string v3, "converter"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LJ7/c;

    iget-object v4, v0, LQ/A;->c:Ljava/lang/Object;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, LA7/h;->a:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    invoke-interface {v1, v4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LQ/m;

    :goto_0
    iget v1, v0, LQ/A;->a:F

    iget v0, v0, LQ/A;->b:F

    invoke-direct {v3, v1, v0, v2}, LJ7/c;-><init>(FFLQ/m;)V

    sput-object v3, LS/p0;->f:LJ7/c;

    return-void
.end method


# virtual methods
.method public final a(LPc/e;LA4/a;Lkb/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, LS/n0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LS/n0;

    iget v1, v0, LS/n0;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/n0;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/n0;

    invoke-direct {v0, p0, p3}, LS/n0;-><init>(LS/p0;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LS/n0;->e:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/n0;->g:I

    sget-object v3, LS/p0;->e:LQ/j;

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v9, :cond_2

    if-ne v2, v7, :cond_1

    iget-object p0, v0, LS/n0;->b:Ldb/b;

    check-cast p0, Lsb/a;

    iget-object p1, v0, LS/n0;->a:LS/p0;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, LS/n0;->d:F

    iget-object p1, v0, LS/n0;->c:Lsb/a;

    iget-object p2, v0, LS/n0;->b:Ldb/b;

    check-cast p2, Lsb/k;

    iget-object v2, v0, LS/n0;->a:LS/p0;

    :try_start_1
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p3, p0

    move-object p0, v2

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v2

    goto/16 :goto_6

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-boolean p3, p0, LS/p0;->c:Z

    if-nez p3, :cond_9

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object p3

    sget-object v2, Lm0/a;->h:Lm0/a;

    invoke-interface {p3, v2}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p3

    check-cast p3, LS/O;

    iput-boolean v9, p0, LS/p0;->c:Z

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_4
    :try_start_2
    iget v2, p0, LS/p0;->d:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v10, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v10

    if-gez v2, :cond_5

    :goto_1
    move-object v11, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v11

    goto :goto_3

    :cond_5
    new-instance v2, LS/o0;

    invoke-direct {v2, p0, p3, p1}, LS/o0;-><init>(LS/p0;FLsb/k;)V

    iput-object p0, v0, LS/n0;->a:LS/p0;

    iput-object p1, v0, LS/n0;->b:Ldb/b;

    iput-object p2, v0, LS/n0;->c:Lsb/a;

    iput p3, v0, LS/n0;->d:F

    iput v9, v0, LS/n0;->g:I

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v10

    invoke-static {v10}, La0/d;->A(Lib/h;)La0/W;

    move-result-object v10

    invoke-interface {v10, v2, v0}, La0/W;->t(Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    invoke-interface {p2}, Lsb/a;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmpg-float v2, p3, v6

    if-nez v2, :cond_4

    goto :goto_1

    :goto_3
    :try_start_3
    iget p3, p1, LS/p0;->d:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v6

    if-nez p3, :cond_7

    goto :goto_5

    :cond_7
    new-instance p3, LC1/j;

    const/16 v2, 0x8

    invoke-direct {p3, v2, p1, p2}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v0, LS/n0;->a:LS/p0;

    iput-object p0, v0, LS/n0;->b:Ldb/b;

    const/4 p2, 0x0

    iput-object p2, v0, LS/n0;->c:Lsb/a;

    iput v7, v0, LS/n0;->g:I

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object p2

    invoke-static {p2}, La0/d;->A(Lib/h;)La0/W;

    move-result-object p2

    invoke-interface {p2, p3, v0}, La0/W;->t(Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    iput-wide v4, p1, LS/p0;->a:J

    iput-object v3, p1, LS/p0;->b:LQ/j;

    iput-boolean v8, p1, LS/p0;->c:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_2
    move-exception p1

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    :goto_6
    iput-wide v4, p1, LS/p0;->a:J

    iput-object v3, p1, LS/p0;->b:LQ/j;

    iput-boolean v8, p1, LS/p0;->c:Z

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
