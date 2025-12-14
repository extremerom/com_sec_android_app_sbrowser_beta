.class public Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;
.super Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;
.source "SourceFile"


# instance fields
.field private mDeleteButton:Landroid/widget/ImageView;

.field private mMainItemLayout:Landroid/widget/LinearLayout;

.field private mTitleView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)V

    const v0, 0x7f0b09d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mTitleView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const v0, 0x7f0b09d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b09cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/a;-><init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/a;-><init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->getItemKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->getDeleteKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportHoveringUi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    sget-object p2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_TOOLTIP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f14004e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getSearchItem()Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->updateSearchQuery(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    move-result-object p0

    const-string p1, "8779"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->sendSALogging(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getSearchItem()Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->deleteSearchItem(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    move-result-object p0

    const-string p1, "8780"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->sendSALogging(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindSearchItemView(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;->setSearchItem(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mTitleView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public requestItemFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public requestViewFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
