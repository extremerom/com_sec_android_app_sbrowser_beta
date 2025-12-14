.class public final Lg7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lg7/b;


# direct methods
.method public constructor <init>(IILg7/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-le p2, p1, :cond_1

    iget-boolean v0, p3, LEc/g;->a:Z

    if-nez v0, :cond_0

    iput p1, p0, Lg7/c;->a:I

    iput p2, p0, Lg7/c;->b:I

    iput-object p3, p0, Lg7/c;->c:Lg7/b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handlers.isMutable()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end <= start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lg7/c;)I
    .locals 4

    iget v0, p1, Lg7/c;->a:I

    const/4 v1, -0x1

    iget v2, p0, Lg7/c;->a:I

    if-ge v2, v0, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-le v2, v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lg7/c;->b:I

    iget v2, p1, Lg7/c;->b:I

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    if-le v0, v2, :cond_3

    return v3

    :cond_3
    iget-object p0, p0, Lg7/c;->c:Lg7/b;

    iget-object p1, p1, Lg7/c;->c:Lg7/b;

    invoke-virtual {p0, p1}, Lg7/b;->h(Lg7/b;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg7/c;

    invoke-virtual {p0, p1}, Lg7/c;->a(Lg7/c;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lg7/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lg7/c;

    invoke-virtual {p0, p1}, Lg7/c;->a(Lg7/c;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lg7/c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg7/c;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lg7/c;->c:Lg7/b;

    iget-object p0, p0, Ln7/e;->b:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
