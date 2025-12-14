.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->setSeslOnMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragEndIndex:I

    iput v1, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragStartIndex:I

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragStartIndex:I

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p2, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragEndIndex:I

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    iget p2, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragStartIndex:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget v1, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragEndIndex:I

    if-eq v1, v0, :cond_5

    :cond_1
    if-ne p2, v0, :cond_2

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragStartIndex:I

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    iget p2, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragStartIndex:I

    iget v1, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragEndIndex:I

    if-ne v1, v0, :cond_3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragEndIndex:I

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragEndIndex:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mDragStartIndex:I

    if-le v0, p1, :cond_4

    move p2, p1

    move p1, v0

    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->onMultiSelectStopInternal(II)V

    :cond_5
    return-void
.end method
