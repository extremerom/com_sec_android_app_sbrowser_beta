.class Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->lambda$onLayoutChange$0()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->r(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-ne p1, p2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/c;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->r(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->q(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;)V

    :cond_1
    return-void
.end method
