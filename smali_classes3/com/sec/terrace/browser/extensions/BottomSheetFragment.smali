.class public Lcom/sec/terrace/browser/extensions/BottomSheetFragment;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;
    }
.end annotation


# instance fields
.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mDragCallback:Lh6/a;

.field private mListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

.field private mMinPeekHeight:I

.field private mTitleView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mDragCallback:Lh6/a;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/sec/terrace/R$layout;->bottom_sheet_layout:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    sget p2, Lcom/sec/terrace/R$id;->coordinator_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, LR0/d;

    if-eqz p2, :cond_1

    check-cast p1, LR0/d;

    iget-object p1, p1, LR0/d;->a:LR0/c;

    instance-of p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    sget p2, Lcom/sec/terrace/R$id;->drag_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$1;

    invoke-direct {p2, p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$1;-><init>(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    sget p2, Lcom/sec/terrace/R$id;->title_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mTitleView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$2;

    invoke-direct {p2, p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$2;-><init>(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setBehaviorCallback()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private OnBottomSheetCollapsed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    return-object p0
.end method

.method private setBehaviorCallback()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mDragCallback:Lh6/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;-><init>(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mDragCallback:Lh6/a;

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mDragCallback:Lh6/a;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mDragCallback:Lh6/a;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mDragCallback:Lh6/a;

    return-void
.end method

.method public collapseOrHide()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->isExpended()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->OnBottomSheetCollapsed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->close()V

    :goto_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public isCollapsed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExpended()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setContentView(Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    sget v1, Lcom/sec/terrace/R$id;->view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    sget v0, Lcom/sec/terrace/R$id;->coordinator_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    return-void
.end method

.method public setMinPeekHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mMinPeekHeight:I

    return-void
.end method

.method public setPeekHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    sget v0, Lcom/sec/terrace/R$id;->coordinator_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    return-void
.end method
