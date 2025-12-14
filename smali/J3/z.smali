.class public final LJ3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ3/F;


# static fields
.field public static final a:LJ3/z;

.field public static final b:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LJ3/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ3/z;->a:LJ3/z;

    const-string v0, "i"

    const-string v1, "o"

    const-string v2, "c"

    const-string v3, "v"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/z;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    return-void
.end method


# virtual methods
.method public final f(LK3/c;F)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, LK3/c;->q()LK3/b;

    move-result-object p0

    sget-object v0, LK3/b;->BEGIN_ARRAY:LK3/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, LK3/c;->a()V

    :cond_0
    invoke-virtual {p1}, LK3/c;->b()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v1

    move v3, v0

    :goto_0
    invoke-virtual {p1}, LK3/c;->f()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    sget-object v4, LJ3/z;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v4}, LK3/c;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, LK3/c;->B()V

    invoke-virtual {p1}, LK3/c;->E()V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, LJ3/o;->c(LK3/c;F)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, LJ3/o;->c(LK3/c;F)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, LJ3/o;->c(LK3/c;F)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, LK3/c;->h()Z

    move-result v3

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, LK3/c;->d()V

    invoke-virtual {p1}, LK3/c;->q()LK3/b;

    move-result-object p2

    sget-object v4, LK3/b;->END_ARRAY:LK3/b;

    if-ne p2, v4, :cond_6

    invoke-virtual {p1}, LK3/c;->c()V

    :cond_6
    if-eqz p0, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p0, LG3/o;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, LG3/o;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    goto :goto_2

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_1
    if-ge v6, p1, :cond_8

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    invoke-static {v9, v8}, LL3/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v7, v10}, LL3/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    new-instance v10, LE3/a;

    invoke-direct {v10, v8, v9, v7}, LE3/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    sub-int/2addr p1, v5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {p0, p1}, LL3/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {v6, v0}, LL3/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, LE3/a;

    invoke-direct {v0, p0, p1, v6}, LE3/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p0, LG3/o;

    invoke-direct {p0, p2, v3, v4}, LG3/o;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    :goto_2
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shape data was missing information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
