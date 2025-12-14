.class public abstract LVa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x200

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "0123456789abcdef"

    const/16 v4, 0x100

    if-ge v2, v4, :cond_0

    ushr-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v2

    or-int/lit16 v4, v2, 0x100

    and-int/lit8 v5, v2, 0xf

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v0, LVa/c;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v4, v1

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static a(B[CI)V
    .locals 2

    and-int/lit16 p0, p0, 0xff

    sget-object v0, LVa/c;->a:[C

    aget-char v1, v0, p0

    aput-char v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    or-int/lit16 p0, p0, 0x100

    aget-char p0, v0, p0

    aput-char p0, p1, p2

    return-void
.end method

.method public static b([CI)V
    .locals 4

    const-wide/16 v0, 0x0

    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-static {v2, p0, p1}, LVa/c;->a(B[CI)V

    long-to-int v2, v0

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0x2

    invoke-static {v2, p0, v3}, LVa/c;->a(B[CI)V

    long-to-int v2, v0

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0x4

    invoke-static {v2, p0, v3}, LVa/c;->a(B[CI)V

    long-to-int v2, v0

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0x6

    invoke-static {v2, p0, v3}, LVa/c;->a(B[CI)V

    long-to-int v2, v0

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0x8

    invoke-static {v2, p0, v3}, LVa/c;->a(B[CI)V

    long-to-int v2, v0

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0xa

    invoke-static {v2, p0, v3}, LVa/c;->a(B[CI)V

    long-to-int v2, v0

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0xc

    invoke-static {v2, p0, v3}, LVa/c;->a(B[CI)V

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 p1, p1, 0xe

    invoke-static {v0, p0, p1}, LVa/c;->a(B[CI)V

    return-void
.end method
