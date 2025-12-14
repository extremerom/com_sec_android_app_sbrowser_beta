.class Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->finishFindOnPage()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->finishFindOnPage()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->restoreReadAloudToolbar()V

    return-void
.end method
