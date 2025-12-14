.class public final Ll9/j;
.super Lj9/h;
.source "SourceFile"


# instance fields
.field public l:Landroid/graphics/RuntimeShader;


# virtual methods
.method public final b()Landroid/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Ll9/j;->l:Landroid/graphics/RuntimeShader;

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

    iget-object p0, p0, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Ll9/i;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803bb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Ll9/i;->a:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Ll9/i;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v1, Ll9/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ll9/h;-><init>(Ll9/j;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_1
    sget-object v0, Ll9/i;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08021b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Ll9/i;->b:Landroid/graphics/Bitmap;

    :cond_2
    sget-object p1, Ll9/i;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    new-instance v0, Ll9/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ll9/h;-><init>(Ll9/j;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method
