.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHorizontalMargin:I

.field private final mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0714a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mHorizontalMargin:I

    return-void
.end method

.method private updateTabButtonParentVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getButtonParent()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getEndMargin()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mHorizontalMargin:I

    return p0
.end method

.method public getStartMargin()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isFirstTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFirstTabButtonMargin()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTabGroupTitleMaxWidth()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x140

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714df

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714e0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    const/16 v1, 0x258

    if-ge v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714e1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0714de

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupViewWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mWidth:I

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public updateLayout()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateMargin(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateTabButtonParentVisibility()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateTabGroupTitleMaxWidth()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getTabGroupViewWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateLayoutParam(I)V

    return-void
.end method

.method public updateLayoutParam(I)V
    .locals 3

    if-lez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mWidth:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[updateLayoutParams] groupName : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") / width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabGroupViewLayoutManager"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mWidth:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateMargin()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateMargin(F)V

    return-void
.end method

.method public updateMargin(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getStartMargin()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getEndMargin()I

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateTabGroupTitleMaxWidth()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->mTabGroupView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getHeaderView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getTabGroupTitleMaxWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateMaxTitleWidth(I)V

    return-void
.end method
