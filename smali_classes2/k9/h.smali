.class public final synthetic Lk9/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk9/r;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lk9/r;FFI)V
    .locals 0

    iput p4, p0, Lk9/h;->a:I

    iput-object p1, p0, Lk9/h;->b:Lk9/r;

    iput p2, p0, Lk9/h;->c:F

    iput p3, p0, Lk9/h;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk9/h;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_2
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_3
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lk9/r;->d()V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_4
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lk9/r;->d()V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_5
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/h;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lk9/h;->c:F

    iget p0, p0, Lk9/h;->d:F

    invoke-virtual {v1, v0, p0}, Lk9/r;->e(FF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
