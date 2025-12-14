.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LP0/e;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:LP0/l;

.field private mConstraintSet:LP0/r;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:LN0/i;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:LP0/i;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "LN0/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, LN0/i;

    invoke-direct {p1}, LN0/i;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:LP0/l;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v1, LP0/i;

    invoke-direct {v1, p0, p0}, LP0/i;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, LN0/i;

    invoke-direct {p1}, LN0/i;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:LP0/l;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, LP0/i;

    invoke-direct {v0, p0, p0}, LP0/i;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, LN0/i;

    invoke-direct {p1}, LN0/i;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:LP0/l;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, LP0/i;

    invoke-direct {v0, p0, p0}, LP0/i;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    return p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPaddingWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    move v2, p0

    :cond_0
    return v2
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iput-object p0, v0, LN0/h;->a0:Landroid/view/View;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iput-object v1, v0, LN0/i;->n0:LP0/i;

    iget-object v0, v0, LN0/i;->m0:LO0/e;

    iput-object v1, v0, LO0/e;->f:LP0/i;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LP0/u;->b:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v3

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    :cond_0
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x7

    if-ne v2, v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    :cond_3
    const/16 v4, 0x5a

    if-ne v2, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    :cond_4
    const/16 v4, 0x27

    if-ne v2, v4, :cond_5

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:LP0/l;

    goto :goto_2

    :cond_5
    const/16 v4, 0x12

    if-ne v2, v4, :cond_6

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :try_start_1
    new-instance v4, LP0/r;

    invoke-direct {v4}, LP0/r;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, LP0/r;->e(ILandroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iput p0, p1, LN0/i;->w0:I

    const/16 p0, 0x200

    invoke-virtual {p1, p0}, LN0/i;->Q(I)Z

    move-result p0

    sput-boolean p0, LM0/c;->p:Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public applyConstraintsFromLayoutParams(ZLandroid/view/View;LN0/h;LP0/h;Landroid/util/SparseArray;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "LN0/h;",
            "LP0/h;",
            "Landroid/util/SparseArray<",
            "LN0/h;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {p4 .. p4}, LP0/h;->a()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, v7, LN0/h;->b0:I

    iput-object v1, v7, LN0/h;->a0:Landroid/view/View;

    instance-of v2, v1, LP0/e;

    if-eqz v2, :cond_0

    check-cast v1, LP0/e;

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-boolean v2, v2, LN0/i;->o0:Z

    invoke-virtual {v1, v7, v2}, LP0/e;->g(LN0/h;Z)V

    :cond_0
    iget-boolean v1, v8, LP0/h;->Y:Z

    const/4 v10, -0x1

    if-eqz v1, :cond_3

    move-object v0, v7

    check-cast v0, LN0/m;

    iget v1, v8, LP0/h;->h0:I

    iget v2, v8, LP0/h;->i0:I

    iget v3, v8, LP0/h;->j0:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1

    if-lez v5, :cond_27

    iput v3, v0, LN0/m;->k0:F

    iput v10, v0, LN0/m;->l0:I

    iput v10, v0, LN0/m;->m0:I

    goto/16 :goto_12

    :cond_1
    if-eq v1, v10, :cond_2

    if-le v1, v10, :cond_27

    iput v4, v0, LN0/m;->k0:F

    iput v1, v0, LN0/m;->l0:I

    iput v10, v0, LN0/m;->m0:I

    goto/16 :goto_12

    :cond_2
    if-eq v2, v10, :cond_27

    if-le v2, v10, :cond_27

    iput v4, v0, LN0/m;->k0:F

    iput v10, v0, LN0/m;->l0:I

    iput v2, v0, LN0/m;->m0:I

    goto/16 :goto_12

    :cond_3
    iget v1, v8, LP0/h;->a0:I

    iget v2, v8, LP0/h;->b0:I

    iget v11, v8, LP0/h;->c0:I

    iget v12, v8, LP0/h;->d0:I

    iget v6, v8, LP0/h;->e0:I

    iget v13, v8, LP0/h;->f0:I

    iget v14, v8, LP0/h;->g0:F

    iget v3, v8, LP0/h;->m:I

    const/4 v15, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eq v3, v10, :cond_5

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LN0/h;

    if-eqz v2, :cond_4

    iget v6, v8, LP0/h;->o:F

    iget v9, v8, LP0/h;->n:I

    sget-object v3, LN0/d;->CENTER:LN0/d;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v12, v4

    move v4, v9

    move v9, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    iput v6, v7, LN0/h;->x:F

    goto :goto_0

    :cond_4
    move v12, v4

    move v9, v5

    :goto_0
    move v0, v9

    move v2, v12

    goto/16 :goto_7

    :cond_5
    if-eq v1, v10, :cond_6

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_7

    sget-object v16, LN0/d;->LEFT:LN0/d;

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v1, p3

    move/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    goto :goto_1

    :cond_6
    if-eq v2, v10, :cond_7

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_7

    sget-object v2, LN0/d;->LEFT:LN0/d;

    sget-object v4, LN0/d;->RIGHT:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    :cond_7
    :goto_1
    if-eq v11, v10, :cond_8

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_9

    sget-object v2, LN0/d;->RIGHT:LN0/d;

    sget-object v4, LN0/d;->LEFT:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v1, p3

    move v6, v13

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    goto :goto_2

    :cond_8
    if-eq v12, v10, :cond_9

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_9

    sget-object v4, LN0/d;->RIGHT:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v1, p3

    move-object v2, v4

    move v6, v13

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    :cond_9
    :goto_2
    iget v1, v8, LP0/h;->h:I

    if-eq v1, v10, :cond_a

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_b

    sget-object v4, LN0/d;->TOP:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v8, LP0/h;->u:I

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    goto :goto_3

    :cond_a
    iget v1, v8, LP0/h;->i:I

    if-eq v1, v10, :cond_b

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_b

    sget-object v2, LN0/d;->TOP:LN0/d;

    sget-object v4, LN0/d;->BOTTOM:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v8, LP0/h;->u:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    :cond_b
    :goto_3
    iget v1, v8, LP0/h;->j:I

    if-eq v1, v10, :cond_c

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_d

    sget-object v2, LN0/d;->BOTTOM:LN0/d;

    sget-object v4, LN0/d;->TOP:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v8, LP0/h;->w:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    goto :goto_4

    :cond_c
    iget v1, v8, LP0/h;->k:I

    if-eq v1, v10, :cond_d

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LN0/h;

    if-eqz v3, :cond_d

    sget-object v4, LN0/d;->BOTTOM:LN0/d;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v8, LP0/h;->w:I

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual/range {v1 .. v6}, LN0/h;->r(LN0/d;LN0/h;LN0/d;II)V

    :cond_d
    :goto_4
    iget v1, v8, LP0/h;->l:I

    if-eq v1, v10, :cond_e

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, v8, LP0/h;->l:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/h;

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, LP0/h;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LP0/h;

    iput-boolean v15, v8, LP0/h;->X:Z

    iput-boolean v15, v0, LP0/h;->X:Z

    sget-object v2, LN0/d;->BASELINE:LN0/d;

    invoke-virtual {v7, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v3

    invoke-virtual {v1, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v10, v15}, LN0/e;->b(LN0/e;IIZ)Z

    iput-boolean v15, v7, LN0/h;->y:Z

    iget-object v0, v0, LP0/h;->k0:LN0/h;

    iput-boolean v15, v0, LN0/h;->y:Z

    sget-object v0, LN0/d;->TOP:LN0/d;

    invoke-virtual {v7, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v0

    invoke-virtual {v0}, LN0/e;->j()V

    sget-object v0, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v7, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v0

    invoke-virtual {v0}, LN0/e;->j()V

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    :goto_6
    cmpl-float v1, v14, v0

    if-ltz v1, :cond_f

    iput v14, v7, LN0/h;->Y:F

    :cond_f
    iget v1, v8, LP0/h;->A:F

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_10

    iput v1, v7, LN0/h;->Z:F

    :cond_10
    :goto_7
    if-eqz p1, :cond_12

    iget v1, v8, LP0/h;->P:I

    if-ne v1, v10, :cond_11

    iget v3, v8, LP0/h;->Q:I

    if-eq v3, v10, :cond_12

    :cond_11
    iget v3, v8, LP0/h;->Q:I

    iput v1, v7, LN0/h;->T:I

    iput v3, v7, LN0/h;->U:I

    :cond_12
    iget-boolean v1, v8, LP0/h;->V:Z

    const/4 v3, -0x2

    if-nez v1, :cond_15

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v10, :cond_14

    iget-boolean v1, v8, LP0/h;->S:Z

    if-eqz v1, :cond_13

    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->F(LN0/g;)V

    goto :goto_8

    :cond_13
    sget-object v1, LN0/g;->MATCH_PARENT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->F(LN0/g;)V

    :goto_8
    sget-object v1, LN0/d;->LEFT:LN0/d;

    invoke-virtual {v7, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v1, LN0/e;->g:I

    sget-object v1, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v7, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v1, LN0/e;->g:I

    goto :goto_9

    :cond_14
    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->F(LN0/g;)V

    invoke-virtual {v7, v2}, LN0/h;->H(I)V

    goto :goto_9

    :cond_15
    sget-object v1, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->F(LN0/g;)V

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v7, v1}, LN0/h;->H(I)V

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v3, :cond_16

    sget-object v1, LN0/g;->WRAP_CONTENT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->F(LN0/g;)V

    :cond_16
    :goto_9
    iget-boolean v1, v8, LP0/h;->W:Z

    if-nez v1, :cond_19

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v10, :cond_18

    iget-boolean v1, v8, LP0/h;->T:Z

    if-eqz v1, :cond_17

    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->G(LN0/g;)V

    goto :goto_a

    :cond_17
    sget-object v1, LN0/g;->MATCH_PARENT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->G(LN0/g;)V

    :goto_a
    sget-object v1, LN0/d;->TOP:LN0/d;

    invoke-virtual {v7, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v1, LN0/e;->g:I

    sget-object v1, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v7, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, v1, LN0/e;->g:I

    goto :goto_b

    :cond_18
    sget-object v1, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->G(LN0/g;)V

    invoke-virtual {v7, v2}, LN0/h;->E(I)V

    goto :goto_b

    :cond_19
    sget-object v1, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->G(LN0/g;)V

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v7, v1}, LN0/h;->E(I)V

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v3, :cond_1a

    sget-object v1, LN0/g;->WRAP_CONTENT:LN0/g;

    invoke-virtual {v7, v1}, LN0/h;->G(LN0/g;)V

    :cond_1a
    :goto_b
    iget-object v1, v8, LP0/h;->B:Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1e

    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_1e

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v10, v2

    goto :goto_c

    :cond_1c
    const-string v6, "H"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v10, v15

    :cond_1d
    :goto_c
    add-int/2addr v4, v15

    goto :goto_d

    :cond_1e
    move v4, v2

    :goto_d
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_20

    sub-int/2addr v3, v15

    if-ge v5, v3, :cond_20

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v5, v15

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v4, v3, v0

    if-lez v4, :cond_21

    cmpl-float v4, v1, v0

    if-lez v4, :cond_21

    if-ne v10, v15, :cond_1f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_e

    :cond_1f
    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :cond_20
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_21

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    :cond_21
    move v5, v0

    :goto_e
    cmpl-float v1, v5, v0

    if-lez v1, :cond_23

    iput v5, v7, LN0/h;->R:F

    iput v10, v7, LN0/h;->S:I

    goto :goto_10

    :cond_22
    :goto_f
    iput v0, v7, LN0/h;->R:F

    :cond_23
    :goto_10
    iget v1, v8, LP0/h;->D:F

    iget-object v3, v7, LN0/h;->f0:[F

    aput v1, v3, v2

    iget v1, v8, LP0/h;->E:F

    aput v1, v3, v15

    iget v1, v8, LP0/h;->F:I

    iput v1, v7, LN0/h;->d0:I

    iget v1, v8, LP0/h;->G:I

    iput v1, v7, LN0/h;->e0:I

    iget v1, v8, LP0/h;->H:I

    iget v3, v8, LP0/h;->J:I

    iget v4, v8, LP0/h;->L:I

    iget v5, v8, LP0/h;->N:F

    iput v1, v7, LN0/h;->l:I

    iput v3, v7, LN0/h;->o:I

    const v3, 0x7fffffff

    if-ne v4, v3, :cond_24

    move v4, v2

    :cond_24
    iput v4, v7, LN0/h;->p:I

    iput v5, v7, LN0/h;->q:F

    cmpl-float v4, v5, v0

    const/4 v6, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v4, :cond_25

    cmpg-float v4, v5, v9

    if-gez v4, :cond_25

    if-nez v1, :cond_25

    iput v6, v7, LN0/h;->l:I

    :cond_25
    iget v1, v8, LP0/h;->I:I

    iget v4, v8, LP0/h;->K:I

    iget v5, v8, LP0/h;->M:I

    iget v8, v8, LP0/h;->O:F

    iput v1, v7, LN0/h;->m:I

    iput v4, v7, LN0/h;->r:I

    if-ne v5, v3, :cond_26

    move v4, v2

    goto :goto_11

    :cond_26
    move v4, v5

    :goto_11
    iput v4, v7, LN0/h;->s:I

    iput v8, v7, LN0/h;->t:F

    cmpl-float v0, v8, v0

    if-lez v0, :cond_27

    cmpg-float v0, v8, v9

    if-gez v0, :cond_27

    if-nez v1, :cond_27

    iput v6, v7, LN0/h;->m:I

    :cond_27
    :goto_12
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, LP0/h;

    return p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LP0/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v4

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v4

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public generateDefaultLayoutParams()LP0/h;
    .locals 0

    new-instance p0, LP0/h;

    invoke-direct {p0}, LP0/h;-><init>()V

    return-object p0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()LP0/h;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)LP0/h;
    .locals 11

    new-instance v0, LP0/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, v0, LP0/h;->a:I

    iput v1, v0, LP0/h;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, LP0/h;->c:F

    iput v1, v0, LP0/h;->d:I

    iput v1, v0, LP0/h;->e:I

    iput v1, v0, LP0/h;->f:I

    iput v1, v0, LP0/h;->g:I

    iput v1, v0, LP0/h;->h:I

    iput v1, v0, LP0/h;->i:I

    iput v1, v0, LP0/h;->j:I

    iput v1, v0, LP0/h;->k:I

    iput v1, v0, LP0/h;->l:I

    iput v1, v0, LP0/h;->m:I

    const/4 v3, 0x0

    iput v3, v0, LP0/h;->n:I

    const/4 v4, 0x0

    iput v4, v0, LP0/h;->o:F

    iput v1, v0, LP0/h;->p:I

    iput v1, v0, LP0/h;->q:I

    iput v1, v0, LP0/h;->r:I

    iput v1, v0, LP0/h;->s:I

    iput v1, v0, LP0/h;->t:I

    iput v1, v0, LP0/h;->u:I

    iput v1, v0, LP0/h;->v:I

    iput v1, v0, LP0/h;->w:I

    iput v1, v0, LP0/h;->x:I

    iput v1, v0, LP0/h;->y:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v0, LP0/h;->z:F

    iput v5, v0, LP0/h;->A:F

    const/4 v6, 0x0

    iput-object v6, v0, LP0/h;->B:Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, v0, LP0/h;->C:I

    iput v2, v0, LP0/h;->D:F

    iput v2, v0, LP0/h;->E:F

    iput v3, v0, LP0/h;->F:I

    iput v3, v0, LP0/h;->G:I

    iput v3, v0, LP0/h;->H:I

    iput v3, v0, LP0/h;->I:I

    iput v3, v0, LP0/h;->J:I

    iput v3, v0, LP0/h;->K:I

    iput v3, v0, LP0/h;->L:I

    iput v3, v0, LP0/h;->M:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, LP0/h;->N:F

    iput v2, v0, LP0/h;->O:F

    iput v1, v0, LP0/h;->P:I

    iput v1, v0, LP0/h;->Q:I

    iput v1, v0, LP0/h;->R:I

    iput-boolean v3, v0, LP0/h;->S:Z

    iput-boolean v3, v0, LP0/h;->T:Z

    iput-object v6, v0, LP0/h;->U:Ljava/lang/String;

    iput-boolean v7, v0, LP0/h;->V:Z

    iput-boolean v7, v0, LP0/h;->W:Z

    iput-boolean v3, v0, LP0/h;->X:Z

    iput-boolean v3, v0, LP0/h;->Y:Z

    iput-boolean v3, v0, LP0/h;->Z:Z

    iput v1, v0, LP0/h;->a0:I

    iput v1, v0, LP0/h;->b0:I

    iput v1, v0, LP0/h;->c0:I

    iput v1, v0, LP0/h;->d0:I

    iput v1, v0, LP0/h;->e0:I

    iput v1, v0, LP0/h;->f0:I

    iput v5, v0, LP0/h;->g0:F

    new-instance v2, LN0/h;

    invoke-direct {v2}, LN0/h;-><init>()V

    iput-object v2, v0, LP0/h;->k0:LN0/h;

    sget-object v2, LP0/u;->b:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    move v2, v3

    :goto_0
    if-ge v2, p1, :cond_6

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget-object v6, LP0/g;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v8, "ConstraintLayout"

    const/4 v9, 0x2

    const/4 v10, -0x2

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, LP0/h;->U:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_1
    iget v6, v0, LP0/h;->Q:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, LP0/h;->Q:I

    goto/16 :goto_3

    :pswitch_2
    iget v6, v0, LP0/h;->P:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, LP0/h;->P:I

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->G:I

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->F:I

    goto/16 :goto_3

    :pswitch_5
    iget v6, v0, LP0/h;->E:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, LP0/h;->E:F

    goto/16 :goto_3

    :pswitch_6
    iget v6, v0, LP0/h;->D:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, LP0/h;->D:F

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, LP0/h;->B:Ljava/lang/String;

    iput v1, v0, LP0/h;->C:I

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v0, LP0/h;->B:Ljava/lang/String;

    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v8, v5, -0x1

    if-ge v6, v8, :cond_2

    iget-object v8, v0, LP0/h;->B:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "W"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput v3, v0, LP0/h;->C:I

    goto :goto_1

    :cond_0
    const-string v9, "H"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput v7, v0, LP0/h;->C:I

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-object v8, v0, LP0/h;->B:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    if-ge v8, v5, :cond_4

    iget-object v5, v0, LP0/h;->B:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, LP0/h;->B:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v8, v5, v4

    if-lez v8, :cond_5

    cmpl-float v8, v6, v4

    if-lez v8, :cond_5

    iget v8, v0, LP0/h;->C:I

    if-ne v8, v7, :cond_3

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    :cond_4
    iget-object v5, v0, LP0/h;->B:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    :pswitch_8
    iget v6, v0, LP0/h;->O:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, LP0/h;->O:F

    iput v9, v0, LP0/h;->I:I

    goto/16 :goto_3

    :pswitch_9
    :try_start_2
    iget v6, v0, LP0/h;->M:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, LP0/h;->M:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    iget v6, v0, LP0/h;->M:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v10, :cond_5

    iput v10, v0, LP0/h;->M:I

    goto/16 :goto_3

    :pswitch_a
    :try_start_3
    iget v6, v0, LP0/h;->K:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, LP0/h;->K:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    iget v6, v0, LP0/h;->K:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v10, :cond_5

    iput v10, v0, LP0/h;->K:I

    goto/16 :goto_3

    :pswitch_b
    iget v6, v0, LP0/h;->N:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, LP0/h;->N:F

    iput v9, v0, LP0/h;->H:I

    goto/16 :goto_3

    :pswitch_c
    :try_start_4
    iget v6, v0, LP0/h;->L:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, LP0/h;->L:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    iget v6, v0, LP0/h;->L:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v10, :cond_5

    iput v10, v0, LP0/h;->L:I

    goto/16 :goto_3

    :pswitch_d
    :try_start_5
    iget v6, v0, LP0/h;->J:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, LP0/h;->J:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    iget v6, v0, LP0/h;->J:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v10, :cond_5

    iput v10, v0, LP0/h;->J:I

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->I:I

    if-ne v5, v7, :cond_5

    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->H:I

    if-ne v5, v7, :cond_5

    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_10
    iget v6, v0, LP0/h;->A:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, LP0/h;->A:F

    goto/16 :goto_3

    :pswitch_11
    iget v6, v0, LP0/h;->z:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, LP0/h;->z:F

    goto/16 :goto_3

    :pswitch_12
    iget-boolean v6, v0, LP0/h;->T:Z

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, LP0/h;->T:Z

    goto/16 :goto_3

    :pswitch_13
    iget-boolean v6, v0, LP0/h;->S:Z

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, LP0/h;->S:Z

    goto/16 :goto_3

    :pswitch_14
    iget v6, v0, LP0/h;->y:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->y:I

    goto/16 :goto_3

    :pswitch_15
    iget v6, v0, LP0/h;->x:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->x:I

    goto/16 :goto_3

    :pswitch_16
    iget v6, v0, LP0/h;->w:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->w:I

    goto/16 :goto_3

    :pswitch_17
    iget v6, v0, LP0/h;->v:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->v:I

    goto/16 :goto_3

    :pswitch_18
    iget v6, v0, LP0/h;->u:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->u:I

    goto/16 :goto_3

    :pswitch_19
    iget v6, v0, LP0/h;->t:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->t:I

    goto/16 :goto_3

    :pswitch_1a
    iget v6, v0, LP0/h;->s:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->s:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->s:I

    goto/16 :goto_3

    :pswitch_1b
    iget v6, v0, LP0/h;->r:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->r:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->r:I

    goto/16 :goto_3

    :pswitch_1c
    iget v6, v0, LP0/h;->q:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->q:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->q:I

    goto/16 :goto_3

    :pswitch_1d
    iget v6, v0, LP0/h;->p:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->p:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->p:I

    goto/16 :goto_3

    :pswitch_1e
    iget v6, v0, LP0/h;->l:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->l:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->l:I

    goto/16 :goto_3

    :pswitch_1f
    iget v6, v0, LP0/h;->k:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->k:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->k:I

    goto/16 :goto_3

    :pswitch_20
    iget v6, v0, LP0/h;->j:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->j:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->j:I

    goto/16 :goto_3

    :pswitch_21
    iget v6, v0, LP0/h;->i:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->i:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->i:I

    goto/16 :goto_3

    :pswitch_22
    iget v6, v0, LP0/h;->h:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->h:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->h:I

    goto/16 :goto_3

    :pswitch_23
    iget v6, v0, LP0/h;->g:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->g:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->g:I

    goto/16 :goto_3

    :pswitch_24
    iget v6, v0, LP0/h;->f:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->f:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->f:I

    goto/16 :goto_3

    :pswitch_25
    iget v6, v0, LP0/h;->e:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->e:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->e:I

    goto :goto_3

    :pswitch_26
    iget v6, v0, LP0/h;->d:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->d:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->d:I

    goto :goto_3

    :pswitch_27
    iget v6, v0, LP0/h;->c:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, LP0/h;->c:F

    goto :goto_3

    :pswitch_28
    iget v6, v0, LP0/h;->b:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, LP0/h;->b:I

    goto :goto_3

    :pswitch_29
    iget v6, v0, LP0/h;->a:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, LP0/h;->a:I

    goto :goto_3

    :pswitch_2a
    iget v6, v0, LP0/h;->o:F

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    iput v5, v0, LP0/h;->o:F

    cmpg-float v8, v5, v4

    if-gez v8, :cond_5

    sub-float v5, v6, v5

    rem-float/2addr v5, v6

    iput v5, v0, LP0/h;->o:F

    goto :goto_3

    :pswitch_2b
    iget v6, v0, LP0/h;->n:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LP0/h;->n:I

    goto :goto_3

    :pswitch_2c
    iget v6, v0, LP0/h;->m:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, LP0/h;->m:I

    if-ne v6, v1, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->m:I

    goto :goto_3

    :pswitch_2d
    iget v6, v0, LP0/h;->R:I

    invoke-virtual {p0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, LP0/h;->R:I

    :catch_4
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, LP0/h;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)LP0/h;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    new-instance p0, LP0/h;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, LP0/h;->a:I

    iput p1, p0, LP0/h;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LP0/h;->c:F

    iput p1, p0, LP0/h;->d:I

    iput p1, p0, LP0/h;->e:I

    iput p1, p0, LP0/h;->f:I

    iput p1, p0, LP0/h;->g:I

    iput p1, p0, LP0/h;->h:I

    iput p1, p0, LP0/h;->i:I

    iput p1, p0, LP0/h;->j:I

    iput p1, p0, LP0/h;->k:I

    iput p1, p0, LP0/h;->l:I

    iput p1, p0, LP0/h;->m:I

    const/4 v1, 0x0

    iput v1, p0, LP0/h;->n:I

    const/4 v2, 0x0

    iput v2, p0, LP0/h;->o:F

    iput p1, p0, LP0/h;->p:I

    iput p1, p0, LP0/h;->q:I

    iput p1, p0, LP0/h;->r:I

    iput p1, p0, LP0/h;->s:I

    iput p1, p0, LP0/h;->t:I

    iput p1, p0, LP0/h;->u:I

    iput p1, p0, LP0/h;->v:I

    iput p1, p0, LP0/h;->w:I

    iput p1, p0, LP0/h;->x:I

    iput p1, p0, LP0/h;->y:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, LP0/h;->z:F

    iput v2, p0, LP0/h;->A:F

    const/4 v3, 0x0

    iput-object v3, p0, LP0/h;->B:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, p0, LP0/h;->C:I

    iput v0, p0, LP0/h;->D:F

    iput v0, p0, LP0/h;->E:F

    iput v1, p0, LP0/h;->F:I

    iput v1, p0, LP0/h;->G:I

    iput v1, p0, LP0/h;->H:I

    iput v1, p0, LP0/h;->I:I

    iput v1, p0, LP0/h;->J:I

    iput v1, p0, LP0/h;->K:I

    iput v1, p0, LP0/h;->L:I

    iput v1, p0, LP0/h;->M:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LP0/h;->N:F

    iput v0, p0, LP0/h;->O:F

    iput p1, p0, LP0/h;->P:I

    iput p1, p0, LP0/h;->Q:I

    iput p1, p0, LP0/h;->R:I

    iput-boolean v1, p0, LP0/h;->S:Z

    iput-boolean v1, p0, LP0/h;->T:Z

    iput-object v3, p0, LP0/h;->U:Ljava/lang/String;

    iput-boolean v4, p0, LP0/h;->V:Z

    iput-boolean v4, p0, LP0/h;->W:Z

    iput-boolean v1, p0, LP0/h;->X:Z

    iput-boolean v1, p0, LP0/h;->Y:Z

    iput-boolean v1, p0, LP0/h;->Z:Z

    iput p1, p0, LP0/h;->a0:I

    iput p1, p0, LP0/h;->b0:I

    iput p1, p0, LP0/h;->c0:I

    iput p1, p0, LP0/h;->d0:I

    iput p1, p0, LP0/h;->e0:I

    iput p1, p0, LP0/h;->f0:I

    iput v2, p0, LP0/h;->g0:F

    new-instance p1, LN0/h;

    invoke-direct {p1}, LN0/h;-><init>()V

    iput-object p1, p0, LP0/h;->k0:LN0/h;

    return-object p0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return p0
.end method

.method public getOptimizationLevel()I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget p0, p0, LN0/i;->w0:I

    return p0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getViewWidget(Landroid/view/View;)LN0/h;
    .locals 0

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, LP0/h;

    iget-object p0, p0, LP0/h;->k0:LN0/h;

    :goto_0
    return-object p0
.end method

.method public isRtl()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LP0/h;

    iget-object v1, v0, LP0/h;->k0:LN0/h;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, LP0/h;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, LP0/h;->Z:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LN0/h;->o()I

    move-result v0

    invoke-virtual {v1}, LN0/h;->p()I

    move-result v2

    invoke-virtual {v1}, LN0/h;->n()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, LN0/h;->k()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    :goto_2
    if-ge p3, p1, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP0/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-nez v0, :cond_3

    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    if-ne v0, v7, :cond_2

    iget v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    if-ne v3, v8, :cond_2

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0}, LN0/h;->n()I

    move-result v3

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0}, LN0/h;->k()I

    move-result v4

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-boolean v5, v0, LN0/i;->x0:Z

    iget-boolean v9, v0, LN0/i;->y0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void

    :cond_2
    if-ne v0, v7, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_3

    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v3}, LN0/h;->k()I

    move-result v3

    if-lt v0, v3, :cond_3

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0}, LN0/h;->n()I

    move-result v3

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0}, LN0/h;->k()I

    move-result v4

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-boolean v5, v0, LN0/i;->x0:Z

    iget-boolean v9, v0, LN0/i;->y0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void

    :cond_3
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v3

    iput-boolean v3, v0, LN0/i;->o0:Z

    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v0, :cond_1d

    iput-boolean v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_3
    if-eqz v9, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v0, v1

    :goto_4
    if-ge v0, v11, :cond_7

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)LN0/h;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, LN0/h;->y()V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const/4 v3, -0x1

    if-eqz v10, :cond_d

    move v4, v1

    :goto_6
    if-ge v4, v11, :cond_d

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v1, v12, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v3, :cond_8

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    goto :goto_7

    :cond_9
    iget-object v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-nez v13, :cond_a

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_a

    if-eq v13, v6, :cond_a

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, v6, :cond_a

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_a
    if-ne v13, v6, :cond_b

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    goto :goto_7

    :cond_b
    if-nez v13, :cond_c

    move-object v5, v0

    goto :goto_7

    :cond_c
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LP0/h;

    iget-object v5, v5, LP0/h;->k0:LN0/h;

    :goto_7
    iput-object v12, v5, LN0/h;->c0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-eq v4, v3, :cond_e

    move v3, v1

    :goto_8
    if-ge v3, v11, :cond_e

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v6}, LP0/r;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_f
    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-object v3, v3, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    move v4, v1

    :goto_9
    if-ge v4, v3, :cond_17

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LP0/e;

    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v5, LP0/e;->e:Ljava/lang/String;

    invoke-virtual {v5, v12}, LP0/e;->setIds(Ljava/lang/String;)V

    :cond_10
    iget-object v12, v5, LP0/e;->d:LN0/n;

    if-nez v12, :cond_11

    goto :goto_c

    :cond_11
    iput v1, v12, LN0/n;->l0:I

    iget-object v12, v12, LN0/n;->k0:[LN0/h;

    invoke-static {v12, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v12, v1

    :goto_a
    iget v13, v5, LP0/e;->b:I

    if-ge v12, v13, :cond_16

    iget-object v13, v5, LP0/e;->a:[I

    aget v13, v13, v12

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v15, v5, LP0/e;->g:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v6, v13}, LP0/e;->e(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v14, v5, LP0/e;->a:[I

    aput v0, v14, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v14

    :cond_12
    if-eqz v14, :cond_15

    iget-object v0, v5, LP0/e;->d:LN0/n;

    invoke-virtual {v6, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)LN0/h;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v13, v0, :cond_15

    if-nez v13, :cond_13

    goto :goto_b

    :cond_13
    iget v14, v0, LN0/n;->l0:I

    add-int/2addr v14, v2

    iget-object v15, v0, LN0/n;->k0:[LN0/h;

    array-length v1, v15

    if-le v14, v1, :cond_14

    array-length v1, v15

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LN0/h;

    iput-object v1, v0, LN0/n;->k0:[LN0/h;

    :cond_14
    iget-object v1, v0, LN0/n;->k0:[LN0/h;

    iget v14, v0, LN0/n;->l0:I

    aput-object v13, v1, v14

    add-int/2addr v14, v2

    iput v14, v0, LN0/n;->l0:I

    :cond_15
    :goto_b
    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_a

    :cond_16
    iget-object v0, v5, LP0/e;->d:LN0/n;

    invoke-virtual {v0}, LN0/n;->L()V

    :goto_c
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_17
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v11, :cond_18

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    :goto_e
    if-ge v0, v11, :cond_19

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)LN0/h;

    move-result-object v3

    iget-object v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    move v12, v2

    :goto_f
    if-ge v12, v11, :cond_1c

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)LN0/h;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LP0/h;

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-object v1, v0, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, LN0/h;->O:LN0/h;

    if-eqz v1, :cond_1b

    check-cast v1, LN0/i;

    iget-object v1, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, LN0/h;->y()V

    :cond_1b
    iput-object v0, v3, LN0/h;->O:LN0/h;

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;LN0/h;LP0/h;Landroid/util/SparseArray;)V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_1c
    if-eqz v9, :cond_1d

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-object v1, v0, LN0/i;->l0:Lo3/t;

    invoke-virtual {v1, v0}, Lo3/t;->s(LN0/i;)V

    :cond_1d
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v6, v0, v1, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(LN0/i;III)V

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0}, LN0/h;->n()I

    move-result v3

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    invoke-virtual {v0}, LN0/h;->k()I

    move-result v4

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-boolean v5, v0, LN0/i;->x0:Z

    iget-boolean v9, v0, LN0/i;->y0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)LN0/h;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, LN0/m;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LP0/h;

    new-instance v1, LN0/m;

    invoke-direct {v1}, LN0/m;-><init>()V

    iput-object v1, v0, LP0/h;->k0:LN0/h;

    iput-boolean v2, v0, LP0/h;->Y:Z

    iget v0, v0, LP0/h;->R:I

    invoke-virtual {v1, v0}, LN0/m;->L(I)V

    :cond_0
    instance-of v0, p1, LP0/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LP0/e;

    invoke-virtual {v0}, LP0/e;->h()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LP0/h;

    iput-boolean v2, v1, LP0/h;->Z:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)LN0/h;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iget-object v1, v1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LN0/h;->y()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public parseLayoutDescription(I)V
    .locals 9

    new-instance v0, LP0/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, LP0/l;->a:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, LP0/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    if-eqz v2, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "Variant"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :sswitch_1
    const-string v6, "layoutDescription"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_2
    const-string v6, "StateSet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_2

    :sswitch_3
    const-string v6, "State"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :sswitch_4
    const-string v6, "ConstraintSet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_6

    if-eq v6, v4, :cond_6

    if-eq v6, v5, :cond_4

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_2

    const-string v4, "ConstraintLayoutStates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1, p1}, LP0/l;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    :cond_3
    new-instance v2, LP0/k;

    invoke-direct {v2, v1, p1}, LP0/k;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v3, :cond_6

    iget-object v4, v3, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v3, LP0/j;

    invoke-direct {v3, v1, p1}, LP0/j;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v2, v0, LP0/l;->a:Landroid/util/SparseArray;

    iget v4, v3, LP0/j;->a:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_7
    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:LP0/l;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public resolveMeasuredDimension(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iget v1, v0, LP0/i;->e:I

    iget v0, v0, LP0/i;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    return-void
.end method

.method public resolveSystem(LN0/i;III)V
    .locals 22

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v3, v11, v2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    move-object/from16 v5, p0

    iget-object v12, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iput v11, v12, LP0/i;->b:I

    iput v2, v12, LP0/i;->c:I

    iput v4, v12, LP0/i;->d:I

    iput v3, v12, LP0/i;->e:I

    move/from16 v2, p3

    iput v2, v12, LP0/i;->f:I

    move/from16 v2, p4

    iput v2, v12, LP0/i;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gtz v2, :cond_2

    if-lez v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    move v12, v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v13

    if-eqz v13, :cond_1

    :goto_1
    sub-int v13, v0, v4

    sub-int v14, v1, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v13

    move v4, v9

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(LN0/i;IIII)V

    iput v12, v6, LN0/i;->q0:I

    iput v11, v6, LN0/i;->r0:I

    iget-object v0, v6, LN0/i;->l0:Lo3/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, LN0/i;->n0:LP0/i;

    iget-object v2, v6, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v7, v5}, LN0/o;->c(II)Z

    move-result v5

    const/16 v12, 0x40

    if-nez v5, :cond_4

    invoke-static {v7, v12}, LN0/o;->c(II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v10

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_d

    move v12, v10

    :goto_4
    if-ge v12, v2, :cond_d

    iget-object v15, v6, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LN0/h;

    iget-object v11, v15, LN0/h;->N:[LN0/g;

    move/from16 p4, v7

    aget-object v7, v11, v10

    sget-object v10, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v7, v10, :cond_5

    const/4 v7, 0x1

    :goto_5
    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    :goto_6
    aget-object v11, v11, v17

    if-ne v11, v10, :cond_6

    const/4 v10, 0x1

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    :goto_7
    if-eqz v7, :cond_7

    if-eqz v10, :cond_7

    iget v7, v15, LN0/h;->R:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v15}, LN0/h;->t()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v7, :cond_9

    :cond_8
    :goto_9
    const/4 v7, 0x0

    goto :goto_a

    :cond_9
    invoke-virtual {v15}, LN0/h;->u()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v7, :cond_a

    goto :goto_9

    :cond_a
    instance-of v7, v15, LN0/k;

    if-eqz v7, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v15}, LN0/h;->t()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v15}, LN0/h;->u()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p4

    const/4 v10, 0x0

    goto :goto_4

    :cond_d
    move/from16 p4, v7

    move/from16 v7, p4

    :goto_a
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_e

    if-eq v9, v10, :cond_f

    :cond_e
    if-eqz v5, :cond_10

    :cond_f
    const/4 v11, 0x1

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    :goto_b
    and-int/2addr v7, v11

    if-eqz v7, :cond_2f

    iget-object v12, v6, LN0/h;->w:[I

    const/4 v15, 0x0

    aget v11, v12, v15

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ne v8, v10, :cond_11

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v14

    if-eq v14, v11, :cond_11

    invoke-virtual {v6, v11}, LN0/h;->H(I)V

    iget-object v11, v6, LN0/i;->m0:LO0/e;

    iput-boolean v13, v11, LO0/e;->b:Z

    :cond_11
    if-ne v9, v10, :cond_12

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v11

    if-eq v11, v12, :cond_12

    invoke-virtual {v6, v12}, LN0/h;->E(I)V

    iget-object v11, v6, LN0/i;->m0:LO0/e;

    iput-boolean v13, v11, LO0/e;->b:Z

    :cond_12
    iget-object v11, v6, LN0/i;->m0:LO0/e;

    if-ne v8, v10, :cond_28

    if-ne v9, v10, :cond_28

    iget-boolean v12, v11, LO0/e;->b:Z

    iget-object v13, v11, LO0/e;->a:LN0/i;

    if-nez v12, :cond_14

    iget-boolean v12, v11, LO0/e;->c:Z

    if-eqz v12, :cond_13

    goto :goto_c

    :cond_13
    const/4 v15, 0x0

    goto :goto_e

    :cond_14
    :goto_c
    iget-object v12, v13, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LN0/h;

    invoke-virtual {v14}, LN0/h;->h()V

    const/4 v15, 0x0

    iput-boolean v15, v14, LN0/h;->a:Z

    iget-object v10, v14, LN0/h;->d:LO0/m;

    invoke-virtual {v10}, LO0/m;->n()V

    iget-object v10, v14, LN0/h;->e:LO0/p;

    invoke-virtual {v10}, LO0/p;->m()V

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    invoke-virtual {v13}, LN0/h;->h()V

    iput-boolean v15, v13, LN0/h;->a:Z

    iget-object v10, v13, LN0/h;->d:LO0/m;

    invoke-virtual {v10}, LO0/m;->n()V

    iget-object v10, v13, LN0/h;->e:LO0/p;

    invoke-virtual {v10}, LO0/p;->m()V

    iput-boolean v15, v11, LO0/e;->c:Z

    :goto_e
    iget-object v10, v11, LO0/e;->d:LN0/i;

    invoke-virtual {v11, v10}, LO0/e;->b(LN0/i;)V

    iput v15, v13, LN0/h;->T:I

    iput v15, v13, LN0/h;->U:I

    invoke-virtual {v13, v15}, LN0/h;->j(I)LN0/g;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, LN0/h;->j(I)LN0/g;

    move-result-object v14

    iget-boolean v12, v11, LO0/e;->b:Z

    if-eqz v12, :cond_16

    invoke-virtual {v11}, LO0/e;->c()V

    :cond_16
    invoke-virtual {v13}, LN0/h;->o()I

    move-result v12

    invoke-virtual {v13}, LN0/h;->p()I

    move-result v15

    move/from16 v18, v7

    iget-object v7, v13, LN0/h;->d:LO0/m;

    iget-object v7, v7, LO0/t;->h:LO0/g;

    invoke-virtual {v7, v12}, LO0/g;->d(I)V

    iget-object v7, v13, LN0/h;->e:LO0/p;

    iget-object v7, v7, LO0/t;->h:LO0/g;

    invoke-virtual {v7, v15}, LO0/g;->d(I)V

    invoke-virtual {v11}, LO0/e;->g()V

    sget-object v7, LN0/g;->WRAP_CONTENT:LN0/g;

    move-object/from16 v19, v1

    iget-object v1, v11, LO0/e;->e:Ljava/util/ArrayList;

    if-eq v10, v7, :cond_18

    if-ne v14, v7, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v20, v3

    goto :goto_11

    :cond_18
    :goto_f
    if-eqz v5, :cond_1a

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, LO0/t;

    invoke-virtual/range {v20 .. v20}, LO0/t;->k()Z

    move-result v20

    if-nez v20, :cond_19

    const/4 v5, 0x0

    :cond_1a
    if-eqz v5, :cond_1b

    sget-object v7, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v10, v7, :cond_1b

    sget-object v7, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v13, v7}, LN0/h;->F(LN0/g;)V

    move/from16 v20, v3

    const/4 v7, 0x0

    invoke-virtual {v11, v13, v7}, LO0/e;->d(LN0/i;I)I

    move-result v3

    invoke-virtual {v13, v3}, LN0/h;->H(I)V

    iget-object v3, v13, LN0/h;->d:LO0/m;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v13}, LN0/h;->n()I

    move-result v7

    invoke-virtual {v3, v7}, LO0/h;->d(I)V

    goto :goto_10

    :cond_1b
    move/from16 v20, v3

    :goto_10
    if-eqz v5, :cond_1c

    sget-object v3, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v14, v3, :cond_1c

    sget-object v3, LN0/g;->FIXED:LN0/g;

    invoke-virtual {v13, v3}, LN0/h;->G(LN0/g;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v13, v3}, LO0/e;->d(LN0/i;I)I

    move-result v5

    invoke-virtual {v13, v5}, LN0/h;->E(I)V

    iget-object v3, v13, LN0/h;->e:LO0/p;

    iget-object v3, v3, LO0/t;->e:LO0/h;

    invoke-virtual {v13}, LN0/h;->k()I

    move-result v5

    invoke-virtual {v3, v5}, LO0/h;->d(I)V

    :cond_1c
    :goto_11
    iget-object v3, v13, LN0/h;->N:[LN0/g;

    const/4 v5, 0x0

    aget-object v7, v3, v5

    sget-object v5, LN0/g;->FIXED:LN0/g;

    move/from16 v21, v4

    if-eq v7, v5, :cond_1e

    sget-object v4, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne v7, v4, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    goto :goto_13

    :cond_1e
    :goto_12
    invoke-virtual {v13}, LN0/h;->n()I

    move-result v4

    add-int/2addr v4, v12

    iget-object v7, v13, LN0/h;->d:LO0/m;

    iget-object v7, v7, LO0/t;->i:LO0/g;

    invoke-virtual {v7, v4}, LO0/g;->d(I)V

    iget-object v7, v13, LN0/h;->d:LO0/m;

    iget-object v7, v7, LO0/t;->e:LO0/h;

    sub-int/2addr v4, v12

    invoke-virtual {v7, v4}, LO0/h;->d(I)V

    invoke-virtual {v11}, LO0/e;->g()V

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eq v3, v5, :cond_1f

    sget-object v4, LN0/g;->MATCH_PARENT:LN0/g;

    if-ne v3, v4, :cond_20

    :cond_1f
    invoke-virtual {v13}, LN0/h;->k()I

    move-result v3

    add-int/2addr v3, v15

    iget-object v4, v13, LN0/h;->e:LO0/p;

    iget-object v4, v4, LO0/t;->i:LO0/g;

    invoke-virtual {v4, v3}, LO0/g;->d(I)V

    iget-object v4, v13, LN0/h;->e:LO0/p;

    iget-object v4, v4, LO0/t;->e:LO0/h;

    sub-int/2addr v3, v15

    invoke-virtual {v4, v3}, LO0/h;->d(I)V

    :cond_20
    invoke-virtual {v11}, LO0/e;->g()V

    const/4 v3, 0x1

    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO0/t;

    iget-object v7, v5, LO0/t;->b:LN0/h;

    if-ne v7, v13, :cond_21

    iget-boolean v7, v5, LO0/t;->g:Z

    if-nez v7, :cond_21

    goto :goto_14

    :cond_21
    invoke-virtual {v5}, LO0/t;->e()V

    goto :goto_14

    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO0/t;

    if-nez v3, :cond_24

    iget-object v5, v4, LO0/t;->b:LN0/h;

    if-ne v5, v13, :cond_24

    goto :goto_15

    :cond_24
    iget-object v5, v4, LO0/t;->h:LO0/g;

    iget-boolean v5, v5, LO0/g;->j:Z

    if-nez v5, :cond_25

    :goto_16
    const/4 v1, 0x0

    goto :goto_17

    :cond_25
    iget-object v5, v4, LO0/t;->i:LO0/g;

    iget-boolean v5, v5, LO0/g;->j:Z

    if-nez v5, :cond_26

    instance-of v5, v4, LO0/j;

    if-nez v5, :cond_26

    goto :goto_16

    :cond_26
    iget-object v5, v4, LO0/t;->e:LO0/h;

    iget-boolean v5, v5, LO0/g;->j:Z

    if-nez v5, :cond_23

    instance-of v5, v4, LO0/c;

    if-nez v5, :cond_23

    instance-of v4, v4, LO0/j;

    if-nez v4, :cond_23

    goto :goto_16

    :cond_27
    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v13, v10}, LN0/h;->F(LN0/g;)V

    invoke-virtual {v13, v14}, LN0/h;->G(LN0/g;)V

    move v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, 0x2

    goto/16 :goto_1b

    :cond_28
    move-object/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v18, v7

    iget-boolean v1, v11, LO0/e;->b:Z

    iget-object v3, v11, LO0/e;->a:LN0/i;

    if-eqz v1, :cond_2a

    iget-object v1, v3, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    invoke-virtual {v4}, LN0/h;->h()V

    const/4 v7, 0x0

    iput-boolean v7, v4, LN0/h;->a:Z

    iget-object v10, v4, LN0/h;->d:LO0/m;

    iget-object v12, v10, LO0/t;->e:LO0/h;

    iput-boolean v7, v12, LO0/g;->j:Z

    iput-boolean v7, v10, LO0/t;->g:Z

    invoke-virtual {v10}, LO0/m;->n()V

    iget-object v4, v4, LN0/h;->e:LO0/p;

    iget-object v10, v4, LO0/t;->e:LO0/h;

    iput-boolean v7, v10, LO0/g;->j:Z

    iput-boolean v7, v4, LO0/t;->g:Z

    invoke-virtual {v4}, LO0/p;->m()V

    goto :goto_18

    :cond_29
    const/4 v7, 0x0

    invoke-virtual {v3}, LN0/h;->h()V

    iput-boolean v7, v3, LN0/h;->a:Z

    iget-object v1, v3, LN0/h;->d:LO0/m;

    iget-object v4, v1, LO0/t;->e:LO0/h;

    iput-boolean v7, v4, LO0/g;->j:Z

    iput-boolean v7, v1, LO0/t;->g:Z

    invoke-virtual {v1}, LO0/m;->n()V

    iget-object v1, v3, LN0/h;->e:LO0/p;

    iget-object v4, v1, LO0/t;->e:LO0/h;

    iput-boolean v7, v4, LO0/g;->j:Z

    iput-boolean v7, v1, LO0/t;->g:Z

    invoke-virtual {v1}, LO0/p;->m()V

    invoke-virtual {v11}, LO0/e;->c()V

    goto :goto_19

    :cond_2a
    const/4 v7, 0x0

    :goto_19
    iget-object v1, v11, LO0/e;->d:LN0/i;

    invoke-virtual {v11, v1}, LO0/e;->b(LN0/i;)V

    iput v7, v3, LN0/h;->T:I

    iput v7, v3, LN0/h;->U:I

    iget-object v1, v3, LN0/h;->d:LO0/m;

    iget-object v1, v1, LO0/t;->h:LO0/g;

    invoke-virtual {v1, v7}, LO0/g;->d(I)V

    iget-object v1, v3, LN0/h;->e:LO0/p;

    iget-object v1, v1, LO0/t;->h:LO0/g;

    invoke-virtual {v1, v7}, LO0/g;->d(I)V

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_2b

    invoke-virtual {v6, v7, v5}, LN0/i;->N(IZ)Z

    move-result v3

    const/4 v4, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1a
    if-ne v9, v1, :cond_2c

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, LN0/i;->N(IZ)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    :cond_2c
    :goto_1b
    if-eqz v3, :cond_30

    if-ne v8, v1, :cond_2d

    const/4 v5, 0x1

    goto :goto_1c

    :cond_2d
    const/4 v5, 0x0

    :goto_1c
    if-ne v9, v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v6, v5, v1}, LN0/i;->I(ZZ)V

    goto :goto_1e

    :cond_2f
    move-object/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v18, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_30
    :goto_1e
    if-eqz v3, :cond_31

    const/4 v1, 0x2

    if-eq v4, v1, :cond_5c

    :cond_31
    iget v1, v6, LN0/i;->w0:I

    if-lez v2, :cond_3f

    iget-object v3, v6, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    invoke-virtual {v6, v4}, LN0/i;->Q(I)Z

    move-result v4

    iget-object v5, v6, LN0/i;->n0:LP0/i;

    const/4 v15, 0x0

    :goto_1f
    if-ge v15, v3, :cond_3d

    iget-object v7, v6, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LN0/h;

    instance-of v8, v7, LN0/m;

    if-eqz v8, :cond_32

    :goto_20
    const/4 v9, 0x0

    goto/16 :goto_24

    :cond_32
    instance-of v8, v7, LN0/a;

    if-eqz v8, :cond_33

    goto :goto_20

    :cond_33
    iget-boolean v8, v7, LN0/h;->z:Z

    if-eqz v8, :cond_34

    goto :goto_20

    :cond_34
    if-eqz v4, :cond_35

    iget-object v8, v7, LN0/h;->d:LO0/m;

    if-eqz v8, :cond_35

    iget-object v9, v7, LN0/h;->e:LO0/p;

    if-eqz v9, :cond_35

    iget-object v8, v8, LO0/t;->e:LO0/h;

    iget-boolean v8, v8, LO0/g;->j:Z

    if-eqz v8, :cond_35

    iget-object v8, v9, LO0/t;->e:LO0/h;

    iget-boolean v8, v8, LO0/g;->j:Z

    if-eqz v8, :cond_35

    goto :goto_20

    :cond_35
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, LN0/h;->j(I)LN0/g;

    move-result-object v9

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, LN0/h;->j(I)LN0/g;

    move-result-object v10

    sget-object v11, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v9, v11, :cond_36

    iget v12, v7, LN0/h;->l:I

    if-eq v12, v8, :cond_36

    if-ne v10, v11, :cond_36

    iget v12, v7, LN0/h;->m:I

    if-eq v12, v8, :cond_36

    move v12, v8

    goto :goto_21

    :cond_36
    const/4 v12, 0x0

    :goto_21
    if-nez v12, :cond_39

    invoke-virtual {v6, v8}, LN0/i;->Q(I)Z

    move-result v13

    if-eqz v13, :cond_39

    instance-of v8, v7, LN0/k;

    if-nez v8, :cond_39

    if-ne v9, v11, :cond_37

    iget v8, v7, LN0/h;->l:I

    if-nez v8, :cond_37

    if-eq v10, v11, :cond_37

    invoke-virtual {v7}, LN0/h;->t()Z

    move-result v8

    if-nez v8, :cond_37

    const/4 v12, 0x1

    :cond_37
    if-ne v10, v11, :cond_38

    iget v8, v7, LN0/h;->m:I

    if-nez v8, :cond_38

    if-eq v9, v11, :cond_38

    invoke-virtual {v7}, LN0/h;->t()Z

    move-result v8

    if-nez v8, :cond_38

    const/4 v12, 0x1

    :cond_38
    if-eq v9, v11, :cond_3a

    if-ne v10, v11, :cond_39

    goto :goto_22

    :cond_39
    const/4 v9, 0x0

    goto :goto_23

    :cond_3a
    :goto_22
    iget v8, v7, LN0/h;->R:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3b

    const/4 v12, 0x1

    :cond_3b
    :goto_23
    if-eqz v12, :cond_3c

    goto :goto_24

    :cond_3c
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v7, v8}, Lo3/t;->m(LP0/i;LN0/h;I)Z

    :goto_24
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1f

    :cond_3d
    iget-object v3, v5, LP0/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v4, :cond_3e

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    :cond_3e
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3f

    const/4 v15, 0x0

    :goto_26
    if-ge v15, v4, :cond_3f

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LP0/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    :cond_3f
    invoke-virtual {v0, v6}, Lo3/t;->s(LN0/i;)V

    iget-object v3, v0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v2, :cond_40

    move/from16 v2, v20

    move/from16 v5, v21

    invoke-virtual {v0, v6, v2, v5}, Lo3/t;->o(LN0/i;II)V

    goto :goto_27

    :cond_40
    move/from16 v2, v20

    move/from16 v5, v21

    :goto_27
    if-lez v4, :cond_5b

    iget-object v7, v6, LN0/h;->N:[LN0/g;

    const/16 v17, 0x0

    aget-object v8, v7, v17

    sget-object v9, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v8, v9, :cond_41

    const/4 v8, 0x1

    :goto_28
    const/4 v10, 0x1

    goto :goto_29

    :cond_41
    move/from16 v8, v17

    goto :goto_28

    :goto_29
    aget-object v7, v7, v10

    if-ne v7, v9, :cond_42

    const/4 v7, 0x1

    goto :goto_2a

    :cond_42
    move/from16 v7, v17

    :goto_2a
    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v9

    iget-object v10, v0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v10, LN0/i;

    iget v11, v10, LN0/h;->W:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v11

    iget v10, v10, LN0/h;->X:I

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v11, v17

    move v15, v11

    :goto_2b
    if-ge v15, v4, :cond_48

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/h;

    instance-of v13, v12, LN0/k;

    if-nez v13, :cond_43

    move/from16 v16, v1

    move/from16 v20, v2

    move-object/from16 v1, v19

    goto/16 :goto_2d

    :cond_43
    invoke-virtual {v12}, LN0/h;->n()I

    move-result v13

    invoke-virtual {v12}, LN0/h;->k()I

    move-result v14

    move/from16 v16, v1

    move/from16 v20, v2

    move-object/from16 v1, v19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v12, v2}, Lo3/t;->m(LP0/i;LN0/h;I)Z

    move-result v19

    or-int v2, v11, v19

    invoke-virtual {v12}, LN0/h;->n()I

    move-result v11

    move/from16 p0, v2

    invoke-virtual {v12}, LN0/h;->k()I

    move-result v2

    if-eq v11, v13, :cond_45

    invoke-virtual {v12, v11}, LN0/h;->H(I)V

    if-eqz v8, :cond_44

    invoke-virtual {v12}, LN0/h;->o()I

    move-result v11

    iget v13, v12, LN0/h;->P:I

    add-int/2addr v11, v13

    if-le v11, v9, :cond_44

    invoke-virtual {v12}, LN0/h;->o()I

    move-result v11

    iget v13, v12, LN0/h;->P:I

    add-int/2addr v11, v13

    sget-object v13, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v12, v13}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v13

    invoke-virtual {v13}, LN0/e;->e()I

    move-result v13

    add-int/2addr v13, v11

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_44
    const/4 v11, 0x1

    goto :goto_2c

    :cond_45
    move/from16 v11, p0

    :goto_2c
    if-eq v2, v14, :cond_47

    invoke-virtual {v12, v2}, LN0/h;->E(I)V

    if-eqz v7, :cond_46

    invoke-virtual {v12}, LN0/h;->p()I

    move-result v2

    iget v11, v12, LN0/h;->Q:I

    add-int/2addr v2, v11

    if-le v2, v10, :cond_46

    invoke-virtual {v12}, LN0/h;->p()I

    move-result v2

    iget v11, v12, LN0/h;->Q:I

    add-int/2addr v2, v11

    sget-object v11, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v12, v11}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v11

    invoke-virtual {v11}, LN0/e;->e()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_46
    const/4 v11, 0x1

    :cond_47
    check-cast v12, LN0/k;

    iget-boolean v2, v12, LN0/k;->s0:Z

    or-int/2addr v2, v11

    move v11, v2

    :goto_2d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v1

    move/from16 v1, v16

    move/from16 v2, v20

    goto/16 :goto_2b

    :cond_48
    move/from16 v16, v1

    move/from16 v20, v2

    move-object/from16 v1, v19

    move/from16 v15, v17

    :goto_2e
    const/4 v2, 0x2

    if-ge v15, v2, :cond_57

    move v12, v11

    move/from16 v11, v17

    :goto_2f
    if-ge v11, v4, :cond_55

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LN0/h;

    instance-of v14, v13, LN0/n;

    if-eqz v14, :cond_49

    instance-of v14, v13, LN0/k;

    if-eqz v14, :cond_4d

    :cond_49
    instance-of v14, v13, LN0/m;

    if-eqz v14, :cond_4a

    goto :goto_30

    :cond_4a
    iget v14, v13, LN0/h;->b0:I

    const/16 v2, 0x8

    if-ne v14, v2, :cond_4b

    goto :goto_30

    :cond_4b
    if-eqz v18, :cond_4c

    iget-object v2, v13, LN0/h;->d:LO0/m;

    iget-object v2, v2, LO0/t;->e:LO0/h;

    iget-boolean v2, v2, LO0/g;->j:Z

    if-eqz v2, :cond_4c

    iget-object v2, v13, LN0/h;->e:LO0/p;

    iget-object v2, v2, LO0/t;->e:LO0/h;

    iget-boolean v2, v2, LO0/g;->j:Z

    if-eqz v2, :cond_4c

    goto :goto_30

    :cond_4c
    instance-of v2, v13, LN0/k;

    if-eqz v2, :cond_4e

    :cond_4d
    :goto_30
    move-object/from16 v19, v1

    move-object/from16 p0, v3

    move/from16 p2, v4

    goto/16 :goto_31

    :cond_4e
    invoke-virtual {v13}, LN0/h;->n()I

    move-result v2

    invoke-virtual {v13}, LN0/h;->k()I

    move-result v14

    move-object/from16 p0, v3

    iget v3, v13, LN0/h;->V:I

    move/from16 p2, v4

    const/4 v4, 0x1

    if-ne v15, v4, :cond_4f

    const/4 v4, 0x2

    :cond_4f
    invoke-virtual {v0, v1, v13, v4}, Lo3/t;->m(LP0/i;LN0/h;I)Z

    move-result v4

    or-int/2addr v4, v12

    invoke-virtual {v13}, LN0/h;->n()I

    move-result v12

    move-object/from16 v19, v1

    invoke-virtual {v13}, LN0/h;->k()I

    move-result v1

    if-eq v12, v2, :cond_51

    invoke-virtual {v13, v12}, LN0/h;->H(I)V

    if-eqz v8, :cond_50

    invoke-virtual {v13}, LN0/h;->o()I

    move-result v2

    iget v4, v13, LN0/h;->P:I

    add-int/2addr v2, v4

    if-le v2, v9, :cond_50

    invoke-virtual {v13}, LN0/h;->o()I

    move-result v2

    iget v4, v13, LN0/h;->P:I

    add-int/2addr v2, v4

    sget-object v4, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {v13, v4}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v4

    invoke-virtual {v4}, LN0/e;->e()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_50
    const/4 v4, 0x1

    :cond_51
    if-eq v1, v14, :cond_53

    invoke-virtual {v13, v1}, LN0/h;->E(I)V

    if-eqz v7, :cond_52

    invoke-virtual {v13}, LN0/h;->p()I

    move-result v1

    iget v2, v13, LN0/h;->Q:I

    add-int/2addr v1, v2

    if-le v1, v10, :cond_52

    invoke-virtual {v13}, LN0/h;->p()I

    move-result v1

    iget v2, v13, LN0/h;->Q:I

    add-int/2addr v1, v2

    sget-object v2, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {v13, v2}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v2

    invoke-virtual {v2}, LN0/e;->e()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_52
    const/4 v4, 0x1

    :cond_53
    iget-boolean v1, v13, LN0/h;->y:Z

    if-eqz v1, :cond_54

    iget v1, v13, LN0/h;->V:I

    if-eq v3, v1, :cond_54

    const/4 v12, 0x1

    goto :goto_31

    :cond_54
    move v12, v4

    :goto_31
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v1, v19

    const/4 v2, 0x2

    goto/16 :goto_2f

    :cond_55
    move-object/from16 v19, v1

    move-object/from16 p0, v3

    move/from16 p2, v4

    move/from16 v1, v20

    if-eqz v12, :cond_56

    invoke-virtual {v0, v6, v1, v5}, Lo3/t;->o(LN0/i;II)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v11, v17

    move-object/from16 v1, v19

    goto/16 :goto_2e

    :cond_56
    move v11, v12

    goto :goto_32

    :cond_57
    move/from16 v1, v20

    :goto_32
    if-eqz v11, :cond_5a

    invoke-virtual {v0, v6, v1, v5}, Lo3/t;->o(LN0/i;II)V

    invoke-virtual/range {p1 .. p1}, LN0/h;->n()I

    move-result v2

    if-ge v2, v9, :cond_58

    invoke-virtual {v6, v9}, LN0/h;->H(I)V

    const/16 v17, 0x1

    :cond_58
    invoke-virtual/range {p1 .. p1}, LN0/h;->k()I

    move-result v2

    if-ge v2, v10, :cond_59

    invoke-virtual {v6, v10}, LN0/h;->E(I)V

    const/4 v11, 0x1

    goto :goto_33

    :cond_59
    move/from16 v11, v17

    :goto_33
    if-eqz v11, :cond_5a

    invoke-virtual {v0, v6, v1, v5}, Lo3/t;->o(LN0/i;II)V

    :cond_5a
    move/from16 v0, v16

    goto :goto_34

    :cond_5b
    move v0, v1

    :goto_34
    iput v0, v6, LN0/i;->w0:I

    const/16 v0, 0x200

    invoke-virtual {v6, v0}, LN0/i;->Q(I)Z

    move-result v0

    sput-boolean v0, LM0/c;->p:Z

    :cond_5c
    return-void
.end method

.method public setConstraintSet(LP0/r;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:LP0/r;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(LP0/s;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:LP0/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:LN0/i;

    iput p1, p0, LN0/i;->w0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, LN0/i;->Q(I)Z

    move-result p0

    sput-boolean p0, LM0/c;->p:Z

    return-void
.end method

.method public setSelfDimensionBehaviour(LN0/i;IIII)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:LP0/i;

    iget v1, v0, LP0/i;->e:I

    iget v0, v0, LP0/i;->d:I

    sget-object v2, LN0/g;->FIXED:LN0/g;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_1

    move-object p2, v2

    :cond_0
    move p3, v4

    goto :goto_0

    :cond_1
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    move-object p2, v2

    goto :goto_0

    :cond_2
    sget-object p2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-nez v3, :cond_0

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_3
    sget-object p2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-nez v3, :cond_4

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_4
    :goto_0
    if-eq p4, v6, :cond_8

    if-eqz p4, :cond_7

    if-eq p4, v5, :cond_6

    :cond_5
    move p5, v4

    goto :goto_1

    :cond_6
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_1

    :cond_7
    sget-object v2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-nez v3, :cond_5

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1

    :cond_8
    sget-object v2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-nez v3, :cond_9

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    :cond_9
    :goto_1
    invoke-virtual {p1}, LN0/h;->n()I

    move-result p4

    const/4 v3, 0x1

    if-ne p3, p4, :cond_a

    invoke-virtual {p1}, LN0/h;->k()I

    move-result p4

    if-eq p5, p4, :cond_b

    :cond_a
    iget-object p4, p1, LN0/i;->m0:LO0/e;

    iput-boolean v3, p4, LO0/e;->c:Z

    :cond_b
    iput v4, p1, LN0/h;->T:I

    iput v4, p1, LN0/h;->U:I

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr p4, v0

    iget-object v5, p1, LN0/h;->w:[I

    aput p4, v5, v4

    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr p4, v1

    aput p4, v5, v3

    iput v4, p1, LN0/h;->W:I

    iput v4, p1, LN0/h;->X:I

    invoke-virtual {p1, p2}, LN0/h;->F(LN0/g;)V

    invoke-virtual {p1, p3}, LN0/h;->H(I)V

    invoke-virtual {p1, v2}, LN0/h;->G(LN0/g;)V

    invoke-virtual {p1, p5}, LN0/h;->E(I)V

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_c

    iput v4, p1, LN0/h;->W:I

    goto :goto_2

    :cond_c
    iput p2, p1, LN0/h;->W:I

    :goto_2
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    sub-int/2addr p0, v1

    if-gez p0, :cond_d

    iput v4, p1, LN0/h;->X:I

    goto :goto_3

    :cond_d
    iput p0, p1, LN0/h;->X:I

    :goto_3
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
