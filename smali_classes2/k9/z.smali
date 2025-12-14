.class public final Lk9/z;
.super Lj9/h;
.source "SourceFile"


# instance fields
.field public final l:Z

.field public final m:Landroid/graphics/RuntimeShader;

.field public n:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Z)V
    .locals 5

    invoke-direct {p0}, Lj9/h;-><init>()V

    iput-boolean p1, p0, Lk9/z;->l:Z

    invoke-static {}, Lj9/b;->b()Landroid/graphics/RuntimeShader;

    move-result-object p1

    iput-object p1, p0, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    sget-object p1, Lxb/d;->a:Lxb/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lxb/d;->b:Lxb/a;

    invoke-virtual {p1}, Lxb/a;->d()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/16 v0, 0x2710

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    float-to-long v1, p1

    new-instance p1, Lk9/t;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v3}, Lk9/t;-><init>(Lj9/h;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Lk9/v;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lk9/v;-><init>(Lk9/z;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v3}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget p1, Lk9/y;->d:F

    iget-object v3, p0, Lk9/z;->n:Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lk9/u;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, v3}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :goto_0
    new-instance p1, Lk9/u;

    const v3, 0x3f933333    # 1.15f

    const/16 v4, 0xf

    invoke-direct {p1, p0, v3, v4}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lk9/z;->l(F)V

    new-instance p1, Lk9/u;

    const v0, 0x3f666666    # 0.9f

    const/4 v3, 0x2

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p1, Lk9/y;->a:Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lk9/z;->m(Landroid/graphics/PointF;)V

    new-instance p1, Lk9/u;

    const v0, 0x3ff5c28f    # 1.92f

    const/16 v3, 0xd

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget p1, Lk9/y;->b:I

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    const-string v0, "valueOf(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk9/s;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const v0, 0x3e8f5c29    # 0.28f

    const/16 v3, 0xa

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const/16 v3, 0xb

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const/high16 v0, 0x3fa00000    # 1.25f

    const/16 v3, 0xc

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const/high16 v0, 0x42100000    # 36.0f

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const v0, 0x3ef5c28f    # 0.48f

    const/16 v3, 0x10

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const v0, 0x3fe8f5c3    # 1.82f

    const/16 v3, 0x8

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const/4 v0, 0x0

    const/4 v3, 0x3

    invoke-direct {p1, p0, v0, v3}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    long-to-float p1, v1

    new-instance v0, Lk9/u;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/t;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lk9/t;-><init>(Lj9/h;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/u;

    const/high16 v0, 0x42400000    # 48.0f

    const/16 v1, 0x9

    invoke-direct {p1, p0, v0, v1}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/w;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lk9/w;-><init>(Lk9/z;Landroid/graphics/Shader;Landroid/graphics/PointF;)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lj9/b;->a(Landroid/graphics/RuntimeShader;)Landroid/graphics/RenderEffect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lk9/y;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0803bb

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lk9/y;->c:Landroid/graphics/Bitmap;

    :cond_0
    sget-object p1, Lk9/y;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    new-instance v0, Lk9/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk9/x;-><init>(Lk9/z;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance v0, Lk9/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lk9/x;-><init>(Lk9/z;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public final h(Landroid/view/View;F)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lk9/z;->n:Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lk9/u;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public final l(F)V
    .locals 2

    new-instance v0, Lk9/u;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final m(Landroid/graphics/PointF;)V
    .locals 2

    const-string v0, "pos"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk9/v;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lk9/v;-><init>(Lk9/z;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final n(Landroid/graphics/PointF;)V
    .locals 2

    const-string v0, "directionVector"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk9/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lk9/v;-><init>(Lk9/z;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    return-void
.end method
