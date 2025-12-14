.class public final LA5/n;
.super LA5/p;
.source "SourceFile"


# instance fields
.field public final d:[C


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, LA5/m;

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "base16()"

    invoke-direct {v0, v2, v1}, LA5/m;-><init>(Ljava/lang/String;[C)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LA5/p;-><init>(LA5/m;Ljava/lang/Character;)V

    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, LA5/n;->d:[C

    iget-object v0, v0, LA5/m;->b:[C

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LA5/n;->d:[C

    ushr-int/lit8 v3, v1, 0x4

    aget-char v3, v0, v3

    aput-char v3, v2, v1

    or-int/lit16 v3, v1, 0x100

    and-int/lit8 v4, v1, 0xf

    aget-char v4, v0, v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, LA5/t;->e(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, LA5/n;->d:[C

    aget-char v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    or-int/lit16 v0, v0, 0x100

    aget-char v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
