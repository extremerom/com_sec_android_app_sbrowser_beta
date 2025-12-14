.class public final LPb/D;
.super LPb/A;
.source "SourceFile"

# interfaces
.implements LYb/d;


# instance fields
.field public final a:Ljava/lang/reflect/WildcardType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPb/D;->a:Ljava/lang/reflect/WildcardType;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, LPb/D;->a:Ljava/lang/reflect/WildcardType;

    return-object p0
.end method

.method public final c()LPb/A;
    .locals 4

    iget-object p0, p0, LPb/D;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_a

    array-length v2, v1

    if-gt v2, v3, :cond_a

    array-length p0, v1

    if-ne p0, v3, :cond_4

    invoke-static {v1}, Lfb/l;->z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "single(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, LPb/y;

    invoke-direct {p0, v1}, LPb/y;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_3

    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    new-instance v0, LPb/D;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, LPb/D;-><init>(Ljava/lang/reflect/WildcardType;)V

    :goto_0
    move-object p0, v0

    goto :goto_3

    :cond_2
    new-instance v0, LPb/p;

    invoke-direct {v0, p0}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v0, LPb/h;

    invoke-direct {v0, p0}, LPb/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_4
    array-length p0, v0

    const/4 v1, 0x0

    if-ne p0, v3, :cond_9

    invoke-static {v0}, Lfb/l;->z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_5

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p0, LPb/y;

    invoke-direct {p0, v1}, LPb/y;-><init>(Ljava/lang/Class;)V

    goto :goto_3

    :cond_5
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_8

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    new-instance v0, LPb/D;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, LPb/D;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_0

    :cond_7
    new-instance v0, LPb/p;

    invoke-direct {v0, p0}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_8
    :goto_2
    new-instance v0, LPb/h;

    invoke-direct {v0, p0}, LPb/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_9
    move-object p0, v1

    :goto_3
    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wildcard types with many bounds are not yet supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
