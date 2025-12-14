.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->startOutroAnimationForInvisibleTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$startAction:Ljava/lang/Runnable;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$startAction:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$endAction:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$endAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->access$700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;->val$startAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
