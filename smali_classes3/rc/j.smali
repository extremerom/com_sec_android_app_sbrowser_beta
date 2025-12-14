.class public final Lrc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lsb/a;


# direct methods
.method public synthetic constructor <init>(ILsb/a;)V
    .locals 0

    iput p1, p0, Lrc/j;->a:I

    iput-object p2, p0, Lrc/j;->b:Lsb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrc/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lrc/j;->b:Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lrc/j;->b:Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrc/o;

    instance-of v0, p0, Lrc/k;

    if-eqz v0, :cond_0

    check-cast p0, Lrc/k;

    invoke-virtual {p0}, Lrc/k;->h()Lrc/o;

    move-result-object p0

    :cond_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
