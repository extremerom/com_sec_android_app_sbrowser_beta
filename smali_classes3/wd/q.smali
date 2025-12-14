.class public final Lwd/q;
.super Lfb/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final a:[Lwd/j;

.field public final b:[I


# direct methods
.method public constructor <init>([Lwd/j;[I)V
    .locals 0

    invoke-direct {p0}, Lfb/e;-><init>()V

    iput-object p1, p0, Lwd/q;->a:[Lwd/j;

    iput-object p2, p0, Lwd/q;->b:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lwd/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lwd/j;

    invoke-super {p0, p1}, Lfb/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lwd/q;->a:[Lwd/j;

    array-length p0, p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lwd/q;->a:[Lwd/j;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lwd/j;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lwd/j;

    invoke-super {p0, p1}, Lfb/e;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lwd/j;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lwd/j;

    invoke-super {p0, p1}, Lfb/e;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
