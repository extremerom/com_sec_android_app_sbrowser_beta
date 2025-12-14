.class public final LRd/s;
.super LRd/t;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LRd/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LQd/n;LQd/n;)Z
    .locals 2

    iget v0, p0, LRd/s;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, LQd/n;->I()LQd/n;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, LRd/t;->a:LRd/n;

    invoke-virtual {v1, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, LQd/n;->I()LQd/n;

    move-result-object p2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :pswitch_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p2, p2, LQd/u;->a:LQd/u;

    check-cast p2, LQd/n;

    :goto_2
    if-eqz p2, :cond_6

    iget-object v1, p0, LRd/t;->a:LRd/n;

    invoke-virtual {v1, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    if-ne p2, p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p2, p2, LQd/u;->a:LQd/u;

    check-cast p2, LQd/n;

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :pswitch_1
    iget-object p0, p0, LRd/t;->a:LRd/n;

    invoke-virtual {p0, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_2
    const/4 v0, 0x0

    if-ne p1, p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, LQd/n;->I()LQd/n;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p0, p0, LRd/t;->a:LRd/n;

    invoke-virtual {p0, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_4
    return v0

    :pswitch_3
    const/4 v0, 0x0

    if-ne p1, p2, :cond_9

    goto :goto_5

    :cond_9
    iget-object p2, p2, LQd/u;->a:LQd/u;

    check-cast p2, LQd/n;

    if-eqz p2, :cond_a

    iget-object p0, p0, LRd/t;->a:LRd/n;

    invoke-virtual {p0, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LRd/s;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LRd/t;->a:LRd/n;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s ~ "

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LRd/t;->a:LRd/n;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s "

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LRd/t;->a:LRd/n;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ":not(%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, LRd/t;->a:LRd/n;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s + "

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, LRd/t;->a:LRd/n;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s > "

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
