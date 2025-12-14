.class Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendDataImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$count:I

.field final synthetic val$faviconCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$tabData:Landroid/os/Bundle;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/atomic/AtomicInteger;ILandroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$tabData:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$faviconCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p5, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$count:I

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->lambda$onFaviconAvailable$0(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onFaviconAvailable$0(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$tabData:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$tabData:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->d(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$faviconCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$count:I

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->val$intent:Landroid/content/Intent;

    new-instance v2, Lcom/sec/android/app/sbrowser/link_to_window/a;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/link_to_window/a;-><init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
