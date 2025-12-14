.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnDeleteKeyListener:Landroid/view/View$OnKeyListener;

.field private mRecentViewListKeyListener:Landroid/view/View$OnKeyListener;

.field private mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mOnDeleteKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mRecentViewListKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mViews:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mOnDeleteKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mRecentViewListKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput p2, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mPosition:I

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mTitleView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->updateSearchKeywordHeader()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p2, 0x7f0e0894

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)V

    return-object p2
.end method

.method public setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mSitesSearchKeywordtList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setFocusOnDeleteViewDown(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/h1;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    iget v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mPosition:I

    if-ne v1, p1, :cond_0

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 p1, 0x40000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 p1, 0x60000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_1
    return-void
.end method

.method public setFocusOnListItem(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/h1;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    iget v0, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mPosition:I

    if-ne v0, p1, :cond_0

    :cond_1
    return-void
.end method

.method public setFocusOnNextView(IZ)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/h1;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;

    iget v1, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->mPosition:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->requestDeleteFocus()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$SitesSearchKeywordItemViewHolder;->requestItemFocus()V

    :cond_2
    :goto_0
    return-void
.end method
