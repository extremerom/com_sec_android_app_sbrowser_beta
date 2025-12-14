.class public final LL2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL2/x;
.implements LJ2/G;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LL2/p;->a:I

    iput-object p2, p0, LL2/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LL2/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LL2/p;->b:Ljava/lang/Object;

    check-cast p0, LM2/e;

    invoke-virtual {p0, p1, p2, p3}, LM2/e;->a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LL2/p;->b:Ljava/lang/Object;

    check-cast p0, LL2/w;

    invoke-virtual {p0, p1, p2, p3}, LL2/w;->a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()LS2/a;
    .locals 1

    iget v0, p0, LL2/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LL2/p;->b:Ljava/lang/Object;

    check-cast p0, LM2/e;

    iget-object p0, p0, LM2/e;->a:LM2/a;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LL2/p;->b:Ljava/lang/Object;

    check-cast p0, LL2/w;

    iget-object p0, p0, LL2/w;->a:LL2/i;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
