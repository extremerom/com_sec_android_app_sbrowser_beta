.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->getLPMultiSelectionListener()Landroidx/recyclerview/widget/X0;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->onItemSelectedByLongPress(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->onLongPressMultiSelectionEnded(II)V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->onLongPressMultiSelectionStarted(II)V

    return-void
.end method
