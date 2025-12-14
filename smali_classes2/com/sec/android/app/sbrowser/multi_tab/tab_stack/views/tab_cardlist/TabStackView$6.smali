.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndingCloseTabAnimation(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->m(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewCallbacks;->onTabViewDismissed(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;Z)V

    return-void
.end method

.method public onRunningCloseTabAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewCallbacks;->onRunningCloseTabAnimation(Z)V

    return-void
.end method

.method public onTabViewClicked(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroup()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->isSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->exitSearchMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->sendSALoggingForTabClick(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->setCurrentTab(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->updateTabStacks()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getCurrentTabId()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->sendSALoggingForTabClick(ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    iget p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->changeCurrentTab(I)V

    return-void
.end method

.method public onTabViewDismissed(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTabViewDismissed / tab.key.id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TabStackView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->isFocusedTab()Z

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->indexOf(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->remove(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->q(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;->isSecretMode()Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_4

    const-string p2, "4056"

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const-string p2, "4104"

    goto :goto_1

    :cond_5
    const-string p2, "4003"

    :goto_1
    invoke-static {v4, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->e(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabList()Ljava/util/List;

    move-result-object p2

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->setFocusedTab()V

    goto :goto_2

    :cond_7
    const p1, 0x8000

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onTabViewFocusChanged(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$6;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->indexOf(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->o(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;I)V

    :cond_0
    return-void
.end method
