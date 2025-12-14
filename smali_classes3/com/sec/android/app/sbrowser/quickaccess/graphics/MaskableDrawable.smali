.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final sLockObject:Ljava/lang/Object;

.field private static sMaskIcon:Landroid/graphics/Bitmap;

.field protected static sMaskShadow:Landroid/graphics/Bitmap;


# instance fields
.field protected mBackgroundColor:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field protected final mContext:Landroid/content/Context;

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    const p2, 0x7f06089d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBackgroundColor:I

    return-void
.end method

.method public static clearMaskIcon()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskIcon:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMaskIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sLockObject:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080384

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x90

    invoke-static {p1, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskIcon:Landroid/graphics/Bitmap;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskIcon:Landroid/graphics/Bitmap;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getMaskShadow(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sLockObject:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080322

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x96

    invoke-static {p1, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->sMaskShadow:Landroid/graphics/Bitmap;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_1

    move v1, v2

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
