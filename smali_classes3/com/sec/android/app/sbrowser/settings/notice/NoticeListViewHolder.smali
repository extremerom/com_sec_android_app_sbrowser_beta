.class public Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

.field private mDivider:Landroid/view/View;

.field private mRowView:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0d66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0c0a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mSummary:Landroid/widget/TextView;

    const p2, 0x7f0b06a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindData(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getTitleByPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getDateByPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mDivider:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method
