.class public final Lz3/t;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public A:Landroid/graphics/RectF;

.field public B:LA3/a;

.field public C:Landroid/graphics/Rect;

.field public D:Landroid/graphics/Rect;

.field public E:Landroid/graphics/RectF;

.field public F:Landroid/graphics/RectF;

.field public G:Landroid/graphics/Matrix;

.field public H:Landroid/graphics/Matrix;

.field public I:Z

.field public a:Lz3/g;

.field public final b:LL3/c;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Lz3/s;

.field public final g:Ljava/util/ArrayList;

.field public h:LD3/a;

.field public i:Ljava/lang/String;

.field public j:LA7/c;

.field public k:Ljava/util/Map;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:LH3/e;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lz3/C;

.field public v:Z

.field public final w:Landroid/graphics/Matrix;

.field public x:Landroid/graphics/Bitmap;

.field public y:Landroid/graphics/Canvas;

.field public z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, LL3/c;

    invoke-direct {v0}, LL3/c;-><init>()V

    iput-object v0, p0, Lz3/t;->b:LL3/c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz3/t;->c:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lz3/t;->d:Z

    iput-boolean v2, p0, Lz3/t;->e:Z

    sget-object v3, Lz3/s;->NONE:Lz3/s;

    iput-object v3, p0, Lz3/t;->f:Lz3/s;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v3, LD2/d;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, LD2/d;-><init>(ILjava/lang/Object;)V

    iput-boolean v2, p0, Lz3/t;->n:Z

    iput-boolean v1, p0, Lz3/t;->o:Z

    const/16 v1, 0xff

    iput v1, p0, Lz3/t;->q:I

    sget-object v1, Lz3/C;->AUTOMATIC:Lz3/C;

    iput-object v1, p0, Lz3/t;->u:Lz3/C;

    iput-boolean v2, p0, Lz3/t;->v:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lz3/t;->w:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lz3/t;->I:Z

    invoke-virtual {v0, v3}, LL3/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static f(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final a(LE3/f;Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 6

    iget-object v0, p0, Lz3/t;->p:LH3/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lz3/m;-><init>(Lz3/t;LE3/f;Landroid/graphics/ColorFilter;Lo3/e;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, LE3/f;->c:LE3/f;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p2, p3}, LH3/e;->d(Landroid/graphics/ColorFilter;Lo3/e;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, LE3/f;->b:LE3/g;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2, p3}, LE3/g;->d(Landroid/graphics/ColorFilter;Lo3/e;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz3/t;->p:LH3/e;

    new-instance v3, LE3/f;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v3, v5}, LE3/f;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v4, v0, v3}, LH3/c;->c(LE3/f;ILjava/util/ArrayList;LE3/f;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE3/f;

    iget-object p1, p1, LE3/f;->b:LE3/g;

    invoke-interface {p1, p2, p3}, LE3/g;->d(Landroid/graphics/ColorFilter;Lo3/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    sget-object p1, Lz3/w;->z:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lz3/t;->b:LL3/c;

    invoke-virtual {p1}, LL3/c;->a()F

    move-result p1

    invoke-virtual {p0, p1}, Lz3/t;->t(F)V

    :cond_4
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lz3/t;->c:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lz3/t;->d:Z

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

.method public final c()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v12, v0, Lz3/t;->a:Lz3/g;

    if-nez v12, :cond_0

    return-void

    :cond_0
    new-instance v11, LH3/e;

    sget-object v1, LJ3/s;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v1, v12, Lz3/g;->j:Landroid/graphics/Rect;

    new-instance v7, LH3/i;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    sget-object v28, LH3/g;->PRE_COMP:LH3/g;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v29

    new-instance v30, LF3/d;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v13, v30

    invoke-direct/range {v13 .. v22}, LF3/d;-><init>(LX4/i;LF3/e;LF3/a;LF3/b;LF3/a;LF3/b;LF3/b;LF3/b;LF3/b;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    move/from16 v18, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    move/from16 v19, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    sget-object v23, LH3/h;->NONE:LH3/h;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v4, "__container"

    const-wide/16 v5, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v1, v7

    move-object v3, v12

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v32, v11

    move-object/from16 v11, v29

    move-object v0, v12

    move-object/from16 v12, v30

    invoke-direct/range {v1 .. v27}, LH3/i;-><init>(Ljava/util/List;Lz3/g;Ljava/lang/String;JLH3/g;JLjava/lang/String;Ljava/util/List;LF3/d;IIIFFFFLF3/a;Lcom/google/firebase/messaging/q;Ljava/util/List;LH3/h;LF3/b;ZLo3/f;LA7/c;)V

    iget-object v1, v0, Lz3/g;->i:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    invoke-direct {v3, v2, v4, v1, v0}, LH3/e;-><init>(Lz3/t;LH3/i;Ljava/util/List;Lz3/g;)V

    iput-object v3, v2, Lz3/t;->p:LH3/e;

    iget-boolean v0, v2, Lz3/t;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, LH3/e;->r(Z)V

    :cond_1
    iget-object v0, v2, Lz3/t;->p:LH3/e;

    iget-boolean v1, v2, Lz3/t;->o:Z

    iput-boolean v1, v0, LH3/e;->H:Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lz3/t;->b:LL3/c;

    iget-boolean v1, v0, LL3/c;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LL3/c;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lz3/s;->NONE:Lz3/s;

    iput-object v1, p0, Lz3/t;->f:Lz3/s;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lz3/t;->a:Lz3/g;

    iput-object v1, p0, Lz3/t;->p:LH3/e;

    iput-object v1, p0, Lz3/t;->h:LD3/a;

    iput-object v1, v0, LL3/c;->l:Lz3/g;

    const/high16 v1, -0x31000000

    iput v1, v0, LL3/c;->j:F

    const/high16 v1, 0x4f000000

    iput v1, v0, LL3/c;->k:F

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lz3/t;->e:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lz3/t;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz3/t;->p:LH3/e;

    invoke-virtual {p0, p1, v0}, Lz3/t;->l(Landroid/graphics/Canvas;LH3/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lz3/t;->g(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, LL3/b;->a:LL3/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lz3/t;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz3/t;->p:LH3/e;

    invoke-virtual {p0, p1, v0}, Lz3/t;->l(Landroid/graphics/Canvas;LH3/e;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lz3/t;->g(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lz3/t;->I:Z

    invoke-static {}, LG5/b3;->b()V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lz3/t;->u:Lz3/C;

    iget v0, v0, Lz3/g;->n:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lz3/B;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lz3/t;->v:Z

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lz3/t;->p:LH3/e;

    iget-object v1, p0, Lz3/t;->a:Lz3/g;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lz3/t;->w:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lz3/g;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v1, v1, Lz3/g;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget p0, p0, Lz3/t;->q:I

    invoke-virtual {v0, p1, v2, p0}, LH3/c;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lz3/t;->q:I

    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lz3/t;->a:Lz3/g;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz3/g;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lz3/t;->a:Lz3/g;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz3/g;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final h()LA7/c;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lz3/t;->j:LA7/c;

    if-nez v0, :cond_2

    new-instance v0, LA7/c;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/motionphoto/utils/ex/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(I)V

    iput-object v2, v0, LA7/c;->b:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, LA7/c;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, LA7/c;->d:Ljava/lang/Object;

    const-string v2, ".ttf"

    iput-object v2, v0, LA7/c;->a:Ljava/lang/Object;

    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_1

    const-string v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v1}, LL3/b;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, v0, LA7/c;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, LA7/c;->e:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lz3/t;->j:LA7/c;

    iget-object v1, p0, Lz3/t;->l:Ljava/lang/String;

    if-eqz v1, :cond_2

    iput-object v1, v0, LA7/c;->a:Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lz3/t;->j:LA7/c;

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lz3/t;->b:LL3/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, LL3/c;->m:Z

    return p0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lz3/t;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz3/t;->I:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lz3/t;->i()Z

    move-result p0

    return p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lz3/t;->b:LL3/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LL3/c;->g(Z)V

    iget-object v1, v0, LL3/c;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v2, v0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lz3/s;->NONE:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lz3/t;->p:LH3/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lz3/p;-><init>(Lz3/t;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lz3/t;->e()V

    invoke-virtual {p0}, Lz3/t;->b()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lz3/t;->b:LL3/c;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, v2, LL3/c;->m:Z

    invoke-virtual {v2}, LL3/c;->d()Z

    move-result v0

    iget-object v3, v2, LL3/c;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, LL3/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, LL3/c;->b()F

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, LL3/c;->c()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, LL3/c;->h(F)V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, LL3/c;->f:J

    const/4 v0, 0x0

    iput v0, v2, LL3/c;->i:I

    iget-boolean v3, v2, LL3/c;->m:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, LL3/c;->g(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    sget-object v0, Lz3/s;->NONE:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    goto :goto_2

    :cond_5
    sget-object v0, Lz3/s;->PLAY:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lz3/t;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v2, LL3/c;->d:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    invoke-virtual {v2}, LL3/c;->c()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, LL3/c;->b()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lz3/t;->n(I)V

    invoke-virtual {v2, v1}, LL3/c;->g(Z)V

    invoke-virtual {v2}, LL3/c;->d()Z

    move-result v0

    invoke-virtual {v2, v0}, LL3/c;->e(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lz3/s;->NONE:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    :cond_8
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;LH3/e;)V
    .locals 9

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-eqz v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lz3/t;->y:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lz3/t;->y:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lz3/t;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lz3/t;->G:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lz3/t;->H:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lz3/t;->z:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lz3/t;->A:Landroid/graphics/RectF;

    new-instance v0, LA3/a;

    invoke-direct {v0}, LA3/a;-><init>()V

    iput-object v0, p0, Lz3/t;->B:LA3/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lz3/t;->C:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lz3/t;->D:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lz3/t;->E:Landroid/graphics/RectF;

    :goto_0
    iget-object v0, p0, Lz3/t;->G:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lz3/t;->z:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lz3/t;->z:Landroid/graphics/Rect;

    iget-object v1, p0, Lz3/t;->A:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lz3/t;->G:Landroid/graphics/Matrix;

    iget-object v1, p0, Lz3/t;->A:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lz3/t;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Lz3/t;->z:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lz3/t;->f(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-boolean v0, p0, Lz3/t;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz3/t;->F:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lz3/t;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lz3/t;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz3/t;->F:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, LH3/e;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_1
    iget-object v0, p0, Lz3/t;->G:Landroid/graphics/Matrix;

    iget-object v2, p0, Lz3/t;->F:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lz3/t;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lz3/t;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lz3/t;->F:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v2

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    instance-of v4, v3, Landroid/view/View;

    const/4 v5, 0x1

    if-nez v4, :cond_4

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    xor-int/2addr v3, v5

    :goto_2
    if-nez v3, :cond_5

    iget-object v3, p0, Lz3/t;->F:Landroid/graphics/RectF;

    iget-object v4, p0, Lz3/t;->z:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_5
    iget-object v3, p0, Lz3/t;->F:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lz3/t;->F:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    if-eqz v3, :cond_c

    if-nez v4, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v6, v3, :cond_9

    iget-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v6, v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, v3, :cond_8

    iget-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, v4, :cond_a

    :cond_8
    iget-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    invoke-static {v6, v1, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lz3/t;->y:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v5, p0, Lz3/t;->I:Z

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lz3/t;->y:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v5, p0, Lz3/t;->I:Z

    :cond_a
    :goto_4
    iget-boolean v5, p0, Lz3/t;->I:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lz3/t;->w:Landroid/graphics/Matrix;

    iget-object v6, p0, Lz3/t;->G:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lz3/t;->F:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lz3/t;->y:Landroid/graphics/Canvas;

    iget v2, p0, Lz3/t;->q:I

    invoke-virtual {p2, v0, v5, v2}, LH3/c;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lz3/t;->G:Landroid/graphics/Matrix;

    iget-object v0, p0, Lz3/t;->H:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lz3/t;->H:Landroid/graphics/Matrix;

    iget-object v0, p0, Lz3/t;->E:Landroid/graphics/RectF;

    iget-object v2, p0, Lz3/t;->F:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lz3/t;->E:Landroid/graphics/RectF;

    iget-object v0, p0, Lz3/t;->D:Landroid/graphics/Rect;

    invoke-static {v0, p2}, Lz3/t;->f(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    :cond_b
    iget-object p2, p0, Lz3/t;->C:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lz3/t;->x:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lz3/t;->C:Landroid/graphics/Rect;

    iget-object v1, p0, Lz3/t;->D:Landroid/graphics/Rect;

    iget-object p0, p0, Lz3/t;->B:LA3/a;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lz3/t;->p:LH3/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz3/p;-><init>(Lz3/t;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lz3/t;->e()V

    invoke-virtual {p0}, Lz3/t;->b()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lz3/t;->b:LL3/c;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, v2, LL3/c;->m:Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, LL3/c;->g(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, LL3/c;->f:J

    invoke-virtual {v2}, LL3/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v2, LL3/c;->h:F

    invoke-virtual {v2}, LL3/c;->c()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {v2}, LL3/c;->b()F

    move-result v0

    invoke-virtual {v2, v0}, LL3/c;->h(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, LL3/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v2, LL3/c;->h:F

    invoke-virtual {v2}, LL3/c;->b()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {v2}, LL3/c;->c()F

    move-result v0

    invoke-virtual {v2, v0}, LL3/c;->h(F)V

    :cond_3
    :goto_0
    iget-object v0, v2, LL3/c;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, v2}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lz3/s;->NONE:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    goto :goto_2

    :cond_5
    sget-object v0, Lz3/s;->RESUME:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lz3/t;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v2, LL3/c;->d:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    invoke-virtual {v2}, LL3/c;->c()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, LL3/c;->b()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lz3/t;->n(I)V

    invoke-virtual {v2, v1}, LL3/c;->g(Z)V

    invoke-virtual {v2}, LL3/c;->d()Z

    move-result v0

    invoke-virtual {v2, v0}, LL3/c;->e(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lz3/s;->NONE:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    :cond_8
    return-void
.end method

.method public final n(I)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lz3/q;-><init>(Lz3/t;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lz3/t;->b:LL3/c;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, LL3/c;->h(F)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lz3/q;-><init>(Lz3/t;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    iget-object p0, p0, Lz3/t;->b:LL3/c;

    iget v0, p0, LL3/c;->j:F

    invoke-virtual {p0, v0, p1}, LL3/c;->i(FF)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lz3/l;-><init>(Lz3/t;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lz3/g;->c(Ljava/lang/String;)LE3/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, LE3/i;->b:F

    iget v0, v0, LE3/i;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lz3/t;->o(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    iget-object v1, p0, Lz3/t;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lz3/l;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lz3/l;-><init>(Lz3/t;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lz3/g;->c(Ljava/lang/String;)LE3/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget p1, v0, LE3/i;->b:F

    float-to-int p1, p1

    iget v0, v0, LE3/i;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lz3/t;->a:Lz3/g;

    if-nez v2, :cond_1

    new-instance v2, Lz3/o;

    invoke-direct {v2, p0, p1, v0}, Lz3/o;-><init>(Lz3/t;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float v0, v0

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr v0, v1

    iget-object p0, p0, Lz3/t;->b:LL3/c;

    invoke-virtual {p0, p1, v0}, LL3/c;->i(FF)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r(I)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/q;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lz3/q;-><init>(Lz3/t;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    iget-object p0, p0, Lz3/t;->b:LL3/c;

    iget v0, p0, LL3/c;->k:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, LL3/c;->i(FF)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lz3/l;-><init>(Lz3/t;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lz3/g;->c(Ljava/lang/String;)LE3/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, LE3/i;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lz3/t;->r(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lz3/t;->q:I

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, LL3/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz3/t;->f:Lz3/s;

    sget-object v0, Lz3/s;->PLAY:Lz3/s;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz3/t;->k()V

    goto :goto_0

    :cond_0
    sget-object v0, Lz3/s;->RESUME:Lz3/s;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lz3/t;->m()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz3/t;->b:LL3/c;

    iget-boolean p1, p1, LL3/c;->m:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lz3/t;->j()V

    sget-object p1, Lz3/s;->RESUME:Lz3/s;

    iput-object p1, p0, Lz3/t;->f:Lz3/s;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lz3/s;->NONE:Lz3/s;

    iput-object p1, p0, Lz3/t;->f:Lz3/s;

    :cond_3
    :goto_0
    return p2
.end method

.method public final start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz3/t;->k()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iget-object v1, p0, Lz3/t;->b:LL3/c;

    invoke-virtual {v1, v0}, LL3/c;->g(Z)V

    invoke-virtual {v1}, LL3/c;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, LL3/c;->e(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lz3/s;->NONE:Lz3/s;

    iput-object v0, p0, Lz3/t;->f:Lz3/s;

    :cond_0
    return-void
.end method

.method public final t(F)V
    .locals 3

    iget-object v0, p0, Lz3/t;->a:Lz3/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/t;->g:Ljava/util/ArrayList;

    new-instance v1, Lz3/n;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lz3/n;-><init>(Lz3/t;FI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v1, v0, Lz3/g;->k:F

    iget v0, v0, Lz3/g;->l:F

    invoke-static {v1, v0, p1}, LL3/e;->d(FFF)F

    move-result p1

    iget-object p0, p0, Lz3/t;->b:LL3/c;

    invoke-virtual {p0, p1}, LL3/c;->h(F)V

    invoke-static {}, LG5/b3;->b()V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
