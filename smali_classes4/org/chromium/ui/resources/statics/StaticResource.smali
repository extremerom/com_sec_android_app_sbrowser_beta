.class public Lorg/chromium/ui/resources/statics/StaticResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/Resource;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapSize:Landroid/graphics/Rect;

.field private final mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lorg/chromium/ui/resources/statics/NinePatchData;->create(Landroid/graphics/Bitmap;)Lorg/chromium/ui/resources/statics/NinePatchData;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    return-void
.end method

.method public static create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->decodeBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->decodeDrawable(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lorg/chromium/ui/resources/statics/StaticResource;

    invoke-direct {p0, v1}, Lorg/chromium/ui/resources/statics/StaticResource;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private static createOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt p0, p3, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt p1, p2, :cond_1

    return-object v0

    :cond_1
    int-to-float p0, p0

    int-to-float p1, p3

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static decodeBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->createOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object p2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method private static decodeDrawable(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p2

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public createNativeResource()J
    .locals 2

    iget-object p0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-static {p0}, Lorg/chromium/ui/resources/ResourceFactory;->createBitmapResource(Lorg/chromium/ui/resources/statics/NinePatchData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getNinePatchData()Lorg/chromium/ui/resources/statics/NinePatchData;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    return-object p0
.end method
