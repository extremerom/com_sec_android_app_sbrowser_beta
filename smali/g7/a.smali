.class public final Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ll7/u;

.field public final b:I


# direct methods
.method public constructor <init>(Ll7/u;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    iput p2, p0, Lg7/a;->b:I

    iput-object p1, p0, Lg7/a;->a:Ll7/u;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lg7/a;)I
    .locals 2

    iget v0, p1, Lg7/a;->b:I

    iget v1, p0, Lg7/a;->b:I

    if-ge v1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lg7/a;->a:Ll7/u;

    iget-object p1, p1, Lg7/a;->a:Ll7/u;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg7/a;

    invoke-virtual {p0, p1}, Lg7/a;->a(Lg7/a;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lg7/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lg7/a;

    invoke-virtual {p0, p1}, Lg7/a;->a(Lg7/a;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lg7/a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lg7/a;->a:Ll7/u;

    invoke-virtual {p0}, Ll7/u;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
