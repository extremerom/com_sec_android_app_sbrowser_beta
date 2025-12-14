.class public final Lc2/q;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq3/j;


# direct methods
.method public synthetic constructor <init>(Lq3/j;I)V
    .locals 0

    iput p2, p0, Lc2/q;->a:I

    iput-object p1, p0, Lc2/q;->b:Lq3/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc2/q;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lc2/q;->b:Lq3/j;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq3/h;->cancel(Z)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lc2/q;->b:Lq3/j;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq3/h;->cancel(Z)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
