.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getTabRecyclerView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$2;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onItemLongClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result p0

    return p0
.end method
