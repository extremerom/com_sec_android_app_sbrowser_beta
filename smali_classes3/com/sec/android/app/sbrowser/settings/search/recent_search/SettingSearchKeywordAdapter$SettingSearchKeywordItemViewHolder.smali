.class Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingSearchKeywordItemViewHolder"
.end annotation


# instance fields
.field mDeleteButton:Landroid/widget/ImageView;

.field mMainItemLayout:Landroid/widget/LinearLayout;

.field mPosition:I

.field mTitleView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->this$0:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const p3, 0x7f0b0b24

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mTitleView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    const p3, 0x7f0b0b23

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->d(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->c(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    const p3, 0x7f0b0b20

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->d(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->b(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;)Landroid/view/View$OnKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public requestDeleteFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public requestItemFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter$SettingSearchKeywordItemViewHolder;->mMainItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
