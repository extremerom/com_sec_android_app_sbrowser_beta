.class public final Ln7/g;
.super LEc/g;
.source "SourceFile"


# static fields
.field public static final e:Ln7/g;


# instance fields
.field public b:[I

.field public c:I

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln7/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln7/g;-><init>(I)V

    sput-object v0, Ln7/g;->e:Ln7/g;

    iput-boolean v1, v0, LEc/g;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LEc/g;-><init>(Z)V

    :try_start_0
    new-array p1, p1, [I

    iput-object p1, p0, Ln7/g;->b:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput p1, p0, Ln7/g;->c:I

    iput-boolean v0, p0, Ln7/g;->d:Z

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(I)V
    .locals 6

    invoke-virtual {p0}, LEc/g;->d()V

    iget v0, p0, Ln7/g;->c:I

    iget-object v1, p0, Ln7/g;->b:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-static {v0, v2, v4, v5}, LV0/c;->B(IIII)I

    move-result v2

    new-array v2, v2, [I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ln7/g;->b:[I

    :cond_0
    iget-object v0, p0, Ln7/g;->b:[I

    iget v1, p0, Ln7/g;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln7/g;->c:I

    aput p1, v0, v1

    iget-boolean v4, p0, Ln7/g;->d:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-lt p1, v0, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Ln7/g;->d:Z

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln7/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln7/g;

    iget-boolean v1, p0, Ln7/g;->d:Z

    iget-boolean v3, p1, Ln7/g;->d:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ln7/g;->c:I

    iget v3, p1, Ln7/g;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    iget v3, p0, Ln7/g;->c:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Ln7/g;->b:[I

    aget v3, v3, v1

    iget-object v4, p1, Ln7/g;->b:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final f(I)I
    .locals 1

    iget v0, p0, Ln7/g;->c:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Ln7/g;->b:[I

    aget p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n < 0"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n >= size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(II)V
    .locals 1

    invoke-virtual {p0}, LEc/g;->d()V

    iget v0, p0, Ln7/g;->c:I

    if-ge p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ln7/g;->b:[I

    aput p2, v0, p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Ln7/g;->d:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-ltz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "n >= size()"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ln7/g;->c:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Ln7/g;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Ln7/g;->c:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ln7/g;->c:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Ln7/g;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
