.class Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$2;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$2;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "5073"

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
