.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v0, p2

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    const v0, 0x7f0b0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v0, v0, p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->updateContentDescription(Landroid/view/View;I)V

    return v2
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean v1, v0, p2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aput-boolean v2, v0, p2

    const v0, 0x7f0b0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->updateContentDescription(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mSearchEngineRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEngineFragment;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/SearchEngineBaseFragment;->mCheckStates:[Z

    aget-boolean p0, p0, p2

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    :cond_0
    return v2
.end method
