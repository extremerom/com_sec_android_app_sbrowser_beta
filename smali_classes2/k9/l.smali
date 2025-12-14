.class public final synthetic Lk9/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    iput p3, p0, Lk9/l;->a:I

    iput-object p1, p0, Lk9/l;->b:Ljava/lang/Object;

    iput p2, p0, Lk9/l;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk9/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk9/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;

    iget p0, p0, Lk9/l;->c:F

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenDTapSeekAnimView;F)V

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/l;->b:Ljava/lang/Object;

    check-cast v1, Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_0

    iget p0, p0, Lk9/l;->c:F

    invoke-virtual {v0, p0}, Lk9/z;->l(F)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lk9/l;->b:Ljava/lang/Object;

    check-cast v0, Lk9/r;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lk9/r;->f:Lk9/g;

    invoke-virtual {v1}, Li9/a;->c()Lj9/h;

    move-result-object v1

    check-cast v1, Lk9/z;

    if-eqz v1, :cond_1

    iget p0, p0, Lk9/l;->c:F

    invoke-virtual {v1, p0}, Lk9/z;->l(F)V

    :cond_1
    iget-boolean p0, v0, Lk9/r;->j:Z

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lk9/r;->d()V

    :cond_2
    return-void

    :pswitch_2
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/l;->b:Ljava/lang/Object;

    check-cast v1, Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_3

    iget p0, p0, Lk9/l;->c:F

    invoke-virtual {v0, p0}, Lk9/z;->l(F)V

    :cond_3
    return-void

    :pswitch_3
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/l;->b:Ljava/lang/Object;

    check-cast v1, Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_4

    iget p0, p0, Lk9/l;->c:F

    invoke-virtual {v0, p0}, Lk9/z;->l(F)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
