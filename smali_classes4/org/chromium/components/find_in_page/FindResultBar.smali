.class public Lorg/chromium/components/find_in_page/FindResultBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveBorderColor:I

.field private final mActiveColor:I

.field private mActiveMatch:Landroid/graphics/RectF;

.field private final mActiveMinHeight:I

.field private final mBackgroundBorderColor:I

.field private final mBackgroundColor:I

.field private final mBarDrawWidth:I

.field private mBarHeightForWhichTickmarksWereCached:I

.field private final mBarVerticalPadding:I

.field private mDismissing:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

.field private mMatches:[Landroid/graphics/RectF;

.field private final mMinGapBetweenStacks:I

.field private mRectsVersion:I

.field private final mResultBorderColor:I

.field private final mResultColor:I

.field private final mResultMinHeight:I

.field private final mStackedResultHeight:I

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mTickmarks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForActivateAck:Z

.field private final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/find_in_page/FindResultBar$1;

    invoke-direct {v0}, Lorg/chromium/components/find_in_page/FindResultBar$1;-><init>()V

    sput-object v0, Lorg/chromium/components/find_in_page/FindResultBar;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/find_in_page/FindResultBar;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarDrawWidth:I

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/find_in_page/FindResultBar;)I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/find_in_page/FindResultBar;->getLeftMargin()I

    move-result p0

    return p0
.end method

.method private calculateTickmarks()V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/find_in_page/FindResultBar;->tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    move-result-object v0

    iget v2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMinGapBetweenStacks:I

    neg-int v2, v2

    int-to-float v2, v2

    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_0

    aget-object v0, v5, v3

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/find_in_page/FindResultBar;->tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    move-result-object v0

    iget v5, v0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    invoke-static {v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    iget v6, v6, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    iget v8, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMinGapBetweenStacks:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMinGapBetweenStacks:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    iget v8, v8, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    iget v9, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStackedResultHeight:I

    mul-int/2addr v9, v6

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mResultMinHeight:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    iget v10, v10, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    invoke-static {v9, v2, v10}, Lorg/chromium/base/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v10, v2, v9

    if-ltz v10, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    sub-float v10, v8, v2

    sub-float v9, v8, v9

    div-float v9, v10, v9

    :goto_2
    if-ne v5, v7, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    sub-float v7, v8, v2

    iget v10, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mResultMinHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v7, v10

    int-to-float v10, v6

    div-float/2addr v7, v10

    :goto_3
    move v10, v1

    :goto_4
    if-ge v10, v5, :cond_4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    int-to-float v12, v10

    mul-float/2addr v12, v7

    add-float/2addr v12, v2

    iput v12, v11, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    if-eq v10, v6, :cond_3

    iget v13, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mResultMinHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    add-float/2addr v13, v12

    iput v13, v11, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    :cond_3
    iget-object v12, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    move v2, v8

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private expandTickmarkToMinHeight(Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;Z)Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;
    .locals 3

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mActiveMinHeight:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mResultMinHeight:I

    :goto_0
    int-to-float p2, p2

    invoke-virtual {p1}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->height()F

    move-result v0

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    iget v1, p1, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mTop:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget p1, p1, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->mBottom:F

    add-float/2addr p1, p2

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;-><init>(Lorg/chromium/components/find_in_page/FindResultBar;FF)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getLeftMargin()I
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarDrawWidth:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method private tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;
    .locals 5

    iget v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    iget v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarVerticalPadding:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    new-instance v2, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    int-to-float v4, v1

    add-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, v0

    int-to-float v0, v1

    add-float/2addr p1, v0

    invoke-direct {v2, p0, v3, p1}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;-><init>(Lorg/chromium/components/find_in_page/FindResultBar;FF)V

    invoke-direct {p0, v2, p2}, Lorg/chromium/components/find_in_page/FindResultBar;->expandTickmarkToMinHeight(Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;Z)Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRectsVersion()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mRectsVersion:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lorg/chromium/components/find_in_page/FindResultBar;->getLeftMargin()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBackgroundBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v0

    iget v2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarDrawWidth:I

    add-int/2addr v2, v0

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    iget v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarDrawWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v3

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    add-float v0, v1, v3

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v0, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/find_in_page/FindResultBar;->calculateTickmarks()V

    :cond_2
    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mResultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mResultBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    invoke-virtual {v1}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->toRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mActiveMatch:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mActiveMatch:Landroid/graphics/RectF;

    sget-object v3, Lorg/chromium/components/find_in_page/FindResultBar;->sComparator:Ljava/util/Comparator;

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/components/find_in_page/FindResultBar;->expandTickmarkToMinHeight(Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;Z)Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mActiveColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mActiveBorderColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mDismissing:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    iget p0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mRectsVersion:I

    invoke-virtual {p1, p0}, Lorg/chromium/components/find_in_page/FindInPageBridge;->requestFindMatchRects(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mDismissing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mWaitingForActivateAck:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lorg/chromium/ui/KeyboardVisibilityDelegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    new-instance v2, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;-><init>(Lorg/chromium/components/find_in_page/FindResultBar;FF)V

    invoke-static {v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    rsub-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_1

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    rsub-int/lit8 v0, v0, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    invoke-virtual {v0}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->centerY()F

    move-result v0

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v4, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;

    invoke-virtual {v4}, Lorg/chromium/components/find_in_page/FindResultBar$Tickmark;->centerY()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    move v3, v1

    :cond_2
    sub-int v0, v2, v3

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mWaitingForActivateAck:Z

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    iget-object v2, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object p0, p0, Lorg/chromium/components/find_in_page/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {p1, v2, p0}, Lorg/chromium/components/find_in_page/FindInPageBridge;->activateNearestFindResult(FF)V

    :cond_4
    return v1
.end method
