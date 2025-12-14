.class public final Lhd/u;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lhd/u;->a:I

    iput-object p2, p0, Lhd/u;->b:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lhd/u;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lhd/u;->b:Ljava/util/List;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lhd/u;->b:Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
