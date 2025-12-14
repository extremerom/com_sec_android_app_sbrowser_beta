.class public final Lgc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lic/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lic/g;

    invoke-direct {v0}, Lic/g;-><init>()V

    sget-object v1, Lfc/k;->a:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->b:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->c:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->d:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->e:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->f:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->g:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->h:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->i:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->j:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->k:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->l:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->m:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sget-object v1, Lfc/k;->n:Lic/o;

    invoke-virtual {v0, v1}, Lic/g;->a(Lic/o;)V

    sput-object v0, Lgc/h;->a:Lic/g;

    return-void
.end method

.method public static a(Lcc/n;Lec/g;LX4/i;)Lgc/e;
    .locals 8

    const-string v0, "proto"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfc/k;->a:Lic/o;

    const-string v1, "constructorSignature"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/c;

    if-eqz v0, :cond_0

    iget v1, v0, Lfc/c;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lfc/c;->c:I

    invoke-interface {p1, v1}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<init>"

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lfc/c;->b:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget p0, v0, Lfc/c;->d:I

    invoke-interface {p1, p0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcc/n;->e:Ljava/util/List;

    const-string v0, "getValueParameterList(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/b0;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0, p2}, LG5/Q2;->i(Lcc/b0;LX4/i;)Lcc/T;

    move-result-object v0

    invoke-static {v0, p1}, Lgc/h;->e(Lcc/T;Lec/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v5, ")V"

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, "("

    const/16 v7, 0x38

    invoke-static/range {v2 .. v7}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p1, Lgc/e;

    invoke-direct {p1, v1, p0}, Lgc/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(Lcc/I;Lec/g;LX4/i;Z)Lgc/d;
    .locals 4

    const-string v0, "proto"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfc/k;->d:Lic/o;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, Lfc/e;->b:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lfc/e;->c:Lfc/b;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    iget p3, v0, Lfc/b;->b:I

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_3

    iget p3, v0, Lfc/b;->c:I

    goto :goto_1

    :cond_3
    iget p3, p0, Lcc/I;->f:I

    :goto_1
    if-eqz v0, :cond_4

    iget v2, v0, Lfc/b;->b:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    iget p0, v0, Lfc/b;->d:I

    invoke-interface {p1, p0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, LG5/Q2;->h(Lcc/I;LX4/i;)Lcc/T;

    move-result-object p0

    invoke-static {p0, p1}, Lgc/h;->e(Lcc/T;Lec/g;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    :goto_2
    new-instance p2, Lgc/d;

    invoke-interface {p1, p3}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lgc/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static c(Lcc/A;Lec/g;LX4/i;)Lgc/e;
    .locals 11

    const-string v0, "proto"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfc/k;->b:Lic/o;

    const-string v1, "methodSignature"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/c;

    if-eqz v0, :cond_0

    iget v1, v0, Lfc/c;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lfc/c;->c:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcc/A;->f:I

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lfc/c;->b:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget p0, v0, Lfc/c;->d:I

    invoke-interface {p1, p0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    invoke-static {p0, p2}, LG5/Q2;->f(Lcc/A;LX4/i;)Lcc/T;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lcc/A;->o:Ljava/util/List;

    const-string v3, "getValueParameterList(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcc/b0;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v5, p2}, LG5/Q2;->i(Lcc/b0;LX4/i;)Lcc/T;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v3, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/T;

    invoke-static {v2, p1}, Lgc/h;->e(Lcc/T;Lec/g;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, LG5/Q2;->g(Lcc/A;LX4/i;)Lcc/T;

    move-result-object p0

    invoke-static {p0, p1}, Lgc/h;->e(Lcc/T;Lec/g;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v3

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ")"

    const/4 v9, 0x0

    const-string v6, ""

    const-string v7, "("

    const/16 v10, 0x38

    invoke-static/range {v5 .. v10}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p2, Lgc/e;

    invoke-interface {p1, v1}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lgc/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static final d(Lcc/I;)Z
    .locals 2

    const-string v0, "proto"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgc/c;->a:Lec/b;

    sget-object v1, Lfc/k;->e:Lic/o;

    invoke-virtual {p0, v1}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getExtension(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Lcc/T;Lec/g;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcc/T;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcc/T;->i:I

    invoke-interface {p1, p0}, Lec/g;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgc/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)Ldb/j;
    .locals 3

    const-string v0, "strings"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lgc/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ldb/j;

    invoke-static {v0, p1}, Lgc/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lgc/f;

    move-result-object p1

    sget-object v1, Lcc/k;->Y:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/i;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lgc/h;->a:Lic/g;

    invoke-interface {v1, v2, v0}, Lic/y;->a(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lic/x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcc/k;

    invoke-direct {p0, p1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    new-instance p1, Lic/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lic/t;->a:Lic/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, Lic/t;->a:Lic/b;

    throw p0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lgc/f;
    .locals 3

    new-instance v0, Lgc/f;

    sget-object v1, Lfc/j;->h:Lcc/a;

    sget-object v2, Lgc/h;->a:Lic/g;

    invoke-virtual {v1, p0, v2}, Lic/c;->b(Ljava/io/ByteArrayInputStream;Lic/g;)Lic/b;

    move-result-object p0

    check-cast p0, Lfc/j;

    const-string v1, "parseDelimitedFrom(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lgc/f;-><init>(Lfc/j;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)Ldb/j;
    .locals 3

    const-string v0, "data"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lgc/a;->a([Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ldb/j;

    invoke-static {v0, p1}, Lgc/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lgc/f;

    move-result-object p1

    sget-object v1, Lcc/E;->l:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/i;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lgc/h;->a:Lic/g;

    invoke-interface {v1, v2, v0}, Lic/y;->a(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lic/x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcc/E;

    invoke-direct {p0, p1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    new-instance p1, Lic/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lic/t;->a:Lic/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v0, p0, Lic/t;->a:Lic/b;

    throw p0
.end method
