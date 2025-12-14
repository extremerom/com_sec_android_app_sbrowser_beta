.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->startCloseAllTabsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

.field final synthetic val$isLastItem:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;->val$isLastItem:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;->val$isLastItem:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->access$600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    :cond_0
    return-void
.end method
