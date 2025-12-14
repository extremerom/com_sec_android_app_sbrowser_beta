.class public final LDb/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAb/l;


# static fields
.field public static final synthetic e:[LAb/u;


# instance fields
.field public final a:LDb/s;

.field public final b:I

.field public final c:LAb/k;

.field public final d:LDb/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, LDb/b0;

    const-string v2, "descriptor"

    const-string v3, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "annotations"

    const-string v5, "getAnnotations()Ljava/util/List;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, LDb/b0;->e:[LAb/u;

    return-void
.end method

.method public constructor <init>(LDb/s;ILAb/k;Lsb/a;)V
    .locals 1

    const-string v0, "callable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/b0;->a:LDb/s;

    iput p2, p0, LDb/b0;->b:I

    iput-object p3, p0, LDb/b0;->c:LAb/k;

    const/4 p1, 0x0

    invoke-static {p1, p4}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object p2

    iput-object p2, p0, LDb/b0;->d:LDb/B0;

    new-instance p2, LDb/Z;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LDb/Z;-><init>(LDb/b0;I)V

    invoke-static {p1, p2}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    return-void
.end method


# virtual methods
.method public final a()LJb/N;
    .locals 2

    sget-object v0, LDb/b0;->e:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/b0;->d:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/N;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, LDb/b0;->a()LJb/N;

    move-result-object p0

    instance-of v0, p0, LMb/T;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, LMb/T;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, LMb/T;->W0()LJb/b;

    move-result-object v0

    invoke-interface {v0}, LJb/b;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, LMb/n;

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lhc/f;->b:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final c()LDb/v0;
    .locals 4

    new-instance v0, LDb/v0;

    invoke-virtual {p0}, LDb/b0;->a()LJb/N;

    move-result-object v1

    invoke-interface {v1}, LJb/Y;->getType()Lyc/w;

    move-result-object v1

    const-string v2, "getType(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LDb/Z;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LDb/Z;-><init>(LDb/b0;I)V

    invoke-direct {v0, v1, v2}, LDb/v0;-><init>(Lyc/w;Lsb/a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LDb/b0;

    if-eqz v0, :cond_0

    check-cast p1, LDb/b0;

    iget-object v0, p1, LDb/b0;->a:LDb/s;

    iget-object v1, p0, LDb/b0;->a:LDb/s;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, LDb/b0;->b:I

    iget p0, p0, LDb/b0;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LDb/b0;->a:LDb/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LDb/b0;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, LDb/F0;->a:Ljc/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LDb/E0;->a:[I

    iget-object v2, p0, LDb/b0;->c:LAb/k;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parameter #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LDb/b0;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDb/b0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const-string v1, "instance parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "extension receiver parameter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LDb/b0;->a:LDb/s;

    invoke-virtual {p0}, LDb/s;->g()LJb/d;

    move-result-object p0

    instance-of v1, p0, LJb/P;

    if-eqz v1, :cond_3

    check-cast p0, LJb/P;

    invoke-static {p0}, LDb/F0;->c(LJb/P;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    instance-of v1, p0, LJb/v;

    if-eqz v1, :cond_4

    check-cast p0, LJb/v;

    invoke-static {p0}, LDb/F0;->b(LJb/v;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal callable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
