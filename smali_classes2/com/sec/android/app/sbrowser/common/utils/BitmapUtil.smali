.class public final Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ+\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;",
        "",
        "<init>",
        "()V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "radius",
        "addBlurEffect",
        "(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;",
        "childLayoutInfo",
        "cropVisibleBitmapFromImageView",
        "(Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;)Landroid/graphics/Bitmap;",
        "originalBitmap",
        "parentLayoutInfo",
        "cropVisibleBitmapForChildView",
        "(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;)Landroid/graphics/Bitmap;",
        "Landroid/renderscript/RenderScript;",
        "renderScript$delegate",
        "Ldb/f;",
        "getRenderScript",
        "()Landroid/renderscript/RenderScript;",
        "renderScript",
        "Landroid/renderscript/ScriptIntrinsicBlur;",
        "blurScript$delegate",
        "getBlurScript",
        "()Landroid/renderscript/ScriptIntrinsicBlur;",
        "blurScript",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final blurScript$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final renderScript$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;

    new-instance v0, LB9/b;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->renderScript$delegate:Ldb/f;

    new-instance v0, LB9/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->blurScript$delegate:Ldb/f;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->blurScript_delegate$lambda$1()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    return-object v0
.end method

.method public static final addBlurEffect(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getRenderScript()Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getRenderScript()Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getBlurScript()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    move p1, v4

    :cond_2
    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getBlurScript()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getBlurScript()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    return-object v0
.end method

.method public static synthetic b()Landroid/renderscript/RenderScript;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->renderScript_delegate$lambda$0()Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method private static final blurScript_delegate$lambda$1()Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getRenderScript()Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->getRenderScript()Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    return-object v0
.end method

.method public static final cropVisibleBitmapForChildView(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "parentLayoutInfo"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childLayoutInfo"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v3, v1

    div-float v6, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    sub-float/2addr v1, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v1

    div-float/2addr v3, v5

    float-to-int v1, v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getY()I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    add-float/2addr p1, v2

    div-float/2addr p1, v5

    float-to-int p1, p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v5

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, LG5/d3;->f(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v4, v3}, LG5/d3;->f(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p1

    if-le p2, v3, :cond_2

    move p2, v3

    :cond_2
    :try_start_0
    invoke-static {p0, v1, p1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static final cropVisibleBitmapFromImageView(Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "imageView"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childLayoutInfo"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->Companion:Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo$Companion;->getLayoutInfoFromView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->cropVisibleBitmapForChildView(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private final getBlurScript()Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->blurScript$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/renderscript/ScriptIntrinsicBlur;

    return-object p0
.end method

.method private final getRenderScript()Landroid/renderscript/RenderScript;
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->renderScript$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/renderscript/RenderScript;

    return-object p0
.end method

.method private static final renderScript_delegate$lambda$0()Landroid/renderscript/RenderScript;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method
