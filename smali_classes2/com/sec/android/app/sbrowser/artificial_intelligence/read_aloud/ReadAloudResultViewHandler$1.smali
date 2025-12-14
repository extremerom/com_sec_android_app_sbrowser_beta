.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->setListenerForResultView()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateControlButtonContainer()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->updateResultViewBottomModeStatus(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setResultViewMinWidth(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;->onMinimized()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
