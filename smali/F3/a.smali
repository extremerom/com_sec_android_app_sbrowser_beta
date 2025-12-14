.class public final LF3/a;
.super LF3/f;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, LF3/a;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final f0()LC3/e;
    .locals 2

    iget v0, p0, LF3/a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LC3/f;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LC3/f;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_0
    new-instance v0, LC3/n;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, LC3/n;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_1
    new-instance v0, LC3/j;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LC3/j;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_2
    new-instance v0, LC3/j;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LC3/j;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_3
    new-instance v0, LC3/f;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LC3/f;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_4
    new-instance v0, LC3/j;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LC3/j;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_5
    new-instance v0, LC3/f;

    iget-object p0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LC3/f;-><init>(ILjava/util/List;)V

    return-object v0

    nop

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
