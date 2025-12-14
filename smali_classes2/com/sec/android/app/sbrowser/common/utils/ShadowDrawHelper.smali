.class public final Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\'B!\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0018R\u0017\u0010\u001a\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R*\u0010$\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u00148\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001e\u001a\u0004\u0008%\u0010 \"\u0004\u0008&\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;",
        "",
        "",
        "shadowColor",
        "shadowOffsetX",
        "shadowOffsetY",
        "<init>",
        "(III)V",
        "Ldb/r;",
        "updateShadowLayer",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/Canvas;",
        "canvas",
        "roundedCornerRadius",
        "dispatchDraw",
        "(Landroid/view/View;Landroid/graphics/Canvas;I)V",
        "Landroid/graphics/RectF;",
        "bounds",
        "",
        "cornerRadius",
        "drawRoundedShadowWithClip",
        "(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V",
        "I",
        "Landroid/graphics/Paint;",
        "shadowPaint",
        "Landroid/graphics/Paint;",
        "getShadowPaint",
        "()Landroid/graphics/Paint;",
        "F",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "value",
        "elevation",
        "getElevation",
        "setElevation",
        "Builder",
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


# instance fields
.field private cornerRadius:F

.field private elevation:F

.field private final shadowColor:I

.field private final shadowOffsetX:I

.field private final shadowOffsetY:I

.field private final shadowPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowColor:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowOffsetX:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowOffsetY:I

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->updateShadowLayer()V

    return-void
.end method

.method private final updateShadowLayer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->elevation:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowOffsetX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowOffsetY:I

    int-to-float v3, v3

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvas"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p3

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->drawRoundedShadowWithClip(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public final drawRoundedShadowWithClip(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p2, p3, p3, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public final getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->cornerRadius:F

    return p0
.end method

.method public final setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->cornerRadius:F

    return-void
.end method

.method public final setElevation(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->elevation:F

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->updateShadowLayer()V

    return-void
.end method
