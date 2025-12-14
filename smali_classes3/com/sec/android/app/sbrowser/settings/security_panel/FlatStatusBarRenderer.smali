.class public Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBarBgPaint:Landroid/graphics/Paint;

.field private mBarPaint:Landroid/graphics/Paint;

.field private mCurStatus:I

.field private mGradientEndColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mGradientStartColor:I

.field private mGraphHeight:F

.field private mGraphOutlinePath:Landroid/graphics/Path;

.field private mGraphRadius:F

.field private mGraphWidths:[F

.field private mIsRtl:Z

.field private mMaxGraphWidth:F

.field private mOnFirstDrawGraph:Z

.field private mProgress:F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mTotalBarLength:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cb7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cbc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphRadius:F

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphWidths:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mTotalBarLength:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphOutlinePath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarBgPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060867

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060860

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientStartColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06085f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientEndColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->setupAnimator()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->lambda$setupAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgress:F

    return-void
.end method

.method private getBarWidth()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphWidths:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mTotalBarLength:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mMaxGraphWidth:F

    mul-float/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private getEndPoint(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->getBarWidth()F

    move-result p0

    add-float/2addr p0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getEndPoint : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlatStatusBarRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setupAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgress:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setupAnimator mProgress : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlatStatusBarRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setupAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, LK6/i;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, LK6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDraw width : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlatStatusBarRenderer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mIsRtl:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    iget v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    div-float/2addr v5, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v9, v2, v6, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mCurStatus:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    mul-float v13, v2, v1

    iget v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgress:F

    mul-float/2addr v1, v13

    iput v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mMaxGraphWidth:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDraw mMaxGraphWidth * mProgress : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mMaxGraphWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    iget v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphRadius:F

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v3

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    iget v7, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphRadius:F

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mCurStatus:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->getEndPoint(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060868

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v15, v1

    iget v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    iget v7, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphRadius:F

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mBarPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v4, v15

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mOnFirstDrawGraph:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mOnFirstDrawGraph:Z

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v14, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    iget v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientStartColor:I

    iget v3, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientEndColor:I

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v1

    move v4, v15

    move v15, v2

    move/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    move v4, v15

    :goto_0
    iget v5, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphHeight:F

    iget v7, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphRadius:F

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setGraph([FFZIZ)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mTotalBarLength:F

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mCurStatus:I

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mIsRtl:Z

    const/4 p2, 0x0

    :goto_0
    const/4 p4, 0x3

    if-ge p2, p4, :cond_0

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mGraphWidths:[F

    aget p5, p1, p2

    aput p5, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mOnFirstDrawGraph:Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x384

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method
