.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->getDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUnlockedMember(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->closeUnlockedMember(I)V

    return-void
.end method

.method public dismissChild(IF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->dismissChild(IF)V

    return-void
.end method

.method public getIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->getIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result p0

    return p0
.end method

.method public hasLockedTab(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->hasLockedTab(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendSALoggingForTabSwipe()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->sendSALoggingForTabSwipe()V

    return-void
.end method

.method public setCloseDialog(Lm/l;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->setCloseDialog(Lm/l;)V

    return-void
.end method

.method public snapChild(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;->snapChild(I)V

    return-void
.end method
