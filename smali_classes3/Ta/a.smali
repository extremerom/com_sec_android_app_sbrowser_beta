.class public final LTa/a;
.super LXa/b;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "X-Cloud-Trace-Context"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LTa/a;->a:Ljava/util/List;

    new-instance v0, LVa/r;

    sget-object v1, LVa/r;->a:LVa/b;

    invoke-direct {v0, v1}, LVa/r;-><init>(LVa/b;)V

    return-void
.end method


# virtual methods
.method public final a(LVa/i;Lcom/google/api/client/http/HttpHeaders;LXa/a;)V
    .locals 12

    const-string p0, "spanContext"

    invoke-static {p1, p0}, Lcom/google/common/base/C;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "setter"

    invoke-static {p3, p0}, Lcom/google/common/base/C;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "carrier"

    invoke-static {p2, p0}, Lcom/google/common/base/C;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x20

    new-array p1, p1, [C

    const/4 v0, 0x0

    invoke-static {p1, v0}, LVa/c;->b([CI)V

    const/16 v1, 0x10

    invoke-static {p1, v1}, LVa/c;->b([CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-array p1, p1, [B

    const-wide/16 v2, 0x0

    long-to-int v4, v2

    int-to-byte v4, v4

    const/4 v5, 0x7

    aput-byte v4, p1, v5

    const/4 v5, 0x6

    aput-byte v4, p1, v5

    const/4 v5, 0x5

    aput-byte v4, p1, v5

    const/4 v6, 0x4

    aput-byte v4, p1, v6

    const/4 v6, 0x3

    aput-byte v4, p1, v6

    const/4 v6, 0x2

    aput-byte v4, p1, v6

    const/4 v6, 0x1

    aput-byte v4, p1, v6

    aput-byte v4, p1, v0

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    cmp-long p1, v0, v2

    const-string v4, "0"

    if-nez p1, :cond_0

    move-object p1, v4

    goto :goto_1

    :cond_0
    const/16 v7, 0xa

    if-lez p1, :cond_1

    invoke-static {v0, v1, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x40

    new-array p1, p1, [C

    ushr-long v8, v0, v6

    int-to-long v5, v5

    div-long/2addr v8, v5

    int-to-long v5, v7

    mul-long v10, v8, v5

    sub-long/2addr v0, v10

    long-to-int v0, v0

    invoke-static {v0, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    const/16 v1, 0x3f

    aput-char v0, p1, v1

    :goto_0
    cmp-long v0, v8, v2

    if-lez v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    rem-long v10, v8, v5

    long-to-int v0, v10

    invoke-static {v0, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    aput-char v0, p1, v1

    div-long/2addr v8, v5

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    rsub-int/lit8 v2, v1, 0x40

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object p1, v0

    :goto_1
    const-string v0, ";o="

    const-string v1, "X-Cloud-Trace-Context"

    invoke-static {p0, p1, v0, v4}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p2, v1, p0}, LXa/a;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
