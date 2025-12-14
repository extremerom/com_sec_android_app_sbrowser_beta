.class Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;,
        Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBorderBounds:Landroid/graphics/RectF;

.field private final mBorderSize:I

.field private final mCanvasRect:Landroid/graphics/RectF;

.field private final mContainerView:Landroid/view/View;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private final mEndBounds:Landroid/graphics/RectF;

.field private final mEndCornerRadius:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintBorder:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mProgressProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartBounds:Landroid/graphics/RectF;

.field private final mStartCornerRadius:F

.field private final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;FFLorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;)V
    .locals 7

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    new-instance v0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$1;

    const-string v1, "progress"

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$1;-><init>(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgressProperty:Landroid/util/FloatProperty;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCurrentBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBorderBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCanvasRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mContainerView:Landroid/view/View;

    iget p1, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    iget v3, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startHeight:I

    const/4 v4, 0x2

    invoke-static {p3, p1, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p3, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetWidth:I

    int-to-float p3, p3

    iget v3, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    int-to-float v3, v3

    div-float/2addr p3, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    iget v5, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    int-to-float v5, v5

    iget v6, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startHeight:I

    int-to-float v6, v6

    invoke-virtual {v0, v4, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v5, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetWidth:I

    int-to-float v5, v5

    iget p6, p6, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetHeight:I

    int-to-float p6, p6

    invoke-virtual {v1, v4, v4, v5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v1, p4, p5}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->centerRectAtPoint(Landroid/graphics/RectF;FF)V

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    sget p4, Lorg/chromium/ui/R$dimen;->drag_shadow_border_size:I

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBorderSize:I

    iget p5, v2, Landroid/graphics/RectF;->left:F

    int-to-float p6, p4

    sub-float/2addr p5, p6

    iput p5, v2, Landroid/graphics/RectF;->left:F

    iget p6, v2, Landroid/graphics/RectF;->top:F

    int-to-float v5, p4

    sub-float/2addr p6, v5

    iput p6, v2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, p4

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p4

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    neg-float p5, p5

    neg-float p6, p6

    invoke-virtual {v2, p5, p6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, p5, p6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v1, p5, p6}, Landroid/graphics/RectF;->offset(FF)V

    sget p5, Lorg/chromium/ui/R$dimen;->drag_shadow_border_corner_radius:I

    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    int-to-float p5, p5

    iput p5, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndCornerRadius:F

    div-float/2addr p5, p3

    iput p5, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartCornerRadius:F

    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    int-to-float p6, p6

    invoke-direct {p3, v4, v4, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBitmapRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/BitmapShader;

    sget-object p5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p3, p1, p5, p5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mPaintBorder:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p3, p4

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p3, Lorg/chromium/ui/R$color;->drag_shadow_outline_color:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mContainerView:Landroid/view/View;

    return-object p0
.end method

.method public static adjustCursorOffset(FFIILorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;)Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;
    .locals 2

    iget v0, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->truncatedHeight:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p3, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    mul-float/2addr p0, p3

    mul-float/2addr p1, p3

    int-to-float p2, v0

    sub-float/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startHeight:I

    int-to-float p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    new-instance p2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;

    invoke-direct {p2, p0, p1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;-><init>(FF)V

    return-object p2

    :cond_0
    iget v0, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->truncatedWidth:I

    if-eqz v0, :cond_1

    iget p2, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startHeight:I

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float/2addr p0, p2

    mul-float/2addr p1, p2

    int-to-float p2, v0

    sub-float/2addr p0, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p2, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    int-to-float p2, p2

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;

    invoke-direct {p2, p0, p1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;-><init>(FF)V

    return-object p2

    :cond_1
    iget p3, p4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->startWidth:I

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    mul-float/2addr p0, p3

    mul-float/2addr p1, p3

    new-instance p2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;

    invoke-direct {p2, p0, p1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;-><init>(FF)V

    return-object p2
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;)F
    .locals 0

    iget p0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;F)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    return-void
.end method

.method private static centerRectAtPoint(Landroid/graphics/RectF;FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static getDragShadowMinSize(Landroid/content/res/Resources;)I
    .locals 1

    sget v0, Lorg/chromium/ui/R$dimen;->drag_shadow_min_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getDragShadowSpec(Landroid/content/Context;IIII)Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v1, p1

    int-to-float v1, v1

    move/from16 v2, p2

    int-to-float v2, v2

    sget v3, Lorg/chromium/ui/R$dimen;->drag_shadow_resize_ratio:I

    sget-object v4, LW0/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float v4, v1, v3

    mul-float/2addr v3, v2

    sget v5, Lorg/chromium/ui/R$dimen;->drag_shadow_max_size_to_window_ratio:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    move/from16 v6, p4

    int-to-float v6, v6

    mul-float/2addr v6, v5

    move/from16 v7, p3

    int-to-float v7, v7

    mul-float/2addr v7, v5

    cmpl-float v5, v4, v7

    if-gtz v5, :cond_0

    cmpl-float v5, v3, v6

    if-lez v5, :cond_1

    :cond_0
    div-float v5, v6, v3

    div-float v8, v7, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v3, v5

    :cond_1
    invoke-static {v0}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->getDragShadowMinSize(Landroid/content/res/Resources;)I

    move-result v0

    cmpg-float v5, v4, v3

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-gtz v5, :cond_3

    int-to-float v5, v0

    cmpg-float v10, v4, v5

    if-gez v10, :cond_3

    div-float/2addr v5, v4

    mul-float/2addr v3, v5

    mul-float v7, v4, v5

    cmpl-float v0, v3, v6

    if-lez v0, :cond_2

    div-float v0, v6, v7

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    div-float/2addr v2, v8

    move/from16 v17, v2

    move v2, v0

    move/from16 v0, v17

    goto :goto_0

    :cond_2
    move v6, v3

    move v0, v9

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    cmpg-float v5, v3, v0

    if-gez v5, :cond_4

    div-float/2addr v0, v3

    mul-float/2addr v3, v0

    mul-float/2addr v4, v0

    cmpl-float v0, v4, v7

    if-lez v0, :cond_4

    div-float v0, v7, v3

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    div-float/2addr v1, v8

    move/from16 v17, v1

    move v1, v0

    move v0, v9

    move/from16 v9, v17

    goto :goto_1

    :cond_4
    move v7, v4

    move v0, v9

    :goto_1
    new-instance v4, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;-><init>(IIIIII)V

    return-object v4
.end method

.method private static lerp(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, LB/e;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    invoke-static {v1, v2, v3}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->lerp(FFF)F

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    invoke-static {v2, v3, v4}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->lerp(FFF)F

    move-result v2

    iget-object v3, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    invoke-static {v3, v4, v5}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->lerp(FFF)F

    move-result v3

    iget-object v4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    invoke-static {v4, v5, v6}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->lerp(FFF)F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mTransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCurrentBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mStartCornerRadius:F

    iget v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndCornerRadius:F

    iget v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    invoke-static {v0, v1, v2}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->lerp(FFF)F

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgress:F

    const v3, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBorderBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCurrentBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBorderSize:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget v5, v2, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget v7, v2, Landroid/graphics/RectF;->right:F

    int-to-float v8, v4

    div-float/2addr v8, v6

    add-float/2addr v8, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    invoke-virtual {v1, v3, v5, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mBorderBounds:Landroid/graphics/RectF;

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mEndBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->mProgressProperty:Landroid/util/FloatProperty;

    const/4 p2, 0x1

    new-array v0, p2, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
