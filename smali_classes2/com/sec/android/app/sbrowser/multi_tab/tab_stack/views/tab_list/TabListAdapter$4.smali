.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;
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


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onTabUnlocked(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->val$item:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setLocked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->access$900(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4052"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
