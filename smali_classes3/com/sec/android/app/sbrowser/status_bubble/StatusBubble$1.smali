.class Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->c(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->a(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->updateStatusDisplay(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->c(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->b(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->c(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;->this$0:Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->c(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method
