.class public final Lk7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;
.implements Ln7/h;
.implements Ljava/lang/Comparable;


# static fields
.field public static final c:Ljava/util/HashMap;

.field public static final d:Lk7/j;


# instance fields
.field public final a:I

.field public final b:Lm7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lk7/k;->c:Ljava/util/HashMap;

    new-instance v0, Lk7/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lk7/k;->d:Lk7/j;

    return-void
.end method

.method public constructor <init>(ILm7/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lk7/k;->a:I

    iput-object p2, p0, Lk7/k;->b:Lm7/d;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reg < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(ILm7/d;)Lk7/k;
    .locals 2

    sget-object v0, Lk7/k;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk7/k;->d:Lk7/j;

    iput p0, v1, Lk7/j;->a:I

    iput-object p1, v1, Lk7/j;->b:Lm7/d;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/k;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lk7/k;

    iget p1, v1, Lk7/j;->a:I

    iget-object v1, v1, Lk7/j;->b:Lm7/d;

    invoke-direct {p0, p1, v1}, Lk7/k;-><init>(ILm7/d;)V

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lk7/k;->h(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {p0}, Lm7/d;->c()I

    move-result p0

    return p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lk7/k;

    iget v0, p1, Lk7/k;->a:I

    iget v1, p0, Lk7/k;->a:I

    if-ge v1, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {p0}, Lm7/d;->getType()Lm7/c;

    move-result-object p0

    iget-object p1, p1, Lk7/k;->b:Lm7/d;

    invoke-interface {p1}, Lm7/d;->getType()Lm7/c;

    move-result-object p1

    iget-object p0, p0, Lm7/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(ILm7/d;)Z
    .locals 1

    iget v0, p0, Lk7/k;->a:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {p0}, Lm7/d;->getType()Lm7/c;

    move-result-object p0

    invoke-virtual {p0}, Lm7/c;->f()I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lk7/k;

    if-nez v0, :cond_1

    instance-of v0, p1, Lk7/j;

    if-eqz v0, :cond_0

    check-cast p1, Lk7/j;

    iget v0, p1, Lk7/j;->a:I

    iget-object p1, p1, Lk7/j;->b:Lm7/d;

    invoke-virtual {p0, v0, p1}, Lk7/k;->d(ILm7/d;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lk7/k;

    iget v0, p1, Lk7/k;->a:I

    iget-object p1, p1, Lk7/k;->b:Lm7/d;

    invoke-virtual {p0, v0, p1}, Lk7/k;->d(ILm7/d;)Z

    move-result p0

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lk7/k;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Lm7/c;
    .locals 0

    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {p0}, Lm7/d;->getType()Lm7/c;

    move-result-object p0

    return-object p0
.end method

.method public final h(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lk7/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {p0}, Lm7/d;->getType()Lm7/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eq v1, p0, :cond_2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    instance-of v1, p0, Ll7/t;

    if-eqz v1, :cond_0

    check-cast p0, Ll7/t;

    invoke-virtual {p0}, Ll7/t;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of p1, p0, Ll7/a;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ln7/h;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lk7/k;->b:Lm7/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lk7/k;->a:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk7/k;->h(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
