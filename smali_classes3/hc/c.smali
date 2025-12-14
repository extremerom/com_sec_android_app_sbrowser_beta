.class public final Lhc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lhc/c;


# instance fields
.field public final a:Lhc/d;

.field public transient b:Lhc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhc/c;

    const-string v1, ""

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhc/c;->c:Lhc/c;

    return-void
.end method

.method public constructor <init>(Lhc/d;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/c;->a:Lhc/d;

    return-void
.end method

.method public constructor <init>(Lhc/d;Lhc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/c;->a:Lhc/d;

    iput-object p2, p0, Lhc/c;->b:Lhc/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhc/d;

    invoke-direct {v0, p0, p1}, Lhc/d;-><init>(Lhc/c;Ljava/lang/String;)V

    iput-object v0, p0, Lhc/c;->a:Lhc/d;

    return-void
.end method


# virtual methods
.method public final a(Lhc/f;)Lhc/c;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhc/c;

    iget-object v1, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1, p1}, Lhc/d;->a(Lhc/f;)Lhc/d;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lhc/c;-><init>(Lhc/d;Lhc/c;)V

    return-object v0
.end method

.method public final b()Lhc/c;
    .locals 4

    iget-object v0, p0, Lhc/c;->b:Lhc/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->c()Z

    move-result v1

    const-string v2, "root"

    if-nez v1, :cond_3

    new-instance v1, Lhc/c;

    iget-object v3, v0, Lhc/d;->c:Lhc/d;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lhc/d;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lhc/d;->b()V

    iget-object v3, v0, Lhc/d;->c:Lhc/d;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {v1, v3}, Lhc/c;-><init>(Lhc/d;)V

    iput-object v1, p0, Lhc/c;->b:Lhc/c;

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lhc/f;)Z
    .locals 8

    const-string v0, "segment"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lhc/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    const/4 v2, 0x6

    iget-object v3, p0, Lhc/d;->a:Ljava/lang/String;

    invoke-static {v3, v0, v1, v1, v2}, LKc/k;->u(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    move v5, v0

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v7

    const-string p1, "asString(...)"

    invoke-static {v7, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v5, p1, :cond_2

    iget-object v6, p0, Lhc/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, LKc/r;->j(IIZILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhc/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhc/c;

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
