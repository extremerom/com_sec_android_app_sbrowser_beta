.class public final Li7/r;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Li7/q;

.field public final f:Li7/C;

.field public final g:Li7/p;

.field public final h:I


# direct methods
.method public constructor <init>(Li7/q;Li7/C;Li7/p;Li7/p;I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Li7/z;-><init>(II)V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-lez p5, :cond_0

    iput-object p1, p0, Li7/r;->e:Li7/q;

    iput-object p2, p0, Li7/r;->f:Li7/C;

    iput-object p3, p0, Li7/r;->g:Li7/p;

    iput p5, p0, Li7/r;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "lastItem == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "firstItem == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Li7/y;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Li7/z;-><init>(II)V

    if-eqz p1, :cond_0

    sget-object v0, Li7/q;->TYPE_MAP_LIST:Li7/q;

    iput-object v0, p0, Li7/r;->e:Li7/q;

    iput-object p1, p0, Li7/r;->f:Li7/C;

    const/4 p1, 0x0

    iput-object p1, p0, Li7/r;->g:Li7/p;

    const/4 p1, 0x1

    iput p1, p0, Li7/r;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "section == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o([Li7/C;Li7/y;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7

    iget-object v2, v1, Li7/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v12, v0, v5

    invoke-virtual {v12}, Li7/C;->c()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Li7/p;

    invoke-virtual {v14}, Li7/p;->c()Li7/q;

    move-result-object v15

    if-eq v15, v7, :cond_1

    if-eqz v11, :cond_0

    new-instance v8, Li7/r;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Li7/r;-><init>(Li7/q;Li7/C;Li7/p;Li7/p;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_3

    new-instance v4, Li7/r;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Li7/r;-><init>(Li7/q;Li7/C;Li7/p;Li7/p;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-ne v12, v1, :cond_4

    new-instance v4, Li7/r;

    invoke-direct {v4, v1}, Li7/r;-><init>(Li7/y;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Li7/I;

    sget-object v3, Li7/q;->TYPE_MAP_LIST:Li7/q;

    invoke-direct {v0, v3, v2}, Li7/I;-><init>(Li7/q;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Li7/y;->k(Li7/z;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 0

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_MAP_ITEM:Li7/q;

    return-object p0
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 5

    iget-object p1, p0, Li7/r;->e:Li7/q;

    invoke-virtual {p1}, Li7/q;->d()I

    move-result v0

    iget-object v1, p0, Li7/r;->f:Li7/C;

    iget-object v2, p0, Li7/r;->g:Li7/p;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Li7/C;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Li7/C;->a(Li7/p;)I

    move-result v1

    :goto_0
    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v2

    iget v3, p0, Li7/r;->h:I

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li7/q;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " map"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Ln7/b;->b(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "  type:   "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " // "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    const-string p0, "  unused: 0"

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v3}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "  size:   "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "  offset: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2, v0}, Ln7/b;->k(I)V

    invoke-virtual {p2, v4}, Ln7/b;->k(I)V

    invoke-virtual {p2, v3}, Ln7/b;->j(I)V

    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Li7/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Li7/r;->f:Li7/C;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Li7/r;->e:Li7/q;

    invoke-virtual {p0}, Li7/q;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
