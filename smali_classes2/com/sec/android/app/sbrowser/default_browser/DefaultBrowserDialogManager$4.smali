.class Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$4;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->c()Lm/l;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->c()Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$4;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "5072"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->c()Lm/l;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->c()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dialog showing error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DefaultBrowserDialogManager"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
