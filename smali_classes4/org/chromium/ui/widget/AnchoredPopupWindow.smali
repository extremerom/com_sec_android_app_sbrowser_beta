.class public Lorg/chromium/ui/widget/AnchoredPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/chromium/ui/widget/RectProvider$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/widget/AnchoredPopupWindow$VerticalOrientation;,
        Lorg/chromium/ui/widget/AnchoredPopupWindow$HorizontalOrientation;,
        Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;,
        Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;,
        Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnimateFromAnchor:Z

.field private mAnimationStyleId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final mCachedPaddingRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mDesiredContentWidth:I

.field private final mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mDismissListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Landroid/widget/PopupWindow$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissOnTouchInteraction:Z

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHorizontalOverlapAnchor:Z

.field private mIgnoreDismissal:Z

.field private mLayoutObserver:Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;

.field private mMarginPx:I

.field private mMaxWidthPx:I

.field private mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mPreferredHorizontalOrientation:I

.field private mPreferredVerticalOrientation:I

.field private final mRectProvider:Lorg/chromium/ui/widget/RectProvider;

.field private final mRootView:Landroid/view/View;

.field private mSmartAnchorWithMaxWidth:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateOrientationOnChange:Z

.field private mVerticalOverlapAnchor:Z

.field private final mViewportRectProvider:Lorg/chromium/ui/widget/RectProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/ui/widget/AnchoredPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;Lorg/chromium/ui/widget/RectProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;Lorg/chromium/ui/widget/RectProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mCachedPaddingRect:Landroid/graphics/Rect;

    new-instance v0, Lorg/chromium/ui/widget/AnchoredPopupWindow$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow$1;-><init>(Lorg/chromium/ui/widget/AnchoredPopupWindow;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;

    invoke-direct {v0, p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow$2;-><init>(Lorg/chromium/ui/widget/AnchoredPopupWindow;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    new-instance v1, Lorg/chromium/base/ObserverList;

    invoke-direct {v1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissListeners:Lorg/chromium/base/ObserverList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPreferredVerticalOrientation:I

    iput v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPreferredHorizontalOrientation:I

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRootView:Landroid/view/View;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;

    invoke-direct {p6, p2}, Lorg/chromium/ui/widget/AnchoredPopupWindow$RootViewRectProvider;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object p6, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mViewportRectProvider:Lorg/chromium/ui/widget/RectProvider;

    invoke-static {}, Lorg/chromium/ui/widget/UiWidgetFactory;->getInstance()Lorg/chromium/ui/widget/UiWidgetFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/chromium/ui/widget/UiWidgetFactory;->createPopupWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRectProvider:Lorg/chromium/ui/widget/RectProvider;

    new-instance p2, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p2, p5, v1, v1, v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;-><init>(Landroid/graphics/Rect;IZZ)V

    iput-object p2, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/base/ObserverList;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissListeners:Lorg/chromium/base/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static calculateAnimationStyle(ZZ)I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    sget p0, Lorg/chromium/ui/R$style;->AnchoredPopupAnimEndTop:I

    goto :goto_0

    :cond_0
    sget p0, Lorg/chromium/ui/R$style;->AnchoredPopupAnimEndBottom:I

    :goto_0
    return p0

    :cond_1
    if-eqz p0, :cond_2

    sget p0, Lorg/chromium/ui/R$style;->AnchoredPopupAnimStartTop:I

    goto :goto_1

    :cond_2
    sget p0, Lorg/chromium/ui/R$style;->AnchoredPopupAnimStartBottom:I

    :goto_1
    return p0
.end method

.method public static calculatePopupWindowSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;IIIIIIIIZZZZZZ)Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;
    .locals 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p3

    move/from16 v12, p7

    invoke-static {v12, v11, v4, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->getMaxContentWidth(IIII)I

    move-result v11

    const/high16 v12, -0x80000000

    if-lez v5, :cond_0

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_0
    const/4 v13, 0x0

    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v2, v5, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-nez v6, :cond_2

    invoke-static {v1, v0, v10}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->getSpaceLeftOfAnchor(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    move-result v13

    invoke-static {v1, v0, v10}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->getSpaceRightOfAnchor(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    move-result v12

    add-int/2addr v15, v3

    add-int/2addr v15, v4

    move/from16 v10, p12

    invoke-static {v13, v12, v15, v10, v9}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->shouldPositionLeftOfAnchor(IIIZZ)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_3

    if-eqz p16, :cond_3

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    move/from16 v10, p12

    const/4 v11, 0x2

    if-ne v6, v11, :cond_3

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v10

    :cond_3
    move/from16 v11, p14

    move/from16 v12, p15

    :goto_2
    if-eqz v12, :cond_4

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_4
    iget v13, v1, Landroid/graphics/Rect;->top:I

    :goto_3
    iget v15, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v15

    sub-int v13, v13, p5

    sub-int/2addr v13, v4

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v12, :cond_5

    iget v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_5
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_4
    sub-int/2addr v15, v0

    sub-int v15, v15, p5

    sub-int/2addr v15, v4

    if-gt v14, v15, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-gt v14, v13, :cond_7

    const/4 v14, 0x1

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_6
    if-eqz v0, :cond_8

    if-ge v15, v13, :cond_9

    :cond_8
    if-nez v14, :cond_a

    :cond_9
    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-eqz v9, :cond_c

    if-eq v8, v4, :cond_c

    if-eqz v8, :cond_b

    if-eqz v0, :cond_b

    const/4 v4, 0x1

    :cond_b
    if-nez v8, :cond_c

    if-eqz v14, :cond_c

    const/4 v4, 0x0

    :cond_c
    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    if-eqz v0, :cond_d

    move v4, v8

    :cond_d
    const/4 v0, 0x2

    if-ne v7, v0, :cond_e

    if-eqz v14, :cond_e

    const/4 v4, 0x0

    :cond_e
    if-eqz v4, :cond_f

    move v13, v15

    :cond_f
    const/high16 v0, -0x80000000

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, p5

    move-object v7, v2

    check-cast v7, Landroid/view/ViewGroup;

    instance-of v8, v7, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_12

    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_11

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_10

    add-int/2addr v2, v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v8

    add-int/2addr v9, v2

    move v2, v9

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    add-int v0, v2, v3

    :cond_12
    move-object/from16 p10, p1

    move-object/from16 p11, p0

    move/from16 p12, v0

    move/from16 p13, p6

    move/from16 p14, v11

    move/from16 p15, p9

    move/from16 p16, v10

    invoke-static/range {p10 .. p16}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->getPopupX(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZIZ)I

    move-result v2

    invoke-static {v1, v5, v12, v4}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->getPopupY(Landroid/graphics/Rect;IZZ)I

    move-result v1

    new-instance v3, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v5, v1

    invoke-direct {v6, v2, v1, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-direct {v3, v6, v0, v4, v10}, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;-><init>(Landroid/graphics/Rect;IZZ)V

    return-object v3
.end method

.method private static clamp(III)I
    .locals 1

    if-le p1, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    if-ge p0, v0, :cond_2

    move p0, v0

    goto :goto_2

    :cond_2
    if-le p0, p1, :cond_3

    move p0, p1

    :cond_3
    :goto_2
    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mIgnoreDismissal:Z

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/ui/widget/RectProvider;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRectProvider:Lorg/chromium/ui/widget/RectProvider;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/ui/widget/RectProvider;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mViewportRectProvider:Lorg/chromium/ui/widget/RectProvider;

    return-object p0
.end method

.method public static getMaxContentWidth(IIII)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    if-eqz p0, :cond_0

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-le p0, p3, :cond_1

    sub-int/2addr p0, p3

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getPopupX(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZIZ)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    iget p4, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p4

    add-int/2addr p0, p3

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_2

    if-eqz p4, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr p0, p2

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->right:I

    :goto_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {p0, p3, p1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static getPopupY(Landroid/graphics/Rect;IZZ)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return p0

    :cond_1
    if-eqz p2, :cond_2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->top:I

    :goto_1
    sub-int/2addr p0, p1

    return p0
.end method

.method public static getSpaceLeftOfAnchor(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static getSpaceRightOfAnchor(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr p1, p0

    return p1
.end method

.method private hasMinimalSize()Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    iget-object v1, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldPositionLeftOfAnchor(IIIZZ)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p4, :cond_3

    if-eq v2, p3, :cond_3

    if-eqz p3, :cond_1

    if-gt p2, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez p3, :cond_2

    if-gt p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0
.end method

.method private updatePopupLayout()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mCachedPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mCachedPaddingRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v2, v0

    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRectProvider:Lorg/chromium/ui/widget/RectProvider;

    invoke-virtual {v0}, Lorg/chromium/ui/widget/RectProvider;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    iget-boolean v3, v2, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionBelow:Z

    iget-boolean v2, v2, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionToLeft:Z

    iget-object v4, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    const/4 v15, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mUpdateOrientationOnChange:Z

    if-nez v4, :cond_1

    move/from16 v17, v15

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    :goto_0
    iget-object v4, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    iget-object v4, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mViewportRectProvider:Lorg/chromium/ui/widget/RectProvider;

    invoke-virtual {v4}, Lorg/chromium/ui/widget/RectProvider;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v10, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mMarginPx:I

    iget v11, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mMaxWidthPx:I

    iget v12, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDesiredContentWidth:I

    iget v13, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPreferredHorizontalOrientation:I

    iget v14, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPreferredVerticalOrientation:I

    iget-boolean v5, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mHorizontalOverlapAnchor:Z

    move/from16 v18, v5

    iget-boolean v5, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mVerticalOverlapAnchor:Z

    move/from16 v19, v5

    iget-boolean v5, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mSmartAnchorWithMaxWidth:Z

    move/from16 v20, v5

    move-object v5, v0

    move v15, v3

    move/from16 v16, v2

    invoke-static/range {v4 .. v20}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->calculatePopupWindowSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;IIIIIIIIZZZZZZ)Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    iget-boolean v4, v2, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionBelow:Z

    iget-object v2, v2, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->popupRect:Landroid/graphics/Rect;

    iget-object v10, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mLayoutObserver:Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;

    if-eqz v10, :cond_2

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    move v11, v4

    move-object/from16 v16, v0

    invoke-interface/range {v10 .. v16}, Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;->onPreLayoutChange(ZIIIILandroid/graphics/Rect;)V

    :cond_2
    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->hasMinimalSize()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v4, v3, :cond_4

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mIgnoreDismissal:Z

    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->showPopupWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mIgnoreDismissal:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mIgnoreDismissal:Z

    throw v0

    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->hasMinimalSize()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_5
    return-void
.end method


# virtual methods
.method public addOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onRectChanged()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->updatePopupLayout()V

    return-void
.end method

.method public onRectHidden()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->dismiss()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "InProductHelp.OutsideTouch"

    goto :goto_1

    :cond_1
    const-string v0, "InProductHelp.InsideTouch"

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissOnTouchInteraction:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->dismiss()V

    :cond_3
    :goto_2
    return p1
.end method

.method public setAnimateFromAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mAnimateFromAnchor:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mAnimationStyleId:I

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDesiredContentWidth(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDesiredContentWidth:I

    return-void
.end method

.method public setDismissOnTouchInteraction(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mDismissOnTouchInteraction:Z

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setHorizontalOverlapAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mHorizontalOverlapAnchor:Z

    return-void
.end method

.method public setLayoutObserver(Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mLayoutObserver:Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mMaxWidthPx:I

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public setPreferredHorizontalOrientation(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPreferredHorizontalOrientation:I

    return-void
.end method

.method public setUpdateOrientationOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mUpdateOrientationOnChange:Z

    return-void
.end method

.method public setVerticalOverlapAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mVerticalOverlapAnchor:Z

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRectProvider:Lorg/chromium/ui/widget/RectProvider;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/widget/RectProvider;->startObserving(Lorg/chromium/ui/widget/RectProvider$Observer;)V

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mViewportRectProvider:Lorg/chromium/ui/widget/RectProvider;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/widget/RectProvider;->startObserving(Lorg/chromium/ui/widget/RectProvider$Observer;)V

    invoke-direct {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->updatePopupLayout()V

    invoke-direct {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->hasMinimalSize()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->showPopupWindow()V

    :cond_1
    return-void
.end method

.method public showPopupWindow()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mAnimateFromAnchor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mAnimationStyleId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    iget-boolean v1, v0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionBelow:Z

    iget-boolean v0, v0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionToLeft:Z

    invoke-static {v1, v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->calculateAnimationStyle(ZZ)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow;->mPopupSpec:Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->popupRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    const v3, 0x800033

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
