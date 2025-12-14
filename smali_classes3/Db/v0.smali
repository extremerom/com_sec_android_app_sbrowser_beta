.class public final LDb/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb/l;


# static fields
.field public static final synthetic e:[LAb/u;


# instance fields
.field public final a:Lyc/w;

.field public final b:LDb/B0;

.field public final c:LDb/B0;

.field public final d:LDb/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, LDb/v0;

    const-string v2, "classifier"

    const-string v3, "getClassifier()Lkotlin/reflect/KClassifier;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "arguments"

    const-string v5, "getArguments()Ljava/util/List;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, LDb/v0;->e:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lyc/w;Lsb/a;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/v0;->a:Lyc/w;

    instance-of p1, p2, LDb/B0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, LDb/B0;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    iput-object p1, p0, LDb/v0;->b:LDb/B0;

    new-instance p1, LDb/s0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, LDb/s0;-><init>(LDb/v0;I)V

    invoke-static {v0, p1}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p1

    iput-object p1, p0, LDb/v0;->c:LDb/B0;

    new-instance p1, LDb/J;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p0, p2}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p1}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p1

    iput-object p1, p0, LDb/v0;->d:LDb/B0;

    return-void
.end method


# virtual methods
.method public final a(Lyc/w;)LAb/d;
    .locals 3

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast v0, LJb/f;

    invoke-static {v0}, LDb/I0;->k(LJb/f;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lfb/n;->W(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc/Q;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LDb/v0;->a(Lyc/w;)LAb/d;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p0, LDb/C;

    invoke-static {p1}, LG5/z;->b(LAb/d;)LAb/c;

    move-result-object p1

    invoke-static {p1}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/C;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_2
    new-instance p1, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot determine classifier for array element type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-instance p0, LDb/C;

    invoke-direct {p0, v0}, LDb/C;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_4
    invoke-static {p1}, Lyc/b0;->e(Lyc/w;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, LDb/C;

    sget-object p1, LPb/c;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_1
    invoke-direct {p0, v0}, LDb/C;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_6
    new-instance p0, LDb/C;

    invoke-direct {p0, v0}, LDb/C;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_7
    instance-of p0, v0, LJb/W;

    if-eqz p0, :cond_8

    new-instance p0, LDb/x0;

    check-cast v0, LJb/W;

    invoke-direct {p0, v2, v0}, LDb/x0;-><init>(LDb/y0;LJb/W;)V

    return-object p0

    :cond_8
    instance-of p0, v0, LJb/V;

    if-nez p0, :cond_9

    return-object v2

    :cond_9
    new-instance p0, Ldb/i;

    const-string p1, "An operation is not implemented: Type alias classifiers are not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 2

    sget-object v0, LDb/v0;->e:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/v0;->d:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final c()LAb/d;
    .locals 2

    sget-object v0, LDb/v0;->e:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/v0;->c:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LAb/d;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LDb/v0;

    if-eqz v0, :cond_0

    check-cast p1, LDb/v0;

    iget-object v0, p1, LDb/v0;->a:Lyc/w;

    iget-object v1, p0, LDb/v0;->a:Lyc/w;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDb/v0;->c()LAb/d;

    move-result-object v0

    invoke-virtual {p1}, LDb/v0;->c()LAb/d;

    move-result-object v1

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDb/v0;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, LDb/v0;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LDb/v0;->a:Lyc/w;

    invoke-virtual {v0}, Lyc/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LDb/v0;->c()LAb/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LDb/v0;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LDb/F0;->a:Ljc/j;

    iget-object p0, p0, LDb/v0;->a:Lyc/w;

    invoke-static {p0}, LDb/F0;->d(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
