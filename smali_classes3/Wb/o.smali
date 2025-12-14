.class public final LWb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:LWb/p;


# direct methods
.method public synthetic constructor <init>(LWb/p;I)V
    .locals 0

    iput p2, p0, LWb/o;->a:I

    iput-object p1, p0, LWb/o;->b:LWb/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LWb/o;->a:I

    check-cast p1, Lhc/f;

    packed-switch v0, :pswitch_data_0

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LWb/o;->b:LWb/p;

    invoke-virtual {p0, p1}, LWb/p;->O(Lhc/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LWb/o;->b:LWb/p;

    invoke-virtual {p0, p1}, LWb/p;->N(Lhc/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
