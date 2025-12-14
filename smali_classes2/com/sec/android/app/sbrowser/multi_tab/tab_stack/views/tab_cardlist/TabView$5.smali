.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->startCloseTabAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

.field final synthetic val$tv:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->val$tv:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TabView"

    const-string v0, "startCloseTabAnimation / endAction"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->g(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->val$tv:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;->onEndingCloseTabAnimation(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->g(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;->onRunningCloseTabAnimation(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewDelegate;->showNoTabViewIfRequired()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TabView"

    const-string v0, "startCloseTabAnimation / startAction"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$5;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->g(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;->onRunningCloseTabAnimation(Z)V

    return-void
.end method
