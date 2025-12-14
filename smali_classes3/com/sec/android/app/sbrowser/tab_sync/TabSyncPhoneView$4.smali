.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->addListItemsDecoration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

.field final synthetic val$color:I

.field final synthetic val$itemRoundedCorner:Lq/d;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Lq/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->val$itemRoundedCorner:Lq/d;

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/F0;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$ChildViewHolder;->mViewHolderData:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;->getCorner()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->val$itemRoundedCorner:Lq/d;

    invoke-virtual {v3, v2}, Lq/d;->d(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->val$itemRoundedCorner:Lq/d;

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->val$color:I

    invoke-virtual {v3, v2, v4}, Lq/d;->c(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;->val$itemRoundedCorner:Lq/d;

    invoke-virtual {v2, v1, p1}, Lq/d;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
