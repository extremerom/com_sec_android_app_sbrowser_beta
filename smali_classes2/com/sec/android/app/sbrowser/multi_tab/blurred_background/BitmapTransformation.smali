.class abstract Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BitmapTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ3/o;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-void
.end method

.method public final transform(Landroid/content/Context;LS3/C;II)LS3/C;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LS3/C;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LS3/C;",
            "II)",
            "LS3/C;"
        }
    .end annotation

    invoke-static {p3, p4}, Ll4/l;->j(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->b:LT3/a;

    invoke-interface {p2}, LS3/C;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Bitmap;

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    :cond_0
    move v5, p3

    if-ne p4, v1, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_1
    move v6, p4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BitmapTransformation;->transform(Landroid/content/Context;LT3/a;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p0}, LZ3/d;->d(LT3/a;Landroid/graphics/Bitmap;)LZ3/d;

    move-result-object p2

    :goto_0
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot apply transformation on width: "

    const-string p2, " or height: "

    const-string v0, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-static {p3, p4, p1, p2, v0}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract transform(Landroid/content/Context;LT3/a;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LT3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
