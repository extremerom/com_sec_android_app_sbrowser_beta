.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

.field mGroupDivider:Landroid/widget/ImageView;

.field mGroupIndicator:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0578

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0b055d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0b055c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mGroupDivider:Landroid/widget/ImageView;

    const p1, 0x7f0b03e4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;->mCheckBox:Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    return-void
.end method
