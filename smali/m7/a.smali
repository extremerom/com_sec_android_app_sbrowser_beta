.class public final Lm7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lm7/c;

.field public final c:Lm7/b;

.field public d:Lm7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lm7/a;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lm7/c;Lm7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lm7/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lm7/a;->b:Lm7/c;

    iput-object p3, p0, Lm7/a;->c:Lm7/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lm7/a;->d:Lm7/b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "returnType == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "descriptor == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)Lm7/a;
    .locals 10

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    sget-object v1, Lm7/a;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm7/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "bad descriptor"

    const/16 v5, 0x28

    if-ne v3, v5, :cond_c

    move v3, v0

    move v5, v2

    :goto_0
    const/16 v6, 0x29

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x41

    if-lt v7, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_2

    add-int/2addr v5, v0

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_b

    sub-int/2addr v1, v0

    if-eq v3, v1, :cond_b

    add-int/2addr v3, v0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    new-array v1, v5, [Lm7/c;

    move v4, v0

    move v5, v2

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_6

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lm7/c;->f:Ljava/util/HashMap;

    :try_start_1
    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v3, Lm7/c;->o:Lm7/c;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v3

    :goto_3
    new-instance v4, Lm7/b;

    invoke-direct {v4, v5}, Ln7/e;-><init>(I)V

    :goto_4
    if-ge v2, v5, :cond_5

    aget-object v6, v1, v2

    invoke-virtual {v4, v2, v6}, Ln7/e;->f(ILjava/lang/Object;)V

    add-int/2addr v2, v0

    goto :goto_4

    :cond_5
    new-instance v0, Lm7/a;

    invoke-direct {v0, p0, v3, v4}, Lm7/a;-><init>(Ljava/lang/String;Lm7/c;Lm7/b;)V

    invoke-static {v0}, Lm7/a;->e(Lm7/a;)Lm7/a;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v8, v4

    :goto_5
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_7

    add-int/2addr v8, v0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    :cond_7
    const/16 v9, 0x4c

    if-ne v7, v9, :cond_9

    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v3, :cond_8

    add-int/2addr v7, v0

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v7, v8, 0x1

    :goto_6
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object v4

    aput-object v4, v1, v5

    add-int/2addr v5, v0

    move v4, v7

    goto :goto_2

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lm7/a;)Lm7/a;
    .locals 3

    sget-object v0, Lm7/a;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm7/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm7/a;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lm7/a;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lm7/a;->b:Lm7/c;

    iget-object v2, p0, Lm7/a;->b:Lm7/c;

    iget-object v2, v2, Lm7/c;->a:Ljava/lang/String;

    iget-object v1, v1, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lm7/a;->c:Lm7/b;

    iget-object v1, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    iget-object p1, p1, Lm7/a;->c:Lm7/b;

    iget-object v2, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm7/c;

    invoke-virtual {p1, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm7/c;

    iget-object v5, v5, Lm7/c;->a:Ljava/lang/String;

    iget-object v6, v6, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public final c()Lm7/b;
    .locals 9

    iget-object v0, p0, Lm7/a;->d:Lm7/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lm7/a;->c:Lm7/b;

    iget-object v1, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    new-instance v2, Lm7/b;

    invoke-direct {v2, v1}, Ln7/e;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm7/c;

    const/4 v6, 0x1

    iget v7, v5, Lm7/c;->b:I

    if-eq v7, v6, :cond_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lm7/c;->l:Lm7/c;

    move v4, v6

    :goto_1
    invoke-virtual {v2, v3, v5}, Ln7/e;->f(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    move-object v0, v2

    :cond_2
    iput-object v0, p0, Lm7/a;->d:Lm7/b;

    :cond_3
    iget-object p0, p0, Lm7/a;->d:Lm7/b;

    return-object p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm7/a;

    invoke-virtual {p0, p1}, Lm7/a;->a(Lm7/a;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lm7/a;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lm7/a;

    iget-object p1, p1, Lm7/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lm7/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lm7/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm7/a;->a:Ljava/lang/String;

    return-object p0
.end method
