.class public abstract LDb/q0;
.super LDb/m0;
.source "SourceFile"

# interfaces
.implements LAb/g;


# static fields
.field public static final synthetic e:[LAb/u;


# instance fields
.field public final c:LDb/B0;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LDb/q0;

    const-string v2, "descriptor"

    const-string v3, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LDb/q0;->e:[LAb/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LDb/s;-><init>()V

    new-instance v0, LDb/p0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LDb/p0;-><init>(LDb/q0;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object v0

    iput-object v0, p0, LDb/q0;->c:LDb/B0;

    sget-object v0, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v1, LDb/p0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LDb/p0;-><init>(LDb/q0;I)V

    invoke-static {v0, v1}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v0

    iput-object v0, p0, LDb/q0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()LEb/g;
    .locals 0

    iget-object p0, p0, LDb/q0;->d:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LEb/g;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LDb/q0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    check-cast p1, LDb/q0;

    invoke-virtual {p1}, LDb/m0;->l()LDb/r0;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()LJb/d;
    .locals 2

    sget-object v0, LDb/q0;->e:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/q0;->c:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LMb/L;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<set-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    iget-object p0, p0, LDb/r0;->d:Ljava/lang/String;

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, LV0/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {p0}, LDb/r0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k()LJb/O;
    .locals 2

    sget-object v0, LDb/q0;->e:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/q0;->c:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LMb/L;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setter of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
