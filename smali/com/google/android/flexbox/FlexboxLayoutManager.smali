.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/J0;
.source "SourceFile"

# interfaces
.implements LS4/a;
.implements Landroidx/recyclerview/widget/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlignItems:I

.field private mAnchorInfo:LS4/d;

.field private final mContext:Landroid/content/Context;

.field private mDirtyPosition:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LS4/b;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:LS4/c;

.field private mFlexWrap:I

.field private final mFlexboxHelper:Lcom/google/android/flexbox/a;

.field private mFromBottomToTop:Z

.field private mIsRtl:Z

.field private mJustifyContent:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutState:LS4/e;

.field private mMaxLine:I

.field private mOrientationHelper:Landroidx/recyclerview/widget/m0;

.field private mParent:Landroid/view/View;

.field private mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mRecycler:Landroidx/recyclerview/widget/R0;

.field private mState:Landroidx/recyclerview/widget/d1;

.field private mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

.field private mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/J0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    new-instance v1, Lcom/google/android/flexbox/a;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/a;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    new-instance v1, LS4/d;

    invoke-direct {v1, p0}, LS4/d;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    new-instance v0, LS4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/J0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    new-instance v1, Lcom/google/android/flexbox/a;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/a;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    new-instance v1, LS4/d;

    invoke-direct {v1, p0}, LS4/d;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    new-instance v0, LS4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/J0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/I0;

    move-result-object p2

    iget p3, p2, Landroidx/recyclerview/widget/I0;->a:I

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p2, p2, Landroidx/recyclerview/widget/I0;->c:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_2
    iget-boolean p2, p2, Landroidx/recyclerview/widget/I0;->c:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return p0
.end method

.method public static synthetic access$2900(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return p0
.end method

.method public static synthetic access$3000(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    return p0
.end method

.method public static synthetic access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/m0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/m0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object p0
.end method

.method public static b(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/d1;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/m0;->l()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public canScrollHorizontally()Z
    .locals 2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-le v0, p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public canScrollVertically()Z
    .locals 3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-le v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/K0;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/d1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroidx/recyclerview/widget/d1;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/d1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Landroidx/recyclerview/widget/d1;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/d1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(Landroidx/recyclerview/widget/d1;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/d1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroidx/recyclerview/widget/d1;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/d1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Landroidx/recyclerview/widget/d1;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/d1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(Landroidx/recyclerview/widget/d1;)I

    move-result p0

    return p0
.end method

.method public final d(Landroidx/recyclerview/widget/d1;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v4, v4, Lcom/google/android/flexbox/a;->c:[I

    aget p1, v4, p1

    if-eqz p1, :cond_3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    goto :goto_0

    :cond_2
    aget v1, v4, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final e(Landroidx/recyclerview/widget/d1;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float p0, p0

    int-to-float v0, v3

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    :goto_0
    return-void
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findLastVisibleItemPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final g(Landroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;LS4/e;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v2, LS4/e;->f:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    iget v5, v2, LS4/e;->a:I

    if-gez v5, :cond_0

    add-int/2addr v3, v5

    iput v3, v2, LS4/e;->f:I

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->r(Landroidx/recyclerview/widget/R0;LS4/e;)V

    :cond_1
    iget v3, v2, LS4/e;->a:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    move v7, v3

    const/4 v8, 0x0

    :goto_0
    if-gtz v7, :cond_3

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-boolean v9, v9, LS4/e;->b:Z

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    move/from16 v20, v3

    goto/16 :goto_18

    :cond_3
    :goto_1
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget v10, v2, LS4/e;->d:I

    if-ltz v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v11

    if-ge v10, v11, :cond_2

    iget v10, v2, LS4/e;->c:I

    if-ltz v10, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_2

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget v10, v2, LS4/e;->c:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LS4/b;

    iget v10, v9, LS4/b;->k:I

    iput v10, v2, LS4/e;->d:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v10

    const/4 v15, 0x1

    const/16 v18, 0x20

    const-string v12, "Invalid justifyContent is set: "

    const/4 v6, 0x3

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v4, -0x1

    if-eqz v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v21

    iget v13, v2, LS4/e;->e:I

    iget v14, v2, LS4/e;->h:I

    if-ne v14, v4, :cond_4

    iget v4, v9, LS4/b;->c:I

    sub-int/2addr v13, v4

    :cond_4
    move v4, v13

    iget v14, v2, LS4/e;->d:I

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v13, :cond_d

    if-eq v13, v15, :cond_c

    if-eq v13, v11, :cond_b

    if-eq v13, v6, :cond_9

    const/4 v6, 0x4

    if-eq v13, v6, :cond_7

    const/4 v6, 0x5

    if-ne v13, v6, :cond_6

    iget v6, v9, LS4/b;->d:I

    if-eqz v6, :cond_5

    iget v11, v9, LS4/b;->a:I

    sub-int v11, v21, v11

    int-to-float v11, v11

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float v6, v11, v6

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    int-to-float v10, v10

    add-float/2addr v10, v6

    sub-int v11, v21, v20

    int-to-float v11, v11

    sub-float/2addr v11, v6

    goto :goto_6

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v6, v9, LS4/b;->d:I

    if-eqz v6, :cond_8

    iget v11, v9, LS4/b;->a:I

    sub-int v11, v21, v11

    int-to-float v11, v11

    int-to-float v6, v6

    div-float v6, v11, v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    int-to-float v10, v10

    div-float v11, v6, v16

    add-float/2addr v10, v11

    sub-int v12, v21, v20

    int-to-float v12, v12

    sub-float v11, v12, v11

    goto :goto_6

    :cond_9
    int-to-float v10, v10

    iget v6, v9, LS4/b;->d:I

    if-eq v6, v15, :cond_a

    add-int/lit8 v6, v6, -0x1

    int-to-float v11, v6

    goto :goto_4

    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_4
    iget v6, v9, LS4/b;->a:I

    sub-int v6, v21, v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    sub-int v11, v21, v20

    int-to-float v11, v11

    goto :goto_6

    :cond_b
    int-to-float v6, v10

    iget v10, v9, LS4/b;->a:I

    sub-int v10, v21, v10

    int-to-float v10, v10

    div-float v10, v10, v16

    add-float/2addr v6, v10

    sub-int v11, v21, v20

    int-to-float v11, v11

    sub-float/2addr v11, v10

    move v10, v6

    :goto_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    iget v6, v9, LS4/b;->a:I

    sub-int v21, v21, v6

    add-int v11, v21, v20

    int-to-float v11, v11

    sub-int/2addr v6, v10

    int-to-float v6, v6

    move v10, v11

    move v11, v6

    goto :goto_5

    :cond_d
    int-to-float v10, v10

    sub-int v6, v21, v20

    int-to-float v11, v6

    goto :goto_5

    :goto_6
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v12, v12, LS4/d;->d:I

    int-to-float v12, v12

    sub-float/2addr v10, v12

    sub-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v13, v9, LS4/b;->d:I

    move v12, v14

    const/16 v24, 0x0

    :goto_7
    add-int v15, v14, v13

    if-ge v12, v15, :cond_12

    invoke-virtual {v0, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_e

    move/from16 v20, v3

    move/from16 v19, v4

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_e
    move/from16 v16, v13

    iget v13, v2, LS4/e;->h:I

    move/from16 v20, v3

    const/4 v3, 0x1

    if-ne v13, v3, :cond_f

    sget-object v13, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v13}, Landroidx/recyclerview/widget/J0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/J0;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_f
    sget-object v13, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v13}, Landroidx/recyclerview/widget/J0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    move/from16 v13, v24

    invoke-virtual {v0, v15, v13}, Landroidx/recyclerview/widget/J0;->addView(Landroid/view/View;I)V

    add-int/lit8 v24, v13, 0x1

    :goto_8
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v13, v13, Lcom/google/android/flexbox/a;->d:[J

    move/from16 v19, v4

    aget-wide v3, v13, v12

    long-to-int v13, v3

    shr-long v3, v3, v18

    long-to-int v3, v3

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-virtual {v0, v15, v13, v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-virtual {v15, v13, v3}, Landroid/view/View;->measure(II)V

    :cond_10
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/J0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v3

    int-to-float v3, v13

    add-float/2addr v3, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/J0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v10

    int-to-float v10, v13

    sub-float v21, v11, v10

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/J0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v10

    add-int v22, v10, v19

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v10, :cond_11

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v11, v13

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v25, v11, v22

    move-object v11, v15

    move/from16 v26, v12

    move-object v12, v9

    move/from16 v27, v16

    move/from16 v28, v14

    move/from16 v14, v22

    move-object/from16 v17, v15

    const/4 v1, 0x1

    move/from16 v15, v23

    move/from16 v16, v25

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/a;->l(Landroid/view/View;LS4/b;IIII)V

    goto :goto_9

    :cond_11
    move/from16 v26, v12

    move/from16 v28, v14

    move-object/from16 v17, v15

    move/from16 v27, v16

    const/4 v1, 0x1

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v15, v12, v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v16, v11, v22

    move-object/from16 v11, v17

    move-object v12, v9

    move/from16 v14, v22

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/flexbox/a;->l(Landroid/view/View;LS4/b;IIII)V

    :goto_9
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move-object/from16 v11, v17

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/J0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    int-to-float v10, v12

    add-float/2addr v10, v6

    add-float/2addr v10, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/J0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    add-float/2addr v3, v6

    sub-float v21, v21, v3

    move/from16 v11, v21

    :goto_a
    add-int/lit8 v12, v26, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v13, v27

    move/from16 v14, v28

    goto/16 :goto_7

    :cond_12
    move/from16 v20, v3

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v1, v1, LS4/e;->h:I

    iget v3, v2, LS4/e;->c:I

    add-int/2addr v3, v1

    iput v3, v2, LS4/e;->c:I

    iget v1, v9, LS4/b;->c:I

    move/from16 v23, v7

    move-object/from16 v31, v2

    move v2, v1

    move-object/from16 v1, v31

    goto/16 :goto_16

    :cond_13
    move/from16 v20, v3

    move v1, v15

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getPaddingBottom()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v13

    iget v14, v2, LS4/e;->e:I

    iget v15, v2, LS4/e;->h:I

    if-ne v15, v4, :cond_14

    iget v4, v9, LS4/b;->c:I

    sub-int v15, v14, v4

    add-int/2addr v14, v4

    move/from16 v21, v14

    move v4, v15

    goto :goto_b

    :cond_14
    move v4, v14

    move/from16 v21, v4

    :goto_b
    iget v15, v2, LS4/e;->d:I

    iget v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v14, :cond_1d

    if-eq v14, v1, :cond_1c

    if-eq v14, v11, :cond_1b

    if-eq v14, v6, :cond_19

    const/4 v6, 0x4

    if-eq v14, v6, :cond_17

    const/4 v6, 0x5

    if-ne v14, v6, :cond_16

    iget v6, v9, LS4/b;->d:I

    if-eqz v6, :cond_15

    iget v11, v9, LS4/b;->a:I

    sub-int v11, v13, v11

    int-to-float v11, v11

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float v12, v11, v6

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    :goto_c
    int-to-float v3, v3

    add-float/2addr v3, v12

    sub-int/2addr v13, v10

    int-to-float v6, v13

    sub-float/2addr v6, v12

    goto :goto_10

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iget v6, v9, LS4/b;->d:I

    if-eqz v6, :cond_18

    iget v11, v9, LS4/b;->a:I

    sub-int v11, v13, v11

    int-to-float v11, v11

    int-to-float v6, v6

    div-float v12, v11, v6

    goto :goto_d

    :cond_18
    const/4 v12, 0x0

    :goto_d
    int-to-float v3, v3

    div-float v6, v12, v16

    add-float/2addr v3, v6

    sub-int/2addr v13, v10

    int-to-float v10, v13

    sub-float v6, v10, v6

    goto :goto_10

    :cond_19
    int-to-float v3, v3

    iget v6, v9, LS4/b;->d:I

    if-eq v6, v1, :cond_1a

    add-int/lit8 v6, v6, -0x1

    int-to-float v11, v6

    goto :goto_e

    :cond_1a
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_e
    iget v6, v9, LS4/b;->a:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    div-float v12, v6, v11

    sub-int/2addr v13, v10

    int-to-float v6, v13

    goto :goto_10

    :cond_1b
    int-to-float v3, v3

    iget v6, v9, LS4/b;->a:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    div-float v6, v6, v16

    add-float/2addr v3, v6

    sub-int/2addr v13, v10

    int-to-float v10, v13

    sub-float v6, v10, v6

    :goto_f
    const/4 v12, 0x0

    goto :goto_10

    :cond_1c
    iget v6, v9, LS4/b;->a:I

    sub-int/2addr v13, v6

    add-int/2addr v13, v10

    int-to-float v10, v13

    sub-int/2addr v6, v3

    int-to-float v6, v6

    move v3, v10

    goto :goto_f

    :cond_1d
    int-to-float v3, v3

    sub-int/2addr v13, v10

    int-to-float v6, v13

    goto :goto_f

    :goto_10
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v10, v10, LS4/d;->d:I

    int-to-float v10, v10

    sub-float/2addr v3, v10

    sub-float/2addr v6, v10

    const/4 v10, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v19

    iget v14, v9, LS4/b;->d:I

    move v13, v15

    const/4 v10, 0x0

    :goto_11
    add-int v11, v15, v14

    if-ge v13, v11, :cond_24

    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1e

    move/from16 v23, v7

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move v7, v1

    move-object v1, v2

    goto/16 :goto_15

    :cond_1e
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v11, v11, Lcom/google/android/flexbox/a;->d:[J

    aget-wide v1, v11, v13

    long-to-int v11, v1

    shr-long v1, v1, v18

    long-to-int v1, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-virtual {v0, v12, v11, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z

    move-result v16

    if-eqz v16, :cond_1f

    invoke-virtual {v12, v11, v1}, Landroid/view/View;->measure(II)V

    :cond_1f
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/J0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v1, v11

    add-float/2addr v3, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/J0;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v1, v11

    sub-float/2addr v6, v1

    move-object/from16 v1, p3

    iget v11, v1, LS4/e;->h:I

    move/from16 v23, v7

    const/4 v7, 0x1

    if-ne v11, v7, :cond_20

    sget-object v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/J0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/J0;->addView(Landroid/view/View;)V

    :goto_12
    move/from16 v22, v10

    goto :goto_13

    :cond_20
    sget-object v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/J0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v12, v10}, Landroidx/recyclerview/widget/J0;->addView(Landroid/view/View;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :goto_13
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/J0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v10

    add-int v16, v10, v4

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/J0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v10

    sub-int v17, v21, v10

    iget-boolean v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v11, :cond_22

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v10, :cond_21

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v16, v17, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v24

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v26, v11

    move-object v11, v12

    move-object/from16 v27, v12

    move-object v12, v9

    move/from16 v28, v13

    move/from16 v13, v26

    move/from16 v29, v14

    move/from16 v14, v16

    move/from16 v30, v15

    move/from16 v15, v24

    move/from16 v16, v17

    move/from16 v17, v25

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/a;->m(Landroid/view/View;LS4/b;ZIIII)V

    goto/16 :goto_14

    :cond_21
    move/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v14, v17, v11

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v24, v12, v11

    move-object/from16 v11, v27

    move-object v12, v9

    move/from16 v13, v26

    move/from16 v16, v17

    move/from16 v17, v24

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/a;->m(Landroid/view/View;LS4/b;ZIIII)V

    goto :goto_14

    :cond_22
    move/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v10, :cond_23

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v15, v11, v12

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v17, v11, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v11, v27

    move-object v12, v9

    move/from16 v13, v26

    move/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v24

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/a;->m(Landroid/view/View;LS4/b;ZIIII)V

    goto :goto_14

    :cond_23
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v17, v11, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v24, v12, v11

    move-object/from16 v11, v27

    move-object v12, v9

    move/from16 v13, v26

    move/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v24

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/a;->m(Landroid/view/View;LS4/b;ZIIII)V

    :goto_14
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move-object/from16 v11, v27

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/J0;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    int-to-float v10, v12

    add-float v10, v10, v19

    add-float/2addr v10, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/J0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float v2, v2, v19

    sub-float/2addr v6, v2

    move v3, v10

    move/from16 v10, v22

    :goto_15
    add-int/lit8 v13, v28, 0x1

    move-object v2, v1

    move v1, v7

    move/from16 v7, v23

    move/from16 v14, v29

    move/from16 v15, v30

    goto/16 :goto_11

    :cond_24
    move-object v1, v2

    move/from16 v23, v7

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v2, v2, LS4/e;->h:I

    iget v3, v1, LS4/e;->c:I

    add-int/2addr v3, v2

    iput v3, v1, LS4/e;->c:I

    iget v2, v9, LS4/b;->c:I

    :goto_16
    add-int/2addr v8, v2

    if-nez v5, :cond_25

    iget-boolean v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v2, :cond_25

    iget v2, v9, LS4/b;->c:I

    iget v3, v1, LS4/e;->h:I

    mul-int/2addr v2, v3

    iget v3, v1, LS4/e;->e:I

    sub-int/2addr v3, v2

    iput v3, v1, LS4/e;->e:I

    goto :goto_17

    :cond_25
    iget v2, v9, LS4/b;->c:I

    iget v3, v1, LS4/e;->h:I

    mul-int/2addr v2, v3

    iget v3, v1, LS4/e;->e:I

    add-int/2addr v3, v2

    iput v3, v1, LS4/e;->e:I

    :goto_17
    iget v2, v9, LS4/b;->c:I

    sub-int v7, v23, v2

    move-object v2, v1

    move/from16 v3, v20

    const/high16 v4, -0x80000000

    move-object/from16 v1, p1

    goto/16 :goto_0

    :goto_18
    iget v2, v1, LS4/e;->a:I

    sub-int/2addr v2, v8

    iput v2, v1, LS4/e;->a:I

    iget v3, v1, LS4/e;->f:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_27

    add-int/2addr v3, v8

    iput v3, v1, LS4/e;->f:I

    if-gez v2, :cond_26

    add-int/2addr v3, v2

    iput v3, v1, LS4/e;->f:I

    :cond_26
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->r(Landroidx/recyclerview/widget/R0;LS4/e;)V

    :cond_27
    iget v0, v1, LS4/e;->a:I

    sub-int v3, v20, v0

    return v3
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/K0;
    .locals 1

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/K0;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:F

    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->k:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->l:I

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/K0;
    .locals 0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/K0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->f:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->g:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->h:F

    const p1, 0xffffff

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->k:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->l:I

    return-object p0
.end method

.method public getAlignItems()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    return p0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeightMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result p0

    invoke-static {p1, v0, p2, p3, p0}, Landroidx/recyclerview/widget/J0;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    return p0
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidthMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result p0

    invoke-static {p1, v0, p2, p3, p0}, Landroidx/recyclerview/widget/J0;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    return p0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    :goto_0
    add-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    goto :goto_0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    :goto_0
    add-int/2addr p0, p2

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    goto :goto_0
.end method

.method public getFlexDirection()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return p0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/R0;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/R0;->m(IJ)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getFlexItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d1;->b()I

    move-result p0

    return p0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LS4/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object p0
.end method

.method public getFlexWrap()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return p0
.end method

.method public getLargestMainSize()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v2, -0x80000000

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS4/b;

    iget v3, v3, LS4/b;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getMaxLine()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    return p0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v2, v2, Lcom/google/android/flexbox/a;->c:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS4/b;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i(Landroid/view/View;LS4/b;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/view/View;LS4/b;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    iget p2, p2, LS4/b;->d:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 1

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final j(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v1, v1, Lcom/google/android/flexbox/a;->c:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS4/b;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k(Landroid/view/View;LS4/b;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final k(Landroid/view/View;LS4/b;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v2

    iget p2, p2, LS4/b;->d:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final l(II)Landroid/view/View;
    .locals 12

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eq p1, p2, :cond_6

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/K0;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getDecoratedLeft(Landroid/view/View;)I

    move-result v8

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/K0;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getDecoratedTop(Landroid/view/View;)I

    move-result v9

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/K0;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getDecoratedRight(Landroid/view/View;)I

    move-result v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/K0;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v7

    const/4 v7, 0x0

    if-ge v8, v5, :cond_2

    if-lt v10, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    if-ge v9, v6, :cond_3

    if-lt v11, v4, :cond_4

    :cond_3
    move v7, v0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    return-object v2

    :cond_5
    add-int/2addr p1, v1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, LS4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, LS4/e;->h:I

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v2

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_6

    if-ge v6, p3, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/K0;

    iget-object v6, v6, Landroidx/recyclerview/widget/K0;->a:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v2, :cond_4

    goto :goto_2

    :cond_4
    return-object v5

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    move-object v3, v5

    :cond_6
    :goto_3
    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public final n(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;Z)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_3

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/m0;->g()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_2

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/m0;->p(I)V

    add-int/2addr p3, p2

    return p3

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method public final o(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;Z)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/m0;->k()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/m0;->p(I)V

    sub-int/2addr p2, p1

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/u0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->removeAllViews()V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/J0;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/R0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/J0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/R0;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/R0;->b()V

    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/J0;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/J0;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/J0;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/J0;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/J0;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/R0;

    iput-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v4, v2, Landroidx/recyclerview/widget/d1;->g:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getLayoutDirection()I

    move-result v4

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v5, :cond_a

    if-eq v5, v6, :cond_7

    if-eq v5, v8, :cond_4

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_1
    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v8, :cond_3

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    :cond_3
    iput-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_4
    if-ne v4, v6, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v7

    :goto_1
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v8, :cond_6

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    :cond_6
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_7
    if-eq v4, v6, :cond_8

    move v4, v6

    goto :goto_2

    :cond_8
    move v4, v7

    :goto_2
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v8, :cond_9

    move v4, v6

    goto :goto_3

    :cond_9
    move v4, v7

    :goto_3
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_6

    :cond_a
    if-ne v4, v6, :cond_b

    move v4, v6

    goto :goto_4

    :cond_b
    move v4, v7

    :goto_4
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v8, :cond_c

    move v4, v6

    goto :goto_5

    :cond_c
    move v4, v7

    :goto_5
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    if-nez v4, :cond_d

    new-instance v4, LS4/e;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v6, v4, LS4/e;->h:I

    iput-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    :cond_d
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/a;->g(I)V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/a;->h(I)V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/a;->f(I)V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iput-boolean v7, v4, LS4/e;->i:Z

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v4, :cond_e

    iget v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    if-ltz v5, :cond_e

    if-ge v5, v3, :cond_e

    iput v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    :cond_e
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-boolean v8, v5, LS4/d;->f:Z

    const/high16 v9, -0x80000000

    const/4 v10, -0x1

    if-eqz v8, :cond_f

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v10, :cond_f

    if-eqz v4, :cond_2b

    :cond_f
    invoke-static {v5}, LS4/d;->b(LS4/d;)V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iget-boolean v8, v2, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v8, :cond_1d

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v10, :cond_10

    goto/16 :goto_a

    :cond_10
    if-ltz v8, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v11

    if-lt v8, v11, :cond_11

    goto/16 :goto_9

    :cond_11
    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    iput v8, v4, LS4/d;->a:I

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v11, v11, Lcom/google/android/flexbox/a;->c:[I

    aget v8, v11, v8

    iput v8, v4, LS4/d;->b:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v8, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v11

    iget v8, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    if-ltz v8, :cond_12

    if-ge v8, v11, :cond_12

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v8

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b:I

    add-int/2addr v8, v5

    iput v8, v4, LS4/d;->c:I

    iput-boolean v6, v4, LS4/d;->g:Z

    iput v10, v4, LS4/d;->b:I

    goto/16 :goto_12

    :cond_12
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_1a

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/J0;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->c(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/m0;->l()I

    move-result v11

    if-le v8, v11, :cond_13

    invoke-static {v4}, LS4/d;->a(LS4/d;)V

    goto/16 :goto_12

    :cond_13
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_14

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v5

    iput v5, v4, LS4/d;->c:I

    iput-boolean v7, v4, LS4/d;->e:Z

    goto/16 :goto_12

    :cond_14
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_15

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v5

    iput v5, v4, LS4/d;->c:I

    iput-boolean v6, v4, LS4/d;->e:Z

    goto/16 :goto_12

    :cond_15
    iget-boolean v8, v4, LS4/d;->e:Z

    if-eqz v8, :cond_16

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v5

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m0;->m()I

    move-result v8

    add-int/2addr v8, v5

    goto :goto_7

    :cond_16
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v8

    :goto_7
    iput v8, v4, LS4/d;->c:I

    goto/16 :goto_12

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v5

    if-lez v5, :cond_19

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge v8, v5, :cond_18

    move v5, v6

    goto :goto_8

    :cond_18
    move v5, v7

    :goto_8
    iput-boolean v5, v4, LS4/d;->e:Z

    :cond_19
    invoke-static {v4}, LS4/d;->a(LS4/d;)V

    goto/16 :goto_12

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_1b

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m0;->h()I

    move-result v8

    sub-int/2addr v5, v8

    iput v5, v4, LS4/d;->c:I

    goto/16 :goto_12

    :cond_1b
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v5

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v8

    iput v5, v4, LS4/d;->c:I

    goto/16 :goto_12

    :cond_1c
    :goto_9
    iput v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    iput v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :cond_1d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_11

    :cond_1e
    iget-boolean v5, v4, LS4/d;->e:Z

    if-eqz v5, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j(I)Landroid/view/View;

    move-result-object v5

    goto :goto_b

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v5

    :goto_b
    if-eqz v5, :cond_29

    iget-object v8, v4, LS4/d;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v11

    if-nez v11, :cond_20

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3200(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/m0;

    move-result-object v11

    goto :goto_c

    :cond_20
    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/m0;

    move-result-object v11

    :goto_c
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v12

    if-nez v12, :cond_22

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3000(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v12

    if-eqz v12, :cond_22

    iget-boolean v12, v4, LS4/d;->e:Z

    if-eqz v12, :cond_21

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v11}, Landroidx/recyclerview/widget/m0;->m()I

    move-result v11

    add-int/2addr v11, v12

    iput v11, v4, LS4/d;->c:I

    goto :goto_d

    :cond_21
    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v11

    iput v11, v4, LS4/d;->c:I

    goto :goto_d

    :cond_22
    iget-boolean v12, v4, LS4/d;->e:Z

    if-eqz v12, :cond_23

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v11}, Landroidx/recyclerview/widget/m0;->m()I

    move-result v11

    add-int/2addr v11, v12

    iput v11, v4, LS4/d;->c:I

    goto :goto_d

    :cond_23
    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v11

    iput v11, v4, LS4/d;->c:I

    :goto_d
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v11

    iput v11, v4, LS4/d;->a:I

    iput-boolean v7, v4, LS4/d;->g:Z

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3300(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/a;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/flexbox/a;->c:[I

    iget v12, v4, LS4/d;->a:I

    if-eq v12, v10, :cond_24

    goto :goto_e

    :cond_24
    move v12, v7

    :goto_e
    aget v11, v11, v12

    if-eq v11, v10, :cond_25

    goto :goto_f

    :cond_25
    move v11, v7

    :goto_f
    iput v11, v4, LS4/d;->b:I

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3400(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget v12, v4, LS4/d;->b:I

    if-le v11, v12, :cond_26

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->access$3400(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    move-result-object v8

    iget v11, v4, LS4/d;->b:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LS4/b;

    iget v8, v8, LS4/b;->k:I

    iput v8, v4, LS4/d;->a:I

    :cond_26
    iget-boolean v8, v2, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v8, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->supportsPredictiveItemAnimations()Z

    move-result v8

    if-eqz v8, :cond_2a

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v11

    if-ge v8, v11, :cond_27

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v5

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v8

    if-ge v5, v8, :cond_2a

    :cond_27
    iget-boolean v5, v4, LS4/d;->e:Z

    if-eqz v5, :cond_28

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v5

    goto :goto_10

    :cond_28
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v5

    :goto_10
    iput v5, v4, LS4/d;->c:I

    goto :goto_12

    :cond_29
    :goto_11
    invoke-static {v4}, LS4/d;->a(LS4/d;)V

    iput v7, v4, LS4/d;->a:I

    iput v7, v4, LS4/d;->b:I

    :cond_2a
    :goto_12
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iput-boolean v6, v4, LS4/d;->f:Z

    :cond_2b
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/J0;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/R0;)V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-boolean v5, v4, LS4/d;->e:Z

    if-eqz v5, :cond_2c

    invoke-virtual {v0, v4, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w(LS4/d;ZZ)V

    goto :goto_13

    :cond_2c
    invoke-virtual {v0, v4, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v(LS4/d;ZZ)V

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getWidthMode()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getHeightMode()I

    move-result v8

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v12

    if-eqz v12, :cond_2f

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v12, v9, :cond_2d

    if-eq v12, v8, :cond_2d

    move v9, v6

    goto :goto_14

    :cond_2d
    move v9, v7

    :goto_14
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-boolean v13, v12, LS4/e;->b:Z

    if-eqz v13, :cond_2e

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_15

    :cond_2e
    iget v12, v12, LS4/e;->a:I

    :goto_15
    move v15, v12

    goto :goto_17

    :cond_2f
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v12, v9, :cond_30

    if-eq v12, v11, :cond_30

    move v9, v6

    goto :goto_16

    :cond_30
    move v9, v7

    :goto_16
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-boolean v13, v12, LS4/e;->b:Z

    if-eqz v13, :cond_31

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_15

    :cond_31
    iget v12, v12, LS4/e;->a:I

    goto :goto_15

    :goto_17
    iput v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 v11, 0x0

    if-ne v8, v10, :cond_35

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v12, v10, :cond_32

    if-eqz v9, :cond_35

    :cond_32
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-boolean v3, v3, LS4/d;->e:Z

    if-eqz v3, :cond_33

    goto/16 :goto_1b

    :cond_33
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iput-object v11, v3, LS4/c;->a:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v3, v3, LS4/d;->a:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, 0x0

    move v13, v4

    move v14, v5

    move/from16 v17, v3

    move-object/from16 v18, v8

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    goto :goto_18

    :cond_34
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v3, v3, LS4/d;->a:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, 0x0

    move v13, v5

    move v14, v4

    move/from16 v17, v3

    move-object/from16 v18, v8

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    :goto_18
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v3, LS4/c;->a:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v3, v4, v5, v7}, Lcom/google/android/flexbox/a;->e(III)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v3, v7}, Lcom/google/android/flexbox/a;->q(I)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v4, v4, Lcom/google/android/flexbox/a;->c:[I

    iget v5, v3, LS4/d;->a:I

    aget v4, v4, v5

    iput v4, v3, LS4/d;->b:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iput v4, v3, LS4/e;->c:I

    goto/16 :goto_1b

    :cond_35
    if-eq v8, v10, :cond_36

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v9, v9, LS4/d;->a:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_19

    :cond_36
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v8, v8, LS4/d;->a:I

    :goto_19
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iput-object v11, v9, LS4/c;->a:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-eqz v9, :cond_38

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_37

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/flexbox/a;->d(ILjava/util/List;)V

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v3, v3, LS4/d;->a:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v13, v4

    move v14, v5

    move/from16 v16, v8

    move/from16 v17, v3

    move-object/from16 v18, v9

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    goto :goto_1a

    :cond_37
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v9, v3}, Lcom/google/android/flexbox/a;->f(I)V

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v17, -0x1

    const/16 v16, 0x0

    move v13, v4

    move v14, v5

    move-object/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    goto :goto_1a

    :cond_38
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_39

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/flexbox/a;->d(ILjava/util/List;)V

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget v3, v3, LS4/d;->a:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v13, v5

    move v14, v4

    move/from16 v16, v8

    move/from16 v17, v3

    move-object/from16 v18, v9

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    goto :goto_1a

    :cond_39
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v9, v3}, Lcom/google/android/flexbox/a;->f(I)V

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v17, -0x1

    const/16 v16, 0x0

    move v13, v5

    move v14, v4

    move-object/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    :goto_1a
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    iget-object v3, v3, LS4/c;->a:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v3, v4, v5, v8}, Lcom/google/android/flexbox/a;->e(III)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v3, v8}, Lcom/google/android/flexbox/a;->q(I)V

    :goto_1b
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g(Landroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;LS4/e;)I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-boolean v4, v3, LS4/d;->e:Z

    if-eqz v4, :cond_3a

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v4, LS4/e;->e:I

    invoke-virtual {v0, v3, v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v(LS4/d;ZZ)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g(Landroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;LS4/e;)I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v3, v3, LS4/e;->e:I

    goto :goto_1c

    :cond_3a
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v4, LS4/e;->e:I

    invoke-virtual {v0, v3, v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w(LS4/d;ZZ)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g(Landroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;LS4/e;)I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v3, v3, LS4/e;->e:I

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3c

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget-boolean v5, v5, LS4/d;->e:Z

    if-eqz v5, :cond_3b

    invoke-virtual {v0, v3, v1, v2, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;Z)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;Z)I

    goto :goto_1d

    :cond_3b
    invoke-virtual {v0, v4, v1, v2, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;Z)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;Z)I

    :cond_3c
    :goto_1d
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/d1;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    invoke-static {p1}, LS4/d;->b(LS4/d;)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILS4/b;)V
    .locals 0

    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/J0;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, p2

    iget p1, p4, LS4/b;->a:I

    add-int/2addr p1, p0

    iput p1, p4, LS4/b;->a:I

    iget p1, p4, LS4/b;->b:I

    add-int/2addr p1, p0

    iput p1, p4, LS4/b;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, p2

    iget p1, p4, LS4/b;->a:I

    add-int/2addr p1, p0

    iput p1, p4, LS4/b;->a:I

    iget p1, p4, LS4/b;->b:I

    add-int/2addr p1, p0

    iput p1, p4, LS4/b;->b:I

    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(LS4/b;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b:I

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/m0;->k()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    iput p0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    :goto_0
    return-object v0
.end method

.method public final p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    const/4 v3, 0x1

    iput-boolean v3, v1, LS4/e;->i:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_3

    if-gez p1, :cond_2

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_2

    :cond_3
    if-lez p1, :cond_2

    goto :goto_1

    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iput v5, v7, LS4/e;->h:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getWidthMode()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getHeightMode()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    if-nez v7, :cond_4

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v10, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    if-ne v5, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v13

    iput v13, v12, LS4/e;->e:I

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v13, v13, Lcom/google/android/flexbox/a;->c:[I

    aget v13, v13, v12

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LS4/b;

    invoke-virtual {v0, v11, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k(Landroid/view/View;LS4/b;)Landroid/view/View;

    move-result-object v11

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v12, v3

    iput v12, v13, LS4/e;->d:I

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v14, v14, Lcom/google/android/flexbox/a;->c:[I

    array-length v15, v14

    if-gt v15, v12, :cond_6

    iput v4, v13, LS4/e;->c:I

    goto :goto_4

    :cond_6
    aget v12, v14, v12

    iput v12, v13, LS4/e;->c:I

    :goto_4
    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v10

    iput v10, v13, LS4/e;->e:I

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v11

    neg-int v11, v11

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v10, LS4/e;->f:I

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v11, v10, LS4/e;->f:I

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, LS4/e;->f:I

    goto :goto_5

    :cond_7
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v10

    iput v10, v13, LS4/e;->e:I

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v10, LS4/e;->f:I

    :goto_5
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v10, v10, LS4/e;->c:I

    if-eq v10, v4, :cond_8

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v10, v4, :cond_10

    :cond_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v3, v3, LS4/e;->d:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v4

    if-gt v3, v4, :cond_10

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v3, LS4/e;->f:I

    sub-int v14, v6, v4

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:LS4/c;

    const/4 v4, 0x0

    iput-object v4, v11, LS4/c;->a:Ljava/util/List;

    if-lez v14, :cond_10

    if-eqz v7, :cond_9

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget v15, v3, LS4/e;->d:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v8

    move v13, v9

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    goto :goto_6

    :cond_9
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget v15, v3, LS4/e;->d:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v9

    move v13, v8

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/a;->b(LS4/c;IIIIILjava/util/List;)V

    :goto_6
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v4, LS4/e;->d:I

    invoke-virtual {v3, v8, v9, v4}, Lcom/google/android/flexbox/a;->e(III)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v4, LS4/e;->d:I

    invoke-virtual {v3, v4}, Lcom/google/android/flexbox/a;->q(I)V

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    goto/16 :goto_a

    :cond_b
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v9

    iput v9, v8, LS4/e;->e:I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v9, v9, Lcom/google/android/flexbox/a;->c:[I

    aget v9, v9, v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LS4/b;

    invoke-virtual {v0, v7, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i(Landroid/view/View;LS4/b;)Landroid/view/View;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v11, v11, Lcom/google/android/flexbox/a;->c:[I

    aget v11, v11, v8

    if-ne v11, v4, :cond_c

    move v11, v2

    :cond_c
    if-lez v11, :cond_d

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v9, v11, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS4/b;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v4, LS4/b;->d:I

    sub-int/2addr v8, v4

    iput v8, v9, LS4/e;->d:I

    goto :goto_7

    :cond_d
    iput v4, v9, LS4/e;->d:I

    :goto_7
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    if-lez v11, :cond_e

    sub-int/2addr v11, v3

    goto :goto_8

    :cond_e
    move v11, v2

    :goto_8
    iput v11, v4, LS4/e;->c:I

    if-eqz v10, :cond_f

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v3

    iput v3, v4, LS4/e;->e:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v4

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, LS4/e;->f:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v3, LS4/e;->f:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, LS4/e;->f:I

    goto :goto_9

    :cond_f
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v3

    iput v3, v4, LS4/e;->e:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v4

    neg-int v4, v4

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v7

    add-int/2addr v7, v4

    iput v7, v3, LS4/e;->f:I

    :cond_10
    :goto_9
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v3, LS4/e;->f:I

    sub-int v4, v6, v4

    iput v4, v3, LS4/e;->a:I

    :goto_a
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v4, v3, LS4/e;->f:I

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v0, v7, v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g(Landroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;LS4/e;)I

    move-result v3

    add-int/2addr v3, v4

    if-gez v3, :cond_11

    return v2

    :cond_11
    if-eqz v1, :cond_13

    if-le v6, v3, :cond_12

    neg-int v1, v5

    mul-int/2addr v1, v3

    goto :goto_b

    :cond_12
    move/from16 v1, p1

    goto :goto_b

    :cond_13
    if-le v6, v3, :cond_12

    mul-int v1, v5, v3

    :goto_b
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/m0;->p(I)V

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iput v1, v0, LS4/e;->g:I

    return v1

    :cond_14
    :goto_c
    return v2
.end method

.method public final q(I)I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gez p1, :cond_3

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget p0, p0, LS4/d;->d:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    neg-int p0, p0

    goto :goto_4

    :cond_3
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget p0, p0, LS4/d;->d:I

    add-int v0, p0, p1

    if-lez v0, :cond_7

    goto :goto_2

    :cond_4
    if-lez p1, :cond_5

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget p0, p0, LS4/d;->d:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget p0, p0, LS4/d;->d:I

    add-int v0, p0, p1

    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    neg-int p1, p0

    :cond_7
    :goto_3
    move p0, p1

    :goto_4
    return p0

    :cond_8
    :goto_5
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Landroidx/recyclerview/widget/R0;LS4/e;)V
    .locals 9

    iget-boolean v0, p2, LS4/e;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, LS4/e;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v0, p2, LS4/e;->f:I

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v4, v4, Lcom/google/android/flexbox/a;->c:[I

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v3

    aget v3, v4, v3

    if-ne v3, v1, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS4/b;

    move v4, v2

    :goto_0
    if-ltz v4, :cond_9

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    iget v6, p2, LS4/e;->f:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v7

    if-gt v7, v6, :cond_9

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m0;->f()I

    move-result v8

    sub-int/2addr v8, v6

    if-lt v7, v8, :cond_9

    :goto_1
    iget v6, v1, LS4/b;->k:I

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_8

    if-gtz v3, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    iget v0, p2, LS4/e;->h:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS4/b;

    move-object v1, v0

    move v0, v4

    :cond_8
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_9
    :goto_3
    if-lt v2, v0, :cond_14

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/J0;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/R0;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_a
    iget v0, p2, LS4/e;->f:I

    if-gez v0, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_8

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    goto/16 :goto_8

    :cond_d
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v4, v4, Lcom/google/android/flexbox/a;->c:[I

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v3

    aget v3, v4, v3

    if-ne v3, v1, :cond_e

    goto :goto_8

    :cond_e
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS4/b;

    :goto_4
    if-ge v2, v0, :cond_13

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    iget v6, p2, LS4/e;->f:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/m0;->f()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    if-gt v7, v6, :cond_13

    goto :goto_5

    :cond_10
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v7

    if-gt v7, v6, :cond_13

    :goto_5
    iget v6, v4, LS4/b;->l:I

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_12

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v3, v1, :cond_11

    move v1, v2

    goto :goto_7

    :cond_11
    iget v1, p2, LS4/e;->h:I

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS4/b;

    move-object v4, v1

    move v1, v2

    :cond_12
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    :goto_7
    if-ltz v1, :cond_14

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/J0;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/R0;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_14
    :goto_8
    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeightMode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidthMode()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, LS4/e;->b:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->q(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget p3, p2, LS4/d;->d:I

    add-int/2addr p3, p1

    iput p3, p2, LS4/d;->d:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/m0;->p(I)V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->q(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    iget p3, p2, LS4/d;->d:I

    add-int/2addr p3, p1

    iput p3, p2, LS4/d;->d:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/m0;->p(I)V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(ILandroidx/recyclerview/widget/R0;Landroidx/recyclerview/widget/d1;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public setAlignItems(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    invoke-static {v0}, LS4/d;->b(LS4/d;)V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    const/4 v1, 0x0

    iput v1, v0, LS4/d;->d:I

    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->removeAllViews()V

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    invoke-static {p1}, LS4/d;->b(LS4/d;)V

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    const/4 v0, 0x0

    iput v0, p1, LS4/d;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    invoke-static {v0}, LS4/d;->b(LS4/d;)V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:LS4/d;

    const/4 v1, 0x0

    iput v1, v0, LS4/d;->d:I

    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setJustifyContent(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;I)V
    .locals 0

    new-instance p2, Landroidx/recyclerview/widget/d0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/d0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/c1;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/J0;->startSmoothScroll(Landroidx/recyclerview/widget/c1;)V

    return-void
.end method

.method public final t(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->isMeasurementCacheEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final u(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/a;->g(I)V

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/a;->h(I)V

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/a;->f(I)V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/a;

    iget-object v0, v0, Lcom/google/android/flexbox/a;->c:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->h()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :goto_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final v(LS4/d;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->s()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    const/4 v0, 0x0

    iput-boolean v0, p3, LS4/e;->b:Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v0, p1, LS4/d;->c:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, LS4/e;->a:I

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->g()I

    move-result v0

    iget v1, p1, LS4/d;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, LS4/e;->a:I

    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v0, p1, LS4/d;->a:I

    iput v0, p3, LS4/e;->d:I

    const/4 v0, 0x1

    iput v0, p3, LS4/e;->h:I

    iget v1, p1, LS4/d;->c:I

    iput v1, p3, LS4/e;->e:I

    const/high16 v1, -0x80000000

    iput v1, p3, LS4/e;->f:I

    iget v1, p1, LS4/d;->b:I

    iput v1, p3, LS4/e;->c:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    iget p2, p1, LS4/d;->b:I

    if-ltz p2, :cond_2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget p1, p1, LS4/d;->b:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS4/b;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget p2, p0, LS4/e;->c:I

    add-int/2addr p2, v0

    iput p2, p0, LS4/e;->c:I

    iget p1, p1, LS4/b;->d:I

    iget p2, p0, LS4/e;->d:I

    add-int/2addr p2, p1

    iput p2, p0, LS4/e;->d:I

    :cond_2
    return-void
.end method

.method public final w(LS4/d;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->s()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    const/4 v0, 0x0

    iput-boolean v0, p3, LS4/e;->b:Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p1, LS4/d;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, LS4/e;->a:I

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v0, p1, LS4/d;->c:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/m0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/m0;->k()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, LS4/e;->a:I

    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget v0, p1, LS4/d;->a:I

    iput v0, p3, LS4/e;->d:I

    const/4 v0, -0x1

    iput v0, p3, LS4/e;->h:I

    iget v0, p1, LS4/d;->c:I

    iput v0, p3, LS4/e;->e:I

    const/high16 v0, -0x80000000

    iput v0, p3, LS4/e;->f:I

    iget v0, p1, LS4/d;->b:I

    iput v0, p3, LS4/e;->c:I

    if-eqz p2, :cond_2

    if-lez v0, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p1, p1, LS4/d;->b:I

    if-le p2, p1, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS4/b;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:LS4/e;

    iget p2, p0, LS4/e;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, LS4/e;->c:I

    iget p1, p1, LS4/b;->d:I

    iget p2, p0, LS4/e;->d:I

    sub-int/2addr p2, p1

    iput p2, p0, LS4/e;->d:I

    :cond_2
    return-void
.end method
