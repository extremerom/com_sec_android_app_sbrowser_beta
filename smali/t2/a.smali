.class public final Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lr2/d;

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt2/a;->c:Ljava/util/regex/Pattern;

    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt2/a;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr2/d;

    invoke-direct {v0}, Lr2/d;-><init>()V

    iput-object v0, p0, Lt2/a;->a:Lr2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lt2/a;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v1, p0, Lr2/d;->b:I

    iget v2, p0, Lr2/d;->c:I

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    iget-object v3, p0, Lr2/d;->a:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget v0, p0, Lr2/d;->b:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lr2/d;->e(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lt2/a;->c(Lr2/d;)V

    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lt2/a;->a(Lr2/d;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lr2/d;->a:[B

    iget v1, p0, Lr2/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr2/d;->b:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lr2/d;)V
    .locals 8

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    iget v1, p0, Lr2/d;->b:I

    iget-object v2, p0, Lr2/d;->a:[B

    aget-byte v3, v2, v1

    int-to-char v4, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    iget v4, p0, Lr2/d;->c:I

    add-int/lit8 v5, v1, 0x2

    if-gt v5, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_2

    aget-byte v1, v2, v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_2

    :goto_2
    add-int/lit8 v1, v5, 0x1

    if-ge v1, v4, :cond_1

    aget-byte v7, v2, v5

    int-to-char v7, v7

    if-ne v7, v3, :cond_0

    aget-byte v7, v2, v1

    int-to-char v7, v7

    if-ne v7, v6, :cond_0

    add-int/lit8 v5, v5, 0x2

    move v4, v5

    goto :goto_2

    :cond_0
    move v5, v1

    goto :goto_2

    :cond_1
    iget v1, p0, Lr2/d;->b:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lr2/d;->e(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lr2/d;->e(I)V

    goto :goto_0

    :cond_4
    return-void
.end method
