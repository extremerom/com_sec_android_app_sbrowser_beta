.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStackTabAdded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 0

    return-void
.end method

.method public onStackTabRemoved(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget v1, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->n(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->unloadTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 p1, 0x0

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getLastTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->mLayoutAlgorithm:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->getStackScrollForTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->t(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)V

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->mLayoutAlgorithm:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->getStackScrollForTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)F

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->k(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->k(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewScroller;->getStackScroll()F

    move-result v1

    sub-float/2addr p2, p1

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewScroller;->setStackScroll(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->k(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewScroller;->boundScroll()Z

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->l(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->s(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;I)V

    if-eqz p3, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget p1, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->onTabBound(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    :cond_5
    return-void
.end method
