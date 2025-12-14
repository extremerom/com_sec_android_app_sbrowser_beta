.class public Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;
    }
.end annotation


# instance fields
.field private mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

.field private mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

.field private mClearSearchHistoryView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;

.field private mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

.field private mRecentHeaderTextView:Landroid/widget/TextView;

.field private mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$2;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mListener:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;)V
    .locals 1

    const v0, 0x7f0b0b7d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mListener:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;

    return-void
.end method

.method public requestFocusClearSearchHistoryMainLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public requestFocusSitesSearchKeywordListView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setRecentHeaderLayout()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    const v3, 0x7f0b0b6c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0b0b6b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0b7a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mRecentHeaderTextView:Landroid/widget/TextView;

    const v0, 0x7f0b02b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b02b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryView:Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0b79

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mRecentHeaderTextView:Landroid/widget/TextView;

    const v0, 0x7f0b02ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b02ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryView:Landroid/widget/TextView;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setSearchKeywordListAdapter(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;Landroidx/recyclerview/widget/O0;Landroidx/recyclerview/widget/N0;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordItemDecoration;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mSitesSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    return-void
.end method

.method public updateSearchKeywordHeader()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mRecentHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mRecentHeaderTextView:Landroid/widget/TextView;

    const-string v3, ", "

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f14058d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1402f1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryView:Landroid/widget/TextView;

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mClearSearchHistoryView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0601bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
