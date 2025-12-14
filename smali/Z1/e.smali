.class public final LZ1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LPc/y;


# direct methods
.method public synthetic constructor <init>(LPc/y;I)V
    .locals 0

    iput p2, p0, LZ1/e;->a:I

    iput-object p1, p0, LZ1/e;->b:LPc/y;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LZ1/e;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LZ1/e;->b:LPc/y;

    check-cast p0, LPc/x;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LPc/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, LZ1/e;->b:LPc/y;

    check-cast p0, LPc/x;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LPc/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
