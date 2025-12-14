.class public abstract LJ3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "x"

    const-string v1, "y"

    const-string v2, "k"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/a;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    return-void
.end method

.method public static a(LK3/d;Lz3/g;)LX4/i;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LK3/d;->q()LK3/b;

    move-result-object v1

    sget-object v2, LK3/b;->BEGIN_ARRAY:LK3/b;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, LK3/d;->a()V

    :goto_0
    invoke-virtual {p0}, LK3/d;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LK3/d;->q()LK3/b;

    move-result-object v1

    sget-object v2, LK3/b;->BEGIN_OBJECT:LK3/b;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    move v6, v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-static {}, LL3/g;->c()F

    move-result v4

    sget-object v5, LJ3/f;->e:LJ3/f;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, LJ3/p;->b(LK3/c;Lz3/g;FLJ3/F;ZZ)LM3/a;

    move-result-object v1

    new-instance v2, LC3/l;

    invoke-direct {v2, p1, v1}, LC3/l;-><init>(Lz3/g;LM3/a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LK3/d;->c()V

    invoke-static {v0}, LJ3/q;->b(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_2
    new-instance p1, LM3/a;

    invoke-static {}, LL3/g;->c()F

    move-result v1

    invoke-static {p0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, LM3/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    new-instance p0, LX4/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, LX4/i;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static b(LK3/d;Lz3/g;)LF3/e;
    .locals 7

    invoke-virtual {p0}, LK3/d;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, LK3/d;->q()LK3/b;

    move-result-object v4

    sget-object v5, LK3/b;->END_OBJECT:LK3/b;

    if-eq v4, v5, :cond_5

    sget-object v4, LJ3/a;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0, v4}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    invoke-virtual {p0}, LK3/d;->B()V

    invoke-virtual {p0}, LK3/d;->E()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LK3/d;->q()LK3/b;

    move-result-object v4

    sget-object v6, LK3/b;->STRING:LK3/b;

    if-ne v4, v6, :cond_1

    invoke-virtual {p0}, LK3/d;->E()V

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v5}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LK3/d;->q()LK3/b;

    move-result-object v4

    sget-object v6, LK3/b;->STRING:LK3/b;

    if-ne v4, v6, :cond_3

    invoke-virtual {p0}, LK3/d;->E()V

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, v5}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, LJ3/a;->a(LK3/d;Lz3/g;)LX4/i;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, LK3/d;->d()V

    if-eqz v3, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lz3/g;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance p0, LF3/c;

    invoke-direct {p0, v1, v2}, LF3/c;-><init>(LF3/b;LF3/b;)V

    return-object p0
.end method
