.class public Lt/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/x;


# static fields
.field private static final ONEUI_5_1_1:Z


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Lt/g0;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field private mForceShowUpper:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lt/m0;

.field private mIsOverflowPopup:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Lt/C;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Lt/p0;

.field private final mScrollListener:Lt/n0;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lt/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, LG5/v2;->f()I

    move-result v0

    const v1, 0x224d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lt/q0;->ONEUI_5_1_1:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f040317

    invoke-direct {p0, p1, v0, v1}, Lt/q0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lt/q0;->mDropDownHeight:I

    iput v0, p0, Lt/q0;->mDropDownWidth:I

    const/16 v0, 0x3ea

    iput v0, p0, Lt/q0;->mDropDownWindowLayoutType:I

    const/4 v0, 0x0

    iput v0, p0, Lt/q0;->mDropDownGravity:I

    iput-boolean v0, p0, Lt/q0;->mDropDownAlwaysVisible:Z

    iput-boolean v0, p0, Lt/q0;->mForceIgnoreOutsideTouch:Z

    const v1, 0x7fffffff

    iput v1, p0, Lt/q0;->mListItemExpandMaximum:I

    iput v0, p0, Lt/q0;->mPromptPosition:I

    new-instance v1, Lt/p0;

    invoke-direct {v1, p0}, Lt/p0;-><init>(Lt/q0;)V

    iput-object v1, p0, Lt/q0;->mResizePopupRunnable:Lt/p0;

    new-instance v1, Lt/o0;

    invoke-direct {v1, p0}, Lt/o0;-><init>(Lt/q0;)V

    iput-object v1, p0, Lt/q0;->mTouchInterceptor:Lt/o0;

    new-instance v1, Lt/n0;

    invoke-direct {v1, p0}, Lt/n0;-><init>(Lt/q0;)V

    iput-object v1, p0, Lt/q0;->mScrollListener:Lt/n0;

    new-instance v1, Lt/m0;

    invoke-direct {v1, p0}, Lt/m0;-><init>(Lt/q0;)V

    iput-object v1, p0, Lt/q0;->mHideSelector:Lt/m0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lt/q0;->mForceShowUpper:Z

    iput-object p1, p0, Lt/q0;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lt/q0;->mHandler:Landroid/os/Handler;

    sget-object v1, Lk/a;->o:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lt/q0;->mDropDownHorizontalOffset:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lt/q0;->mDropDownVerticalOffset:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lt/q0;->mDropDownVerticalOffsetSet:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lt/C;

    invoke-direct {v0, p1, p2, p3}, Lt/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    iget-object p0, p0, Lt/q0;->mDropDownList:Lt/g0;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lt/g0;->setListSelectionHidden(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public createDropDownListView(Landroid/content/Context;Z)Lt/g0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lt/g0;

    invoke-direct {p0, p1, p2}, Lt/g0;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lt/q0;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lt/q0;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lt/q0;->mPopup:Lt/C;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lt/q0;->mDropDownList:Lt/g0;

    iget-object v0, p0, Lt/q0;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lt/q0;->mResizePopupRunnable:Lt/p0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lt/q0;->mDropDownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    iget p0, p0, Lt/q0;->mDropDownHorizontalOffset:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lt/q0;->mDropDownList:Lt/g0;

    return-object p0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemId()J
    .locals 2

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    iget-object p0, p0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget-boolean v0, p0, Lt/q0;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lt/q0;->mDropDownVerticalOffset:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lt/q0;->mDropDownWidth:I

    return p0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 1

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public seslGetPopupWindow()Landroid/widget/PopupWindow;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    return-object p0
.end method

.method public seslSetAllowScrollingAnchorParent(Z)V
    .locals 3

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setAllowScrollingAnchorParent"

    invoke-static {v1, v2, v0}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lt/q0;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, LJ6/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LJ6/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lt/q0;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lt/q0;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lt/q0;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lt/q0;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lt/q0;->mDropDownList:Lt/g0;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lt/q0;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lt/q0;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0, p1}, Lt/C;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    iget-object v0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lt/q0;->mDropDownWidth:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lt/q0;->setWidth(I)V

    :goto_0
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Lt/q0;->mDropDownGravity:I

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lt/q0;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lt/q0;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lt/q0;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public setIsOverflowPopup(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iput-boolean p1, p0, Lt/q0;->mIsOverflowPopup:Z

    return-void
.end method

.method public setModal(Z)V
    .locals 0

    iput-boolean p1, p0, Lt/q0;->mModal:Z

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lt/q0;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lt/q0;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    iput p1, p0, Lt/q0;->mPromptPosition:I

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lt/g0;->setListSelectionHidden(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lt/q0;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt/q0;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lt/q0;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lt/q0;->mDropDownList:Lt/g0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v6, "ListPopupWindow"

    if-nez v1, :cond_6

    iget-object v1, v0, Lt/q0;->mContext:Landroid/content/Context;

    new-instance v7, Lt/f0;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v0}, Lt/f0;-><init>(ILjava/lang/Object;)V

    iput-object v7, v0, Lt/q0;->mShowDropDownRunnable:Ljava/lang/Runnable;

    iget-boolean v7, v0, Lt/q0;->mModal:Z

    xor-int/2addr v7, v2

    invoke-virtual {v0, v1, v7}, Lt/q0;->createDropDownListView(Landroid/content/Context;Z)Lt/g0;

    move-result-object v7

    iput-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    iget-object v8, v0, Lt/q0;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Lt/g0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    iget-object v8, v0, Lt/q0;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    iget-object v8, v0, Lt/q0;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    new-instance v8, Lt/l0;

    invoke-direct {v8, v0}, Lt/l0;-><init>(Lt/q0;)V

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    iget-object v8, v0, Lt/q0;->mScrollListener:Lt/n0;

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v7, v0, Lt/q0;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v7, :cond_1

    iget-object v8, v0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {v8, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v7, v0, Lt/q0;->mDropDownList:Lt/g0;

    iget-object v8, v0, Lt/q0;->mPromptView:Landroid/view/View;

    if-eqz v8, :cond_5

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v10, v0, Lt/q0;->mPromptPosition:I

    if-eqz v10, :cond_3

    if-eq v10, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Invalid hint position "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lt/q0;->mPromptPosition:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v9, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v1, v0, Lt/q0;->mDropDownWidth:I

    if-ltz v1, :cond_4

    const/high16 v7, -0x80000000

    goto :goto_1

    :cond_4
    move v1, v3

    move v7, v1

    :goto_1
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v1

    move v1, v7

    move-object v7, v9

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iget-object v8, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v1, v0, Lt/q0;->mPromptView:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v8

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    iget-object v7, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v8, v0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v7, v0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    goto :goto_4

    :cond_8
    iget-object v7, v0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    move v8, v3

    :goto_4
    iget-object v7, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    move v7, v2

    goto :goto_5

    :cond_9
    move v7, v3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v10

    iget v11, v0, Lt/q0;->mDropDownVerticalOffset:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v13, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v13, v10, v11, v7}, Lt/C;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v7

    sget-boolean v11, Lt/q0;->ONEUI_5_1_1:Z

    if-nez v11, :cond_19

    const/16 v11, 0x1e

    if-lt v12, v11, :cond_19

    iget-boolean v12, v0, Lt/q0;->mIsOverflowPopup:Z

    if-eqz v12, :cond_19

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    iget-object v15, v0, Lt/q0;->mContext:Landroid/content/Context;

    const-string v13, "display"

    invoke-virtual {v15, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/display/DisplayManager;

    if-nez v13, :cond_a

    const-string v10, "displayManager is null, can not update height"

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v14, -0x2

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v13, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v13

    if-nez v13, :cond_b

    const-string v10, "display is null, can not update height"

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    invoke-static {}, LG5/d3;->i()Z

    move-result v15

    if-nez v15, :cond_c

    :goto_7
    goto :goto_6

    :cond_c
    iget-object v15, v0, Lt/q0;->mContext:Landroid/content/Context;

    :goto_8
    instance-of v3, v15, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_e

    instance-of v3, v15, Landroid/app/Activity;

    if-eqz v3, :cond_d

    check-cast v15, Landroid/app/Activity;

    goto :goto_9

    :cond_d
    check-cast v15, Landroid/content/ContextWrapper;

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    new-array v3, v9, [I

    invoke-virtual {v10, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v13, v12}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, LG5/f3;->w()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v9, :cond_13

    iget v10, v12, Landroid/graphics/Point;->y:I

    iget v13, v12, Landroid/graphics/Point;->x:I

    if-le v10, v13, :cond_10

    div-int/2addr v13, v9

    :goto_a
    move v10, v13

    goto :goto_b

    :cond_10
    div-int/2addr v10, v9

    goto :goto_b

    :cond_11
    invoke-static {}, LG5/f3;->x()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v2, :cond_13

    iget v10, v12, Landroid/graphics/Point;->y:I

    iget v13, v12, Landroid/graphics/Point;->x:I

    if-le v10, v13, :cond_12

    div-int/2addr v10, v9

    goto :goto_b

    :cond_12
    div-int/2addr v13, v9

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    :goto_b
    const-string v13, "center = "

    const-string v15, " , anchor top = "

    invoke-static {v10, v13, v15}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v15, v3, v2

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_18

    iget-object v13, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0711c7

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget-object v15, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x7f0711bc

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aget v15, v3, v2

    if-le v10, v15, :cond_14

    sub-int/2addr v10, v15

    sub-int/2addr v10, v13

    sub-int/2addr v10, v5

    goto :goto_d

    :cond_14
    iget-object v15, v0, Lt/q0;->mContext:Landroid/content/Context;

    const-string v14, "window"

    invoke-virtual {v15, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v11, :cond_15

    if-eqz v14, :cond_15

    invoke-static {v14}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v11

    invoke-static {v11}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v11

    invoke-static {}, Lf1/y0;->a()I

    move-result v14

    invoke-static {v11, v14}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v11

    iget v14, v11, Landroid/graphics/Insets;->bottom:I

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "systemBar insets = "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v14

    goto :goto_c

    :cond_15
    iget-object v4, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v11, "android"

    const-string v14, "navigation_bar_height"

    const-string v15, "dimen"

    invoke-virtual {v4, v14, v15, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_16

    iget-object v11, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_c

    :cond_16
    const/4 v4, 0x0

    :goto_c
    const-string v11, "navigationBarHeight = "

    invoke-static {v4, v11, v6}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    aget v3, v3, v2

    sub-int v6, v3, v10

    sub-int/2addr v10, v4

    div-int/2addr v10, v9

    if-le v6, v10, :cond_17

    sub-int/2addr v6, v13

    sub-int v10, v6, v5

    goto :goto_d

    :cond_17
    iget v6, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v3

    sub-int/2addr v6, v13

    sub-int/2addr v6, v5

    sub-int v10, v6, v4

    goto :goto_d

    :cond_18
    const/4 v10, -0x2

    :goto_d
    move v14, v10

    :goto_e
    if-lez v14, :cond_19

    if-ge v14, v7, :cond_19

    move v7, v14

    :cond_19
    iget-boolean v3, v0, Lt/q0;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_1e

    iget v3, v0, Lt/q0;->mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    goto :goto_10

    :cond_1a
    iget v3, v0, Lt/q0;->mDropDownWidth:I

    const/4 v5, -0x2

    if-eq v3, v5, :cond_1c

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1b

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_f

    :cond_1b
    iget-object v3, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v3, v6

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_f

    :cond_1c
    iget-object v3, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v0, Lt/q0;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_f
    iget-object v4, v0, Lt/q0;->mDropDownList:Lt/g0;

    sub-int/2addr v7, v1

    invoke-virtual {v4, v3, v7}, Lt/g0;->a(II)I

    move-result v3

    if-lez v3, :cond_1d

    iget-object v4, v0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, v0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    add-int/2addr v1, v5

    :cond_1d
    add-int/2addr v3, v1

    move v4, v3

    goto :goto_11

    :cond_1e
    :goto_10
    add-int/2addr v7, v8

    move v4, v7

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lt/q0;->isInputMethodNotNeeded()Z

    move-result v1

    iget-object v3, v0, Lt/q0;->mPopup:Lt/C;

    iget v5, v0, Lt/q0;->mDropDownWindowLayoutType:I

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v3, v0, Lt/q0;->mPopup:Lt/C;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/widget/PopupWindow;

    const-string v8, "setAllowScrollingAnchorParent"

    invoke-static {v7, v8, v6}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v6, v5}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v3, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_20

    return-void

    :cond_20
    iget v3, v0, Lt/q0;->mDropDownWidth:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_21

    move v3, v5

    goto :goto_12

    :cond_21
    const/4 v6, -0x2

    if-ne v3, v6, :cond_22

    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v3, v16

    :cond_22
    :goto_12
    iget v6, v0, Lt/q0;->mDropDownHeight:I

    if-ne v6, v5, :cond_27

    if-eqz v1, :cond_23

    move v6, v4

    goto :goto_13

    :cond_23
    move v6, v5

    :goto_13
    if-eqz v1, :cond_25

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget v7, v0, Lt/q0;->mDropDownWidth:I

    if-ne v7, v5, :cond_24

    move v7, v5

    goto :goto_14

    :cond_24
    const/4 v7, 0x0

    :goto_14
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_16

    :cond_25
    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget v7, v0, Lt/q0;->mDropDownWidth:I

    if-ne v7, v5, :cond_26

    move v7, v5

    goto :goto_15

    :cond_26
    const/4 v7, 0x0

    :goto_15
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_16

    :cond_27
    const/4 v1, -0x2

    if-ne v6, v1, :cond_28

    move v6, v4

    :cond_28
    :goto_16
    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget-boolean v5, v0, Lt/q0;->mForceIgnoreOutsideTouch:Z

    if-nez v5, :cond_29

    iget-boolean v5, v0, Lt/q0;->mDropDownAlwaysVisible:Z

    if-nez v5, :cond_29

    goto :goto_17

    :cond_29
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget v1, v0, Lt/q0;->mDropDownVerticalOffset:I

    iget-boolean v2, v0, Lt/q0;->mForceShowUpper:Z

    if-eqz v2, :cond_2a

    sub-int/2addr v1, v4

    iget-boolean v2, v0, Lt/q0;->mOverlapAnchor:Z

    if-nez v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_2a
    move v10, v1

    iget-object v7, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v8

    iget v9, v0, Lt/q0;->mDropDownHorizontalOffset:I

    if-gez v3, :cond_2b

    const/4 v11, -0x1

    goto :goto_18

    :cond_2b
    move v11, v3

    :goto_18
    if-gez v6, :cond_2c

    const/4 v12, -0x1

    goto :goto_19

    :cond_2c
    move v12, v6

    :goto_19
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_24

    :cond_2d
    iget v1, v0, Lt/q0;->mDropDownWidth:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2e

    move v1, v3

    const/4 v5, -0x2

    goto :goto_1a

    :cond_2e
    const/4 v5, -0x2

    if-ne v1, v5, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v1, v16

    :cond_2f
    :goto_1a
    iget v6, v0, Lt/q0;->mDropDownHeight:I

    if-ne v6, v3, :cond_30

    const/4 v4, -0x1

    goto :goto_1b

    :cond_30
    if-ne v6, v5, :cond_31

    goto :goto_1b

    :cond_31
    move v4, v6

    :goto_1b
    iget-object v3, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const-string v5, "current_sec_active_themepackage"

    if-nez v3, :cond_33

    :cond_32
    :goto_1c
    const/4 v7, 0x0

    goto/16 :goto_20

    :cond_33
    iget-object v6, v0, Lt/q0;->mContext:Landroid/content/Context;

    if-nez v6, :cond_34

    goto :goto_1c

    :cond_34
    iget-object v7, v0, Lt/q0;->mPopup:Lt/C;

    iget-boolean v7, v7, Lt/C;->e:Z

    if-eqz v7, :cond_35

    goto :goto_1c

    :cond_35
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x23

    const v10, 0x7f060acb

    const v11, 0x7f0711be

    if-lt v7, v8, :cond_38

    invoke-static {v6}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/16 v8, 0x6e

    goto :goto_1d

    :cond_36
    const/16 v8, 0x7d

    :goto_1d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v12, v10, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    if-eqz v7, :cond_37

    const/4 v13, 0x0

    goto :goto_1e

    :cond_37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_1e
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v7, v8, v13, v6}, LG5/V2;->g(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Float;)Z

    move-result v3

    move v7, v3

    goto/16 :goto_20

    :cond_38
    invoke-static {v6}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_39

    const v10, 0x7f060aca

    :cond_39
    iget-object v6, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iget-object v8, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3a

    goto/16 :goto_1c

    :cond_3a
    invoke-static {v10}, LG5/V2;->c(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3b

    goto/16 :goto_1c

    :cond_3b
    const/4 v10, 0x0

    invoke-static {v10}, LG5/c3;->d(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_32

    const/16 v10, 0x1f

    if-lt v7, v10, :cond_3c

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v10, "android.view.SemBlurInfo$Builder"

    const-string v12, "hidden_setRadius"

    invoke-static {v10, v12, v7}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    goto :goto_1f

    :cond_3c
    const/4 v13, 0x0

    :goto_1f
    if-eqz v13, :cond_3d

    invoke-virtual {v13, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v7, 0x78

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v13, v7}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-static {v6, v11}, LG5/c3;->e(ILjava/lang/Object;)V

    invoke-static {v11, v8}, LG5/c3;->f(Ljava/lang/Object;F)V

    invoke-static {v3, v11}, LG5/c3;->c(Landroid/view/View;Ljava/lang/Object;)V

    move v7, v2

    :goto_20
    if-eqz v7, :cond_3e

    iget-object v3, v0, Lt/q0;->mDropDownList:Lt/g0;

    if-eqz v3, :cond_3e

    invoke-virtual {v3, v9}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_3e
    iget-object v3, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    move v7, v2

    goto :goto_21

    :cond_3f
    const/4 v7, 0x0

    :goto_21
    if-eqz v7, :cond_40

    iget-object v3, v0, Lt/q0;->mPopup:Lt/C;

    iget-boolean v5, v3, Lt/C;->e:Z

    if-nez v5, :cond_40

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v5, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_40

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v6, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_41

    iget-object v6, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0711c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v0, Lt/q0;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f060ab4

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_22

    :cond_40
    const/4 v5, 0x0

    :cond_41
    :goto_22
    iget-object v3, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget-boolean v3, v0, Lt/q0;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_42

    iget-boolean v3, v0, Lt/q0;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_42

    goto :goto_23

    :cond_42
    move v2, v5

    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget-object v2, v0, Lt/q0;->mTouchInterceptor:Lt/o0;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v1, v0, Lt/q0;->mOverlapAnchorSet:Z

    if-eqz v1, :cond_43

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget-boolean v2, v0, Lt/q0;->mOverlapAnchor:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_43
    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    iget-object v2, v0, Lt/q0;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lt/q0;->mPopup:Lt/C;

    invoke-virtual/range {p0 .. p0}, Lt/q0;->getAnchorView()Landroid/view/View;

    move-result-object v2

    iget v3, v0, Lt/q0;->mDropDownHorizontalOffset:I

    iget v4, v0, Lt/q0;->mDropDownVerticalOffset:I

    iget v5, v0, Lt/q0;->mDropDownGravity:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v1, v0, Lt/q0;->mDropDownList:Lt/g0;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v1, v0, Lt/q0;->mModal:Z

    if-eqz v1, :cond_44

    iget-object v1, v0, Lt/q0;->mDropDownList:Lt/g0;

    invoke-virtual {v1}, Lt/g0;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lt/q0;->clearListSelection()V

    :cond_45
    iget-boolean v1, v0, Lt/q0;->mModal:Z

    if-nez v1, :cond_46

    iget-object v1, v0, Lt/q0;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lt/q0;->mHideSelector:Lt/m0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_46
    :goto_24
    return-void
.end method
