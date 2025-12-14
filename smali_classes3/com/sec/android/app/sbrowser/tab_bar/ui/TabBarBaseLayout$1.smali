.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraggingEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onDraggingEnded()V

    return-void
.end method

.method public onScrollChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onScrollChanged(I)V

    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onScrollEnd()V

    return-void
.end method

.method public onTabButtonGrouped(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onTabButtonGrouped(ILjava/lang/String;)V

    return-void
.end method

.method public onTabButtonSwapped(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onTabButtonSwapped(II)V

    return-void
.end method

.method public onTabButtonUngrouped(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onTabButtonUngrouped(ILjava/lang/String;)V

    return-void
.end method

.method public onTabGroupSwapped(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onTabGroupSwapped(Ljava/lang/String;IZ)V

    return-void
.end method

.method public onTabTearingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->setIsTabTearing(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->finishSplitMode()V

    :cond_0
    return-void
.end method

.method public onTouchEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onTouchEnded()V

    return-void
.end method
