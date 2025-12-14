.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$3;->val$viewHolder:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$ViewHolder;->mCloseBtn:Landroid/widget/ImageView;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onCloseTab(ILandroid/view/View;)V

    return-void
.end method
