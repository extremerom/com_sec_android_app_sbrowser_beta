.class public abstract Ltb/i;
.super Ltb/c;
.source "SourceFile"

# interfaces
.implements Ltb/h;
.implements LAb/f;


# instance fields
.field private final arity:I

.field private final flags:I
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x1

    and-int/2addr p6, v0

    const/4 v1, 0x0

    if-ne p6, v0, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Ltb/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Ltb/i;->arity:I

    iput v1, p0, Ltb/i;->flags:I

    return-void
.end method


# virtual methods
.method public computeReflected()LAb/b;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
    .end annotation

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p0}, Ltb/y;->a(Ltb/i;)LAb/f;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltb/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ltb/i;

    invoke-virtual {p0}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ltb/i;->flags:I

    iget v3, p1, Ltb/i;->flags:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ltb/i;->arity:I

    iget v3, p1, Ltb/i;->arity:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Ltb/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ltb/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ltb/c;->getOwner()LAb/e;

    move-result-object p0

    invoke-virtual {p1}, Ltb/c;->getOwner()LAb/e;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, LAb/f;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ltb/c;->compute()LAb/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Ltb/i;->arity:I

    return p0
.end method

.method public bridge synthetic getReflected()LAb/b;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
    .end annotation

    invoke-virtual {p0}, Ltb/i;->getReflected()LAb/f;

    move-result-object p0

    return-object p0
.end method

.method public getReflected()LAb/f;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
    .end annotation

    invoke-virtual {p0}, Ltb/c;->compute()LAb/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    check-cast v0, LAb/f;

    return-object v0

    :cond_0
    new-instance p0, LDb/z0;

    invoke-direct {p0}, LDb/z0;-><init>()V

    throw p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ltb/c;->getOwner()LAb/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltb/c;->getOwner()LAb/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    invoke-virtual {p0}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Ltb/c;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ltb/c;->compute()LAb/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "<init>"

    invoke-virtual {p0}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltb/c;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
