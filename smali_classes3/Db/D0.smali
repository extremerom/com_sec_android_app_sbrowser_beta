.class public LDb/D0;
.super Ltb/y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j(Ltb/c;)LDb/I;
    .locals 1

    invoke-virtual {p0}, Ltb/c;->getOwner()LAb/e;

    move-result-object p0

    instance-of v0, p0, LDb/I;

    if-eqz v0, :cond_0

    check-cast p0, LDb/I;

    goto :goto_0

    :cond_0
    sget-object p0, LDb/d;->b:LDb/d;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ltb/i;)LAb/f;
    .locals 6

    new-instance p0, LDb/L;

    invoke-static {p1}, LDb/D0;->j(Ltb/c;)LDb/I;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltb/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v5

    const-string p1, "container"

    invoke-static {v1, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {v2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "signature"

    invoke-static {v3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LDb/L;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;LJb/v;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Class;)LAb/c;
    .locals 0

    invoke-static {p1}, LDb/c;->a(Ljava/lang/Class;)LDb/C;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Class;)LAb/e;
    .locals 2

    sget-object p0, LDb/c;->a:LA7/h;

    const-string p0, "jClass"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LDb/c;->b:LA7/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LA7/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, LA7/h;->a:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    check-cast v1, LAb/e;

    return-object v1
.end method

.method public final d(Ltb/n;)LAb/i;
    .locals 3

    new-instance p0, LDb/P;

    invoke-static {p1}, LDb/D0;->j(Ltb/c;)LDb/I;

    move-result-object v0

    invoke-virtual {p1}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltb/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, LDb/P;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e(LUc/k;)LAb/p;
    .locals 3

    new-instance p0, LDb/e0;

    invoke-static {p1}, LDb/D0;->j(Ltb/c;)LDb/I;

    move-result-object v0

    invoke-virtual {p1}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltb/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, LDb/e0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f(Ltb/p;)LAb/r;
    .locals 3

    new-instance p0, LDb/h0;

    invoke-static {p1}, LDb/D0;->j(Ltb/c;)LDb/I;

    move-result-object v0

    invoke-virtual {p1}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltb/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, LDb/h0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g(Ltb/q;)LAb/t;
    .locals 2

    new-instance p0, LDb/k0;

    invoke-static {p1}, LDb/D0;->j(Ltb/c;)LDb/I;

    move-result-object v0

    invoke-virtual {p1}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LDb/k0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(Ltb/h;)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lgc/h;->a:Lic/g;

    const-string v3, "strings"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lgc/a;->a([Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lgc/h;->a:Lic/g;

    invoke-static {v3, v1}, Lgc/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lgc/f;

    move-result-object v6

    sget-object v1, Lcc/A;->w:Lcc/a;

    sget-object v2, Lgc/h;->a:Lic/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-direct {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v4, v2}, Lic/y;->a(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/b;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lic/x;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v5, v1

    check-cast v5, Lcc/A;

    new-instance v8, Lec/f;

    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v1

    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {v8, v2, v1}, Lec/f;-><init>(Z[I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v7, LX4/i;

    iget-object v0, v5, Lcc/A;->p:Lcc/Z;

    const-string v1, "getTypeTable(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0}, LX4/i;-><init>(Lcc/Z;)V

    sget-object v9, LCb/a;->a:LCb/a;

    invoke-static/range {v4 .. v9}, LDb/I0;->f(Ljava/lang/Class;Lic/m;Lec/g;LX4/i;Lec/a;Lsb/n;)LJb/b;

    move-result-object v0

    check-cast v0, LMb/M;

    new-instance v1, LDb/L;

    sget-object v2, LDb/d;->b:LDb/d;

    invoke-direct {v1, v2, v0}, LDb/L;-><init>(LDb/I;LJb/v;)V

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v1}, LDb/I0;->b(Ljava/lang/Object;)LDb/L;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object p0, LDb/F0;->a:Ljc/j;

    invoke-virtual {v0}, LDb/L;->m()LJb/v;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, LDb/F0;->a(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    const-string v1, "getValueParameters(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    sget-object v5, LDb/b;->i:LDb/b;

    const-string v4, ")"

    const/16 v6, 0x30

    const-string v2, ", "

    const-string v3, "("

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LJb/b;->p()Lyc/w;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-super {p0, p1}, Ltb/y;->h(Ltb/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    new-instance p1, Lic/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lic/t;->a:Lic/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v1, p0, Lic/t;->a:Lic/b;

    throw p0
.end method

.method public final i(Ltb/m;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, LDb/D0;->h(Ltb/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
