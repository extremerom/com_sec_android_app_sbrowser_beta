.class public final Lm9/q;
.super Lj9/h;
.source "SourceFile"


# instance fields
.field public l:Landroid/graphics/RuntimeShader;

.field public m:I

.field public n:[F

.field public o:[F

.field public p:[F

.field public q:[F

.field public r:I

.field public s:Z


# direct methods
.method public static l([FI)[F
    .locals 5

    new-array p1, p1, [F

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    add-int/lit8 v4, v2, 0x1

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final b()Landroid/graphics/RenderEffect;
    .locals 2

    iget-object v0, p0, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj9/b;->a(Landroid/graphics/RuntimeShader;)Landroid/graphics/RenderEffect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lm9/q;->r:I

    if-lez p0, :cond_1

    int-to-float p0, p0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, p0, v0, v1}, Lj9/a;->b(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public final c()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/bumptech/glide/d;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0803bb

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/bumptech/glide/d;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-boolean p1, p0, Lm9/q;->s:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/bumptech/glide/d;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    new-instance v0, Lk9/s;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
