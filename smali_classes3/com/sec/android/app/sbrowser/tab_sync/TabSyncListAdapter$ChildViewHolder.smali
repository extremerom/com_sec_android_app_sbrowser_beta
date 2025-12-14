.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildViewHolder"
.end annotation


# instance fields
.field mChildDivider:Landroid/view/View;

.field mChildGroup:Landroid/widget/TextView;

.field mChildTitle:Landroid/widget/TextView;

.field mChildUrl:Landroid/widget/TextView;

.field mDominantText:Landroid/widget/TextView;

.field mFavIcon:Landroid/widget/ImageView;

.field mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->h(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0b064f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildTitle:Landroid/widget/TextView;

    const p1, 0x7f0b064d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildGroup:Landroid/widget/TextView;

    const p1, 0x7f0b0652

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildUrl:Landroid/widget/TextView;

    const p1, 0x7f0b0cfb

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mChildDivider:Landroid/view/View;

    const p1, 0x7f0b0cf9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mFavIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b041b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mDominantText:Landroid/widget/TextView;

    return-void
.end method
