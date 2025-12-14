.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

.field private final mEndMargin:I

.field private mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

.field private mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0714e4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0714e3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mEndMargin:I

    return-void
.end method

.method private calculateShadowPosition(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mEndMargin:I

    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getVisibleWidthByScroll(I)I

    move-result p0

    if-lt p0, v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_2

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr p0, v0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private updateGroupCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateGroupCount(I)V

    return-void
.end method

.method private updateScrollHeader()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const-string v1, "TabGroupScrollHeader"

    if-nez v0, :cond_0

    const-string v0, "[updateScrollHeader] hide scroll header"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[updateScrollHeader] show scroll header for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateGroupCount(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateDrawable()V

    :goto_0
    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    return-object p0
.end method

.method public getTarget()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    return-object p0
.end method

.method public onColorChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateDrawable()V

    return-void
.end method

.method public onCountChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateGroupCount(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0c84

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    return-void
.end method

.method public onTitleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setTarget(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setListenerForScrollHeader(Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setListenerForScrollHeader(Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->updateScrollHeader()V

    return-void
.end method

.method public updateDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupColorId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[updateDrawable] groupColorId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabGroupScrollHeader"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupColorValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateTitleColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateDrawable(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;->getTabGroupHeaderRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;->getBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mHeaderView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabGroupTitleMaxWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateMaxTitleWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updatePosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->calculateShadowPosition(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
