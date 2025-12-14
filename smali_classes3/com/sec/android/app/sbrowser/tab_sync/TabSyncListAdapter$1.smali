.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->i(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->i(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->i(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    const/4 v6, 0x7

    invoke-virtual {v3, v4, v6, v5}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mFavIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mFavIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mFavIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getDominantText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
