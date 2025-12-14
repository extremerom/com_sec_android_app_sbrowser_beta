.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHorizontalMargin:I

.field private final mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

.field private mWidth:I

.field private final mWidth60dp:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mHorizontalMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0714e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth60dp:I

    return-void
.end method

.method private shouldTitleNotVisible(Z)Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCreating()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth60dp:I

    if-ge p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private updateFaviconMargin()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getFaviconLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0714a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0714a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isSelected()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->shouldTitleNotVisible(Z)Z

    move-result p0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz p0, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getEndMargin()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mHorizontalMargin:I

    return p0
.end method

.method public getStartMargin()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isFirstTab()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getFirstTabButtonMargin()I

    move-result v1

    :cond_2
    return v1
.end method

.method public getTabButtonWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth:I

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public updateLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getTabButtonWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateLayoutParam(I)V

    return-void
.end method

.method public updateLayoutParam(I)V
    .locals 3

    if-lez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[updateLayoutParams] tabId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabButtonLayoutManager"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mWidth:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateMargin()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateTabButtonMargin(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateFaviconMargin()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCloseUnlockButtonVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateMarginBetweenTitleAndClose(Z)V

    return-void
.end method

.method public updateMarginBetweenTitleAndClose(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const v0, 0x7f0714be

    goto :goto_0

    :cond_0
    const v0, 0x7f0714bd

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTitleLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->shouldTitleNotVisible(Z)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTitleText()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateTabButtonMargin(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getStartMargin()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getEndMargin()I

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->mTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
