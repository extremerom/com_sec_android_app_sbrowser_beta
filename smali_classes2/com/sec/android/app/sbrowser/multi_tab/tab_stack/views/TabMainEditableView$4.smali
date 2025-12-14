.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->getSPenMultiSelectedListener()Landroidx/recyclerview/widget/Z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setIsOnMultiSelect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->onMultiSelectStart(II)V

    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setIsOnMultiSelect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->onMultiSelectStop(II)V

    return-void
.end method
