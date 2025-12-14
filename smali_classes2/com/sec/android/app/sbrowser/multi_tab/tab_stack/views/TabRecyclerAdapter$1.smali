.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->checkAndUpdateTabImportance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

.field final synthetic val$currentFilteredList:Ljava/util/List;

.field final synthetic val$incorrectPrediction:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->val$currentFilteredList:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->val$incorrectPrediction:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->c(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->val$currentFilteredList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->val$incorrectPrediction:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;->val$incorrectPrediction:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->updateTabImportance(Ljava/util/HashSet;)V

    return-void
.end method
