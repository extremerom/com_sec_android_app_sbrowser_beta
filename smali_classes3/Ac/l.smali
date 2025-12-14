.class public final LAc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LAc/l;

.field public static final b:LAc/e;

.field public static final c:LAc/a;

.field public static final d:LAc/i;

.field public static final e:LAc/i;

.field public static final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LAc/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LAc/l;->a:LAc/l;

    sget-object v0, LAc/e;->a:LAc/e;

    sput-object v0, LAc/l;->b:LAc/e;

    new-instance v0, LAc/a;

    sget-object v1, LAc/b;->ERROR_CLASS:LAc/b;

    invoke-virtual {v1}, LAc/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown class"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhc/f;->h(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/a;-><init>(Lhc/f;)V

    sput-object v0, LAc/l;->c:LAc/a;

    sget-object v0, LAc/k;->CYCLIC_SUPERTYPES:LAc/k;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v0

    sput-object v0, LAc/l;->d:LAc/i;

    sget-object v0, LAc/k;->ERROR_PROPERTY_TYPE:LAc/k;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v0

    sput-object v0, LAc/l;->e:LAc/i;

    new-instance v0, LAc/f;

    invoke-direct {v0}, LAc/f;-><init>()V

    invoke-static {v0}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LAc/l;->f:Ljava/util/Set;

    return-void
.end method

.method public static final varargs a(LAc/h;Z[Ljava/lang/String;)LAc/g;
    .locals 2

    const-string v0, "kind"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, LAc/m;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p0, p2}, LAc/g;-><init>(LAc/h;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, LAc/g;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p0, p2}, LAc/g;-><init>(LAc/h;[Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static final varargs b(LAc/h;[Ljava/lang/String;)LAc/g;
    .locals 1

    const-string v0, "kind"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, LAc/l;->a(LAc/h;Z[Ljava/lang/String;)LAc/g;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs c(LAc/k;[Ljava/lang/String;)LAc/i;
    .locals 3

    const-string v0, "kind"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfb/v;->a:Lfb/v;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "formatParams"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v1}, LAc/l;->d(LAc/k;[Ljava/lang/String;)LAc/j;

    move-result-object v1

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, LAc/l;->e(LAc/k;Ljava/util/List;Lyc/L;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d(LAc/k;[Ljava/lang/String;)LAc/j;
    .locals 2

    const-string v0, "kind"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LAc/j;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1}, LAc/j;-><init>(LAc/k;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs e(LAc/k;Ljava/util/List;Lyc/L;[Ljava/lang/String;)LAc/i;
    .locals 8

    const-string v0, "kind"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LAc/i;

    sget-object v1, LAc/h;->ERROR_TYPE_SCOPE:LAc/h;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LAc/l;->b(LAc/h;[Ljava/lang/String;)LAc/g;

    move-result-object v3

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, LAc/i;-><init>(Lyc/L;LAc/g;LAc/k;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(LJb/l;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, LAc/a;

    if-nez v0, :cond_0

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v0, v0, LAc/a;

    if-nez v0, :cond_0

    sget-object v0, LAc/l;->b:LAc/e;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
