.class Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "5074"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->b(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->b(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
