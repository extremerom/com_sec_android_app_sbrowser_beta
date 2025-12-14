.class public abstract Lzd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyd/a;

.field public static final e:[B


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lyd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyd/a;->LENIENT:Lyd/a;

    sput-object v0, Lzd/c;->d:Lyd/a;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lzd/c;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(IILyd/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lzd/c;->a:I

    iput p2, p0, Lzd/c;->b:I

    const-string p1, "codecPolicy"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lzd/c;->c:Lyd/a;

    return-void
.end method

.method public static a(ILzd/b;)[B
    .locals 5

    iget-object v0, p1, Lzd/b;->b:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, p1, Lzd/b;->b:[B

    iput v1, p1, Lzd/b;->c:I

    iput v1, p1, Lzd/b;->d:I

    goto :goto_2

    :cond_0
    iget v2, p1, Lzd/b;->c:I

    add-int/2addr v2, p0

    array-length p0, v0

    sub-int p0, v2, p0

    if-lez p0, :cond_5

    array-length p0, v0

    mul-int/lit8 p0, p0, 0x2

    const/high16 v0, -0x80000000

    add-int v3, p0, v0

    add-int v4, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    if-gez v3, :cond_1

    move p0, v2

    :cond_1
    add-int/2addr v0, p0

    const/16 v3, -0x9

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-lez v0, :cond_4

    if-ltz v2, :cond_3

    const p0, 0x7ffffff7

    if-le v2, p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, p0

    :goto_0
    move p0, v2

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to allocate array size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    new-array p0, p0, [B

    iget-object v0, p1, Lzd/b;->b:[B

    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p0, p1, Lzd/b;->b:[B

    return-object p0

    :cond_5
    :goto_2
    iget-object p0, p1, Lzd/b;->b:[B

    return-object p0
.end method

.method public static b([BILzd/b;)V
    .locals 3

    iget-object v0, p2, Lzd/b;->b:[B

    if-eqz v0, :cond_0

    iget v0, p2, Lzd/b;->c:I

    iget v1, p2, Lzd/b;->d:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p2, Lzd/b;->b:[B

    iget v1, p2, Lzd/b;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p2, Lzd/b;->d:I

    add-int/2addr p0, p1

    iput p0, p2, Lzd/b;->d:I

    iget p1, p2, Lzd/b;->c:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x0

    iput-object p0, p2, Lzd/b;->b:[B

    :cond_0
    return-void
.end method
