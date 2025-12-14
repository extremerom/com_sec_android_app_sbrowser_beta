.class public final LDb/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAb/v;


# static fields
.field public static final synthetic d:[LAb/u;


# instance fields
.field public final a:LJb/W;

.field public final b:LDb/B0;

.field public final c:LDb/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LDb/x0;

    const-string v2, "upperBounds"

    const-string v3, "getUpperBounds()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LDb/x0;->d:[LAb/u;

    return-void
.end method

.method public constructor <init>(LDb/y0;LJb/W;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LDb/x0;->a:LJb/W;

    new-instance v0, LDb/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object v0

    iput-object v0, p0, LDb/x0;->b:LDb/B0;

    if-nez p1, :cond_9

    invoke-interface {p2}, LJb/l;->k()LJb/l;

    move-result-object p1

    const-string p2, "getContainingDeclaration(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LJb/f;

    if-eqz v0, :cond_0

    check-cast p1, LJb/f;

    invoke-static {p1}, LDb/x0;->b(LJb/f;)LDb/C;

    move-result-object p1

    goto :goto_4

    :cond_0
    instance-of v0, p1, LJb/d;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, LJb/d;

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v0

    invoke-static {v0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, v0, LJb/f;

    if-eqz p2, :cond_1

    check-cast v0, LJb/f;

    invoke-static {v0}, LDb/x0;->b(LJb/f;)LDb/C;

    move-result-object p2

    goto :goto_3

    :cond_1
    instance-of p2, p1, Lwc/l;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lwc/l;

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lwc/l;->J()Lwc/k;

    move-result-object v0

    instance-of v2, v0, Lac/h;

    if-eqz v2, :cond_3

    check-cast v0, Lac/h;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, v0, Lac/h;->c:LOb/b;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    instance-of v2, v0, LOb/b;

    if-eqz v2, :cond_5

    move-object v1, v0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, v1, LOb/b;->a:Ljava/lang/Class;

    if-eqz v0, :cond_6

    invoke-static {v0}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object p2

    check-cast p2, LDb/C;

    :goto_3
    new-instance v0, LP7/c;

    invoke-direct {v0, p2}, LP7/c;-><init>(LDb/I;)V

    sget-object p2, Ldb/r;->a:Ldb/r;

    invoke-interface {p1, v0, p2}, LJb/l;->a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    check-cast p1, LDb/y0;

    goto :goto_5

    :cond_6
    new-instance p0, LDb/z0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Container of deserialized member is not resolved: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, LDb/z0;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Non-class callable descriptor must be deserialized: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, LDb/z0;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type parameter container: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    iput-object p1, p0, LDb/x0;->c:LDb/y0;

    return-void
.end method

.method public static b(LJb/f;)LDb/C;
    .locals 3

    invoke-static {p0}, LDb/I0;->k(LJb/f;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, LDb/C;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type parameter container is not resolved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, LDb/x0;->a:LJb/W;

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LDb/x0;

    if-eqz v0, :cond_0

    check-cast p1, LDb/x0;

    iget-object v0, p1, LDb/x0;->c:LDb/y0;

    iget-object v1, p0, LDb/x0;->c:LDb/y0;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDb/x0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, LDb/x0;->a()Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, LDb/x0;->c:LDb/y0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LDb/x0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDb/x0;->a:LJb/W;

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v1

    sget-object v2, LDb/w0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    sget-object v1, LAb/y;->OUT:LAb/y;

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object v1, LAb/y;->IN:LAb/y;

    goto :goto_0

    :cond_2
    sget-object v1, LAb/y;->INVARIANT:LAb/y;

    :goto_0
    sget-object v5, Ltb/A;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    const-string v1, "out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {p0}, LDb/x0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
