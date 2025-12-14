.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->setResultViewCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFloatingMoved(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Z)V

    return-void
.end method

.method public onInsert(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onMinimizedChanged(IZ)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMaximized()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->maximizeToolbar(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->minimizeToolbar(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onModeChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTitleContainerContentMargin()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateControlButtonContainer()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInBottomMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setResultViewMinWidth(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->maximizeToolbar(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInSideMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;->onMinimized()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInFloatingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->bringResultViewToFront()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->isResultViewInBottomMode()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateResultViewBottomModeStatus(Z)V

    return-void
.end method

.method public onPreInsert(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onResizeAnimate(Landroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    const-string v0, "onStateChanged state: "

    const-string v1, "si__ReadAloudResultViewHandler"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->showResultViewBlurLayout(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->n(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->h(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->o(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20301"

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Z)V

    :cond_1
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->onResultViewVisibilityChanged(Z)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->g(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;->onCloseClick()V

    :cond_1
    return-void
.end method
