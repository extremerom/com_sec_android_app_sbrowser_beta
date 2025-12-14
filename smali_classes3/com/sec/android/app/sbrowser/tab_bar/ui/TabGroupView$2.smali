.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->lambda$onDrag$0(FF)V

    return-void
.end method

.method private synthetic lambda$onDrag$0(FF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TabGroupView"

    const-string v1, "[onDrag] perform dragging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onDrag(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onDrag(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[onDrag] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", needToShrink : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isExpanded : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabGroupView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getLeftEdge()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->shrinkGroupView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;FF)V

    const-wide/16 p0, 0x15e

    invoke-virtual {v1, v2, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-interface {v1, p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onDrag(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V

    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onLongClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method
