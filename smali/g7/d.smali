.class public final Lg7/d;
.super Ln7/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final c:Lg7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg7/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln7/e;-><init>(I)V

    sput-object v0, Lg7/d;->c:Lg7/d;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lg7/d;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    iget-object v2, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/c;

    invoke-virtual {p1, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg7/c;

    invoke-virtual {v5, v6}, Lg7/c;->a(Lg7/c;)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_1
    return v0
.end method
