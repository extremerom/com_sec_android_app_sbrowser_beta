.class public LRd/l;
.super LRd/n;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    iput p3, p0, LRd/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LRd/l;->a:I

    iput p2, p0, LRd/l;->b:I

    return-void
.end method


# virtual methods
.method public final a(LQd/n;LQd/n;)Z
    .locals 5

    iget-object p1, p2, LQd/u;->a:LQd/u;

    check-cast p1, LQd/n;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    instance-of p1, p1, LQd/j;

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p1, p0, LRd/l;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p2, LQd/u;->a:LQd/u;

    check-cast p1, LQd/n;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, LQd/n;->C()LRd/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQd/n;

    iget-object v3, v2, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v4, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/F;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-ne v2, p2, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object p1, p2, LQd/u;->a:LQd/u;

    check-cast p1, LQd/n;

    const/4 v1, 0x0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, LQd/n;->C()LRd/d;

    move-result-object p1

    invoke-virtual {p2}, LQd/n;->F()I

    move-result v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQd/n;

    iget-object v3, v3, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v4, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/F;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    iget-object p1, p2, LQd/u;->a:LQd/u;

    check-cast p1, LQd/n;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    :goto_1
    move v1, p1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, LQd/n;->C()LRd/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {p2}, LQd/n;->F()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, LQd/n;->F()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    :cond_7
    :goto_2
    const/4 p1, 0x1

    iget p2, p0, LRd/l;->b:I

    iget p0, p0, LRd/l;->a:I

    if-nez p0, :cond_9

    if-ne v1, p2, :cond_8

    move v0, p1

    :cond_8
    return v0

    :cond_9
    sub-int/2addr v1, p2

    mul-int p2, v1, p0

    if-ltz p2, :cond_a

    rem-int/2addr v1, p0

    if-nez v1, :cond_a

    move v0, p1

    :cond_a
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget p0, p0, LRd/l;->c:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "nth-of-type"

    return-object p0

    :pswitch_0
    const-string p0, "nth-last-of-type"

    return-object p0

    :pswitch_1
    const-string p0, "nth-last-child"

    return-object p0

    :pswitch_2
    const-string p0, "nth-child"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LRd/l;->b:I

    iget v1, p0, LRd/l;->a:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, LRd/l;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ":%s(%d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, LRd/l;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ":%s(%dn)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, LRd/l;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ":%s(%dn%+d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
