.class public final Lk7/m;
.super LEc/g;
.source "SourceFile"


# instance fields
.field public final b:[Lk7/k;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk7/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, LEc/g;-><init>(Z)V

    new-array p1, p1, [Lk7/k;

    iput-object p1, p0, Lk7/m;->b:[Lk7/k;

    iput v0, p0, Lk7/m;->c:I

    return-void
.end method


# virtual methods
.method public final e(I)Lk7/k;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lk7/m;->b:[Lk7/k;

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus reg"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lk7/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk7/m;

    iget-object v0, p1, Lk7/m;->b:[Lk7/k;

    iget-object v2, p0, Lk7/m;->b:[Lk7/k;

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lk7/m;->f()I

    move-result p0

    invoke-virtual {p1}, Lk7/m;->f()I

    move-result p1

    if-eq p0, p1, :cond_1

    goto :goto_3

    :cond_1
    move p0, v1

    :goto_0
    if-ge p0, v3, :cond_5

    aget-object p1, v2, p0

    aget-object v4, v0, p0

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lk7/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    return v1
.end method

.method public final f()I
    .locals 5

    iget v0, p0, Lk7/m;->c:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lk7/m;->b:[Lk7/k;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lk7/m;->c:I

    move v0, v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object p0, p0, Lk7/m;->b:[Lk7/k;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lk7/k;->hashCode()I

    move-result v4

    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lk7/m;->b:[Lk7/k;

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
