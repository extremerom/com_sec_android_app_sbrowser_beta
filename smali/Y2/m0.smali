.class public final LY2/m0;
.super LY2/h0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:LY2/f0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LY2/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LY2/f0;I)V
    .locals 0

    iput p2, p0, LY2/m0;->a:I

    iput-object p1, p0, LY2/m0;->b:LY2/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 1

    iget v0, p0, LY2/m0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LY2/h0;->onTransitionCancel(LY2/f0;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LY2/m0;->b:LY2/f0;

    check-cast p0, LY2/n0;

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LY2/n0;->hasAnimators()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, LY2/e0;->Q:LA9/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LY2/f0;->mEnded:Z

    sget-object p1, LY2/e0;->P:LA9/b;

    invoke-virtual {p0, p1, v0}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 2

    iget v0, p0, LY2/m0;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, LY2/m0;->b:LY2/f0;

    invoke-virtual {v0}, LY2/f0;->runAnimators()V

    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-void

    :pswitch_1
    iget-object v0, p0, LY2/m0;->b:LY2/f0;

    check-cast v0, LY2/n0;

    iget v1, v0, LY2/n0;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LY2/n0;->mCurrentListeners:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, LY2/n0;->mStarted:Z

    invoke-virtual {v0}, LY2/f0;->end()V

    :cond_0
    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTransitionStart(LY2/f0;)V
    .locals 1

    iget v0, p0, LY2/m0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LY2/h0;->onTransitionStart(LY2/f0;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LY2/m0;->b:LY2/f0;

    check-cast p0, LY2/n0;

    iget-boolean p1, p0, LY2/n0;->mStarted:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, LY2/f0;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LY2/n0;->mStarted:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
