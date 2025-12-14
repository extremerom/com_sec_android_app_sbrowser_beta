.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$BackInfoBarAppearingAnimation;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

.field private mAnimationListener:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;

.field private final mBackInfobarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mFloatingBehavior:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

.field private mFrontInfobarHeight:I

.field private mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

.field private final mInfoBarWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewFrontWrapperTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070676

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mBackInfobarHeight:I

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFloatingBehavior:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontInfobarHeight:I

    const v0, 0x7f07067b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mNewFrontWrapperTopPadding:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimationListener:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;

    return-object p0
.end method

.method private addWrapper(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->updateLayoutParams()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mBackInfobarHeight:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFloatingBehavior:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mNewFrontWrapperTopPadding:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    return-void
.end method

.method private getInfoBarWrapper()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->addWrapper(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->getInfoBarWrapper()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->processPendingAnimations()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->removeWrapper(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V

    return-void
.end method

.method private processPendingAnimations()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-gt v0, v4, :cond_9

    if-ne v0, v4, :cond_2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    const-string p0, "InfoBarContainerLayout"

    const-string v0, "Front wrapper is null, no need to disappear."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v2, v4, :cond_6

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    return-void

    :cond_6
    if-ge v0, v1, :cond_8

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    return-void

    :cond_7
    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$BackInfoBarAppearingAnimation;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$BackInfoBarAppearingAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    return-void
.end method

.method private removeWrapper(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->updateLayoutParams()V

    return-void
.end method

.method private runAnimation(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->prepareAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->start()V

    :goto_0
    return-void
.end method

.method private updateLayoutParams()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mBackInfobarHeight:I

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateRoundedCornersShadow()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontInfobarHeight:I

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mBackInfobarHeight:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontInfobarHeight:I

    :cond_2
    return-void
.end method


# virtual methods
.method public addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->processPendingAnimations()V

    return-void
.end method

.method public notifyInfoBarViewChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->processPendingAnimations()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFrontItem:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->areControlsEnabled()Z

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

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->updateRoundedCornersShadow()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->isStarted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mAnimation:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->start()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFloatingBehavior:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->beforeOnMeasure(I)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mFloatingBehavior:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->afterOnMeasure(I)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mContext:Landroid/content/Context;

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->processPendingAnimations()V

    return-void
.end method
