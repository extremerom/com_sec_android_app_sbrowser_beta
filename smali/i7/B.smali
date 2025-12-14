.class public final Li7/B;
.super Li7/H;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li7/f;I)V
    .locals 1

    iput p2, p0, Li7/B;->f:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "proto_ids"

    const/4 v0, 0x4

    invoke-direct {p0, p2, p1, v0}, Li7/C;-><init>(Ljava/lang/String;Li7/f;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Li7/B;->g:Ljava/lang/Object;

    return-void

    :pswitch_0
    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, p2, p1, v0}, Li7/C;-><init>(Ljava/lang/String;Li7/f;I)V

    new-instance p1, Li7/m;

    invoke-direct {p1}, Li7/o;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Li7/o;->h(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li7/B;->g:Ljava/lang/Object;

    return-void

    :pswitch_1
    const-string p2, "type_ids"

    const/4 v0, 0x4

    invoke-direct {p0, p2, p1, v0}, Li7/C;-><init>(Ljava/lang/String;Li7/f;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Li7/B;->g:Ljava/lang/Object;

    return-void

    :pswitch_2
    const-string p2, "string_ids"

    const/4 v0, 0x4

    invoke-direct {p0, p2, p1, v0}, Li7/C;-><init>(Ljava/lang/String;Li7/f;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Li7/B;->g:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final r()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Collection;
    .locals 1

    iget v0, p0, Li7/B;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 2

    iget v0, p0, Li7/B;->f:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/F;

    invoke-virtual {v1, v0}, Li7/o;->h(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/E;

    invoke-virtual {v1, v0}, Li7/o;->h(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_2
    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/A;

    invoke-virtual {v1, v0}, Li7/o;->h(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Ll7/t;)I
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/E;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li7/o;->f()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Ll7/u;)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Ll7/u;->a:Lm7/c;

    invoke-virtual {p0, p1}, Li7/B;->n(Lm7/c;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(Lm7/c;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/F;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li7/o;->f()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(Ll7/t;)V
    .locals 2

    new-instance v0, Li7/E;

    invoke-direct {v0, p1}, Li7/E;-><init>(Ll7/t;)V

    invoke-virtual {p0}, Li7/C;->g()V

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/E;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public p(Ll7/u;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->g()V

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    iget-object v0, p1, Ll7/u;->a:Lm7/c;

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/F;

    if-nez v1, :cond_0

    new-instance v1, Li7/F;

    invoke-direct {v1, p1}, Li7/n;-><init>(Ll7/u;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lm7/c;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->g()V

    iget-object p0, p0, Li7/B;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/F;

    if-nez v0, :cond_0

    new-instance v0, Li7/F;

    new-instance v1, Ll7/u;

    invoke-direct {v1, p1}, Ll7/u;-><init>(Lm7/c;)V

    invoke-direct {v0, v1}, Li7/n;-><init>(Ll7/u;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
