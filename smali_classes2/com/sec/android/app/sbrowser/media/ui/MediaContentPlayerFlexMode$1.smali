.class Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->h(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->h(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->runNextState(I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public runNextState(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->h(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->runNextState(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->p(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->q(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->n(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->j(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->l(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$1;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->k(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V

    return-void
.end method
