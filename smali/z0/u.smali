.class public final Lz0/u;
.super Lz0/F;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz0/u;->a:I

    iput-object p2, p0, Lz0/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LH0/k;
    .locals 1

    iget v0, p0, Lz0/u;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz0/u;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-interface {p0}, LB0/P;->getLayoutDirection()LH0/k;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lz0/u;->b:Ljava/lang/Object;

    check-cast p0, LB0/I;

    invoke-interface {p0}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lz0/u;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz0/u;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-interface {p0}, LB0/P;->getRoot()Landroidx/compose/ui/node/a;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    iget p0, p0, Lz0/G;->a:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lz0/u;->b:Ljava/lang/Object;

    check-cast p0, LB0/I;

    invoke-virtual {p0}, Lz0/G;->s()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
