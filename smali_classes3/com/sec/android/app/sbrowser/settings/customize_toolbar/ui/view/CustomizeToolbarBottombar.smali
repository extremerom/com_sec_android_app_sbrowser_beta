.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

.field private mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

.field private mItemSize:I

.field private mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;

.field private mToolbarLeftItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarRightItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->lambda$notifyDataSetChanged$1(ILandroid/view/View;)V

    return-void
.end method

.method private addItem(ILandroid/view/MenuItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const v0, 0x7f140413

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->lambda$notifyDataSetChanged$0(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$notifyDataSetChanged$0(ILandroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;->onLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$notifyDataSetChanged$1(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;->onDeleteItemClick(I)V

    :cond_0
    return-void
.end method

.method private removeItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldShowDeleteButton(Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const v0, 0x7f0b0073

    if-eq p0, v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const p1, 0x7f0b0069

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addItem(ILandroid/view/MenuItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->addItem(ILandroid/view/MenuItem;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;->prepare(ILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->notifyDataSetChanged()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUrlBarMarginHorizontal()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlBarMarginHorizontal()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getUrlbarPosition()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlbarPosition()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getUrlbarView()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;->getUrlbarView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07023a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mItemSize:I

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public moveItem(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->removeItem(I)V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->addItem(ILandroid/view/MenuItem;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->prepare(IILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const p3, 0x7f140413

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    const v3, 0x7f0e01d1

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mItemSize:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const v3, 0x7f060300

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    const v6, 0x7f0b04f1

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    const v2, 0x7f0b064e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v2, 0x7f0b03da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->shouldShowDeleteButton(Landroid/view/MenuItem;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    new-instance v4, Laa/a;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const v6, 0x7f140bdf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->getInstance()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f0b03c1

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f0b03bf

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const v3, 0x7f14041a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0b03c0

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mContext:Landroid/content/Context;

    const v4, 0x7f140413

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b03be

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method public removeItem(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->removeItem(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;->prepare(ILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->notifyDataSetChanged()V

    return-void
.end method

.method public setLeftSideItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarLeftItems:Ljava/util/List;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/ToolbarItemLongClickListener;

    return-void
.end method

.method public setPlaceholderVisibility(IZ)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0b064e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0af5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->shouldShowDeleteButton(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b03da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->shouldShowDeleteButton(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setRightSideItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->mToolbarRightItems:Ljava/util/List;

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->setPlaceholderVisibility(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
