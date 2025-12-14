.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string p1, "TabMainStackView"

    const-string v0, "onAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->access$3400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->access$3500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->access$3600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->access$3700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->requestToolbarCapture()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "TabMainStackView"

    const-string v0, "onAnimationStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->access$3200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4$1;->this$1:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->access$3300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onExitAnimationStarted(Z)V

    return-void
.end method
