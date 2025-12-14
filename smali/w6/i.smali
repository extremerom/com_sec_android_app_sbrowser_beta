.class public final synthetic Lw6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw6/i;->a:I

    iput-object p2, p0, Lw6/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr1/e;ZFF)V
    .locals 0

    iget p1, p0, Lw6/i;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lw6/i;->b:Ljava/lang/Object;

    check-cast p0, LH6/m;

    invoke-virtual {p0}, LH6/m;->d()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lw6/i;->b:Ljava/lang/Object;

    check-cast p0, Lw6/q;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw6/q;->o()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lw6/i;->b:Ljava/lang/Object;

    check-cast p0, Lw6/q;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw6/q;->m()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
