.class public final Lv/o;
.super LG5/n;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lv/o;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lv/o;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lv/o;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 4

    iget-object p0, p0, Lv/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, LB/i;->b:I

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported property bundle of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; contents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v3, Lv/j;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    goto :goto_1

    :pswitch_1
    new-instance v3, Lv/h;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    goto :goto_1

    :pswitch_2
    new-instance v3, Lv/g;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    goto :goto_1

    :pswitch_3
    new-instance v3, Lv/f;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    goto :goto_1

    :pswitch_4
    new-instance v3, Lv/i;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    goto :goto_1

    :pswitch_5
    new-instance v3, Lv/k;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    goto :goto_1

    :pswitch_6
    new-instance v3, Lv/n;

    invoke-direct {v3, v2}, Lv/l;-><init>(LB/i;)V

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lv/o;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lv/o;

    iget-object v0, p1, Lv/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lv/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lv/o;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lv/o;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lv/o;->e()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lv/o;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lv/o;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lv/o;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lv/o;->a:Ljava/lang/String;

    const-string v2, ""

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, LD/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD/b;-><init>(I)V

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, LD/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, LD/b;->d()V

    const-string v1, "schemaType: \""

    invoke-virtual {v0, v1}, LD/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lv/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LD/b;->b(Ljava/lang/String;)V

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, LD/b;->b(Ljava/lang/String;)V

    const-string v2, "description: \""

    invoke-virtual {v0, v2}, LD/b;->b(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, LD/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LD/b;->b(Ljava/lang/String;)V

    const-string v1, "properties: [\n"

    invoke-virtual {v0, v1}, LD/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lv/o;->e()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lv/l;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lv/l;

    new-instance v2, LB0/r;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LB0/r;-><init>(I)V

    invoke-static {p0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v0}, LD/b;->d()V

    invoke-virtual {v2, v0}, Lv/l;->a(LD/b;)V

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, LD/b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, LD/b;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "\n"

    invoke-virtual {v0, p0}, LD/b;->b(Ljava/lang/String;)V

    const-string p0, "]\n"

    invoke-virtual {v0, p0}, LD/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, LD/b;->c()V

    const-string p0, "}"

    invoke-virtual {v0, p0}, LD/b;->b(Ljava/lang/String;)V

    iget-object p0, v0, LD/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
