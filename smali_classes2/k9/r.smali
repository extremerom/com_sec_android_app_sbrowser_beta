.class public final Lk9/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public final c:Lk9/f;

.field public final d:Ljava/util/ArrayList;

.field public e:Landroid/animation/ValueAnimator;

.field public final f:Lk9/g;

.field public final g:Lm9/l;

.field public final h:Lm9/d;

.field public i:Lm9/b;

.field public j:Z

.field public k:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lk9/f;Z)V
    .locals 5

    const-string v0, "config"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk9/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lk9/r;->b:Landroid/view/View;

    iput-object p3, p0, Lk9/r;->c:Lk9/f;

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lk9/r;->d:Ljava/util/ArrayList;

    sget-object v0, Lm9/b;->Common:Lm9/b;

    iput-object v0, p0, Lk9/r;->i:Lm9/b;

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p2, :cond_8

    if-eqz p1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-static {p2}, LA2/e;->x(Landroid/view/View;)V

    :cond_0
    if-eqz p4, :cond_1

    sget-object p4, Lk9/e;->RoundRect:Lk9/e;

    goto :goto_0

    :cond_1
    sget-object p4, Lk9/e;->Circle:Lk9/e;

    :goto_0
    const-string v0, "<set-?>"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p3, Lk9/f;->b:Lk9/e;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    const-string v1, "initialize version: 2.0.36 view size:"

    const-string v2, "x"

    const-string v3, " config:"

    invoke-static {p4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "GuidingLightEffect"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Lk9/g;

    invoke-direct {p4, p1, p3}, Li9/a;-><init>(Landroid/content/Context;Lbc/d;)V

    iput-object p4, p0, Lk9/r;->f:Lk9/g;

    invoke-virtual {p4, p2}, Li9/a;->a(Landroid/view/View;)V

    new-instance p2, Lm9/d;

    iget-object v0, p0, Lk9/r;->i:Lm9/b;

    const-string v1, "initialState"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lm9/d;->b:Ljava/util/ArrayList;

    iput-object v0, p2, Lm9/d;->c:Lm9/b;

    iput-object p2, p0, Lk9/r;->h:Lm9/d;

    sget-object v0, Lm9/d;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0803bb

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lm9/d;->d:Landroid/graphics/Bitmap;

    :cond_2
    sget-object v0, Lm9/d;->d:Landroid/graphics/Bitmap;

    const-string v2, "#4DFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p2, Lm9/d;->c:Lm9/b;

    iget p3, p3, Lk9/f;->v:F

    invoke-virtual {v3, p3}, Lm9/b;->a(F)Ljava/util/ArrayList;

    move-result-object p3

    new-instance v3, Lm9/j;

    sget-object v4, Lm9/d;->e:Landroid/util/Size;

    invoke-direct {v3, v2, v0, v4, p3}, Lm9/j;-><init>(ILandroid/graphics/Bitmap;Landroid/util/Size;Ljava/util/ArrayList;)V

    new-instance p3, Lm9/l;

    invoke-direct {p3, p1, v3}, Li9/a;-><init>(Landroid/content/Context;Lbc/d;)V

    iget-object p1, v3, Lm9/j;->d:Landroid/util/Size;

    if-nez p1, :cond_3

    new-instance p1, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    :cond_3
    iput-object p1, p3, Lm9/l;->e:Landroid/util/Size;

    iput-object p3, p2, Lm9/d;->a:Lm9/l;

    iget-object p1, p3, Li9/a;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object p1, p2, Lm9/d;->a:Lm9/l;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lk9/r;->g:Lm9/l;

    invoke-virtual {p1}, Li9/a;->c()Lj9/h;

    move-result-object p2

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Li9/a;->c()Lj9/h;

    move-result-object p3

    check-cast p3, Lk9/z;

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lj9/h;->c()Landroid/graphics/RuntimeShader;

    move-result-object v0

    iget-object v1, p1, Lm9/l;->e:Landroid/util/Size;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Lk9/w;

    invoke-direct {v1, p3, v0, v2}, Lk9/w;-><init>(Lk9/z;Landroid/graphics/Shader;Landroid/graphics/PointF;)V

    invoke-virtual {p3, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_5
    invoke-virtual {p4}, Li9/a;->c()Lj9/h;

    move-result-object p3

    check-cast p3, Lk9/z;

    if-eqz p3, :cond_6

    iget-object p3, p3, Lj9/h;->e:Ljava/util/ArrayList;

    if-eqz p3, :cond_6

    new-instance v0, LPc/e;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1, p4, p1}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lk9/r;->d()V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lk9/r;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lk9/r;->e:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method public final b(Lk9/a;)V
    .locals 4

    iget-object v0, p0, Lk9/r;->c:Lk9/f;

    iget v0, v0, Lk9/f;->n:F

    new-instance v1, Lk9/k;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lk9/k;-><init>(Lk9/r;FI)V

    new-instance v2, Lk9/l;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lk9/l;-><init>(Ljava/lang/Object;FI)V

    const/16 v0, 0x34

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, LG5/b4;->e(Lk9/a;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lk9/r;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final c(F)V
    .locals 3

    iget-object v0, p0, Lk9/r;->b:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v2, v0}, LG5/d3;->c(FF)F

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, p1

    :goto_1
    invoke-static {p1, v1, v0}, LG5/L3;->d(FFF)F

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCornerRadiusPixel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuidingLightEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lk9/r;->f:Lk9/g;

    invoke-virtual {p0}, Li9/a;->c()Lj9/h;

    move-result-object p0

    check-cast p0, Lk9/z;

    if-eqz p0, :cond_3

    new-instance v0, Lk9/u;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->g()V

    iget-object p0, p0, Lk9/r;->g:Lm9/l;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li9/a;->d(Z)V

    return-void
.end method

.method public final e(FF)V
    .locals 3

    iget-object p0, p0, Lk9/r;->f:Lk9/g;

    invoke-virtual {p0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_0

    new-instance v1, Lk9/u;

    const/16 v2, 0xd

    invoke-direct {v1, v0, p1, v2}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p0}, Li9/a;->c()Lj9/h;

    move-result-object p0

    check-cast p0, Lk9/z;

    if-eqz p0, :cond_1

    new-instance p1, Lk9/u;

    const/16 v0, 0x8

    invoke-direct {p1, p0, p2, v0}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public final f(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lk9/r;->e(FF)V

    return-void
.end method
