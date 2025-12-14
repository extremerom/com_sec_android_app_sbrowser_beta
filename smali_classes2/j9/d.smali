.class public final synthetic Lj9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lj9/h;


# direct methods
.method public synthetic constructor <init>(Lj9/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/d;->a:Lj9/h;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object p0, p0, Lj9/d;->a:Lj9/h;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lj9/h;->a:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lj9/h;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj9/h;->j(Z)V

    iget-object p1, p0, Lj9/h;->i:Lj9/f;

    sget-object p2, Lj9/f;->RUNNING:Lj9/f;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lj9/h;->b:Ljava/lang/Float;

    iget-object p0, p0, Lj9/h;->k:Lj9/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x42f00000    # 120.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    float-to-long v0, v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    :goto_1
    return-void
.end method
