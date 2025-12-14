.class public Lorg/chromium/ui/resources/HandleViewResources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CENTER_HANDLE_ATTRS:[I

.field private static final LEFT_HANDLE_ATTRS:[I

.field private static final RIGHT_HANDLE_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10102c5

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/resources/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    const v0, 0x10102c7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/resources/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    const v0, 0x10102c6

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/resources/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    return-void
.end method

.method private static getCenterHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/resources/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/ui/resources/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    if-nez p0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget v1, Lorg/chromium/ui/R$style;->ThemeOverlay_UI_SelectionHandle:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-object p0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eq v3, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-static {v0, p1}, Lorg/chromium/ui/resources/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private static getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p0, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getHandleHorizontalPaddingRatio()F
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private static getLeftHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/resources/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/ui/resources/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getRightHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/resources/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/ui/resources/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
