.class public final Li7/l;
.super Li7/t;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Li7/f;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "field_ids"

    invoke-direct {p0, v1, p1, v0}, Li7/C;-><init>(Ljava/lang/String;Li7/f;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Li7/l;->f:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Li7/l;->f:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final l(Ll7/h;)I
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->f()V

    iget-object p0, p0, Li7/l;->f:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/k;

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

    const-string p1, "ref == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Ll7/h;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li7/C;->g()V

    iget-object p0, p0, Li7/l;->f:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/k;

    if-nez v0, :cond_0

    new-instance v0, Li7/k;

    invoke-direct {v0, p1}, Li7/s;-><init>(Ll7/p;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "field == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
