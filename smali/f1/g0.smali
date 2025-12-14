.class public final Lf1/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Lf1/d0;

.field public b:Lf1/w0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lf1/d0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf1/g0;->a:Lf1/d0;

    sget-object p2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    new-instance p2, Lf1/n0;

    invoke-direct {p2, p1}, Lf1/n0;-><init>(Lf1/w0;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lf1/m0;

    invoke-direct {p2, p1}, Lf1/m0;-><init>(Lf1/w0;)V

    :goto_0
    invoke-virtual {p2}, Lf1/m0;->b()Lf1/w0;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lf1/g0;->b:Lf1/w0;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p1 .. p2}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object v1

    iput-object v1, v0, Lf1/g0;->b:Lf1/w0;

    invoke-static/range {p1 .. p2}, Lf1/h0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p1 .. p2}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object v10

    iget-object v3, v0, Lf1/g0;->b:Lf1/w0;

    if-nez v3, :cond_1

    sget-object v3, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v3

    iput-object v3, v0, Lf1/g0;->b:Lf1/w0;

    :cond_1
    iget-object v3, v0, Lf1/g0;->b:Lf1/w0;

    if-nez v3, :cond_2

    iput-object v10, v0, Lf1/g0;->b:Lf1/w0;

    invoke-static/range {p1 .. p2}, Lf1/h0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static/range {p1 .. p1}, Lf1/h0;->j(Landroid/view/View;)Lf1/d0;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Lf1/d0;->mDispachedInsets:Landroid/view/WindowInsets;

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {p1 .. p2}, Lf1/h0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v3, v0, Lf1/g0;->b:Lf1/w0;

    move v4, v2

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v10, Lf1/w0;->a:Lf1/u0;

    const/16 v11, 0x100

    if-gt v4, v11, :cond_5

    invoke-virtual {v6, v4}, Lf1/u0;->f(I)LX0/b;

    move-result-object v6

    iget-object v11, v3, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v11, v4}, Lf1/u0;->f(I)LX0/b;

    move-result-object v11

    invoke-virtual {v6, v11}, LX0/b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    or-int/2addr v5, v4

    :cond_4
    shl-int/2addr v4, v2

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    invoke-static/range {p1 .. p2}, Lf1/h0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v4, v0, Lf1/g0;->b:Lf1/w0;

    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_8

    invoke-virtual {v6, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v2

    iget v2, v2, LX0/b;->d:I

    iget-object v3, v4, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v3, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v1

    iget v1, v1, LX0/b;->d:I

    if-le v2, v1, :cond_7

    sget-object v1, Lf1/h0;->e:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_7
    sget-object v1, Lf1/h0;->f:Lh2/a;

    goto :goto_1

    :cond_8
    sget-object v1, Lf1/h0;->g:Landroid/view/animation/DecelerateInterpolator;

    :goto_1
    new-instance v11, Lf1/l0;

    const-wide/16 v2, 0xa0

    invoke-direct {v11, v5, v1, v2, v3}, Lf1/l0;-><init>(ILandroid/view/animation/Interpolator;J)V

    iget-object v1, v11, Lf1/l0;->a:Lf1/k0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf1/k0;->d(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, v11, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {v2}, Lf1/k0;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v6, v5}, Lf1/u0;->f(I)LX0/b;

    move-result-object v1

    iget-object v2, v4, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {v2, v5}, Lf1/u0;->f(I)LX0/b;

    move-result-object v2

    iget v3, v1, LX0/b;->a:I

    iget v6, v2, LX0/b;->a:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v6, v1, LX0/b;->b:I

    iget v13, v2, LX0/b;->b:I

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v15, v1, LX0/b;->c:I

    iget v9, v2, LX0/b;->c:I

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    move-object/from16 v16, v12

    iget v12, v1, LX0/b;->d:I

    move/from16 v17, v5

    iget v5, v2, LX0/b;->d:I

    move-object/from16 v18, v4

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v14, v0, v4}, LX0/b;->b(IIII)LX0/b;

    move-result-object v0

    iget v1, v1, LX0/b;->a:I

    iget v2, v2, LX0/b;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, LX0/b;->b(IIII)LX0/b;

    move-result-object v1

    new-instance v9, Lf1/c0;

    invoke-direct {v9, v0, v1}, Lf1/c0;-><init>(LX0/b;LX0/b;)V

    const/4 v0, 0x0

    invoke-static {v7, v11, v8, v0}, Lf1/h0;->f(Landroid/view/View;Lf1/l0;Landroid/view/WindowInsets;Z)V

    new-instance v12, Lf1/e0;

    move-object v1, v12

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, v18

    move/from16 v5, v17

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lf1/e0;-><init>(Lf1/l0;Lf1/w0;Lf1/w0;ILandroid/view/View;)V

    move-object/from16 v5, v16

    invoke-virtual {v5, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lf1/f0;

    invoke-direct {v1, v0, v11, v7}, Lf1/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, LG5/e4;

    const/4 v6, 0x2

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, LG5/e4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v7, v0}, Lf1/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lf1/g0;->b:Lf1/w0;

    invoke-static/range {p1 .. p2}, Lf1/h0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
