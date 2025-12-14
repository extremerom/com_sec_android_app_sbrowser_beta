.class public final Lyc/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lyc/O;->a:I

    iput-object p2, p0, Lyc/O;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lyc/O;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lyc/O;->b:Ljava/lang/Object;

    check-cast p0, Lzc/i;

    iget-object p0, p0, Lzc/i;->b:Lsb/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    sget-object v0, LAc/k;->CANNOT_COMPUTE_ERASED_BOUND:LAc/k;

    iget-object p0, p0, Lyc/O;->b:Ljava/lang/Object;

    check-cast p0, LL8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
