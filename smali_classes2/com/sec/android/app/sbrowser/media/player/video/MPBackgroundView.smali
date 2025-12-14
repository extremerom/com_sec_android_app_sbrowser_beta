.class public Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;->isStandAloneVideo()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v3, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    move-object v3, v11

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v6, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/16 v17, 0x0

    const/high16 v18, -0x1000000

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v4, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v3, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    move-object v3, v11

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v15, v4

    const/16 v17, 0x0

    const/high16 v18, -0x1000000

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v7, v1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;

    return-void
.end method
