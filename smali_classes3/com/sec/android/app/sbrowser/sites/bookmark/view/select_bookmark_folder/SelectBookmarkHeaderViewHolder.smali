.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;

.field private mContext:Landroid/content/Context;

.field private mDummyView:Landroid/view/View;

.field private mListDivider:Landroid/view/View;

.field private mRowView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;->getActivity()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0185

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mListDivider:Landroid/view/View;

    const p2, 0x7f0b0380

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0b0482

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mDummyView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getDummyView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mDummyView:Landroid/view/View;

    return-object p0
.end method

.method public getListDivider()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mListDivider:Landroid/view/View;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter$SelectBookmarkAdapterListener;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter$SelectBookmarkAdapterListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method
