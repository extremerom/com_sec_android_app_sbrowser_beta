.class Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$1;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SBROWSER_LINK_TO_WINDOW_ENABLED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "LinkToWindowManager"

    if-eqz p2, :cond_0

    const-string p1, "Link to Window has been enabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$1;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->c(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.intent.action.SBROWSER_LINK_TO_WINDOW_DISABLED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Link to Window has been disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$1;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->b(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;)V

    :cond_1
    :goto_0
    return-void
.end method
