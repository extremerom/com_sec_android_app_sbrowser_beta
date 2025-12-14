.class public final Lhd/G;
.super Lhd/Q;
.source "SourceFile"


# static fields
.field public static final e:Lhd/D;

.field public static final f:Lhd/D;

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lwd/j;

.field public final b:Ljava/util/List;

.field public final c:Lhd/D;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    sget-object v1, Lhd/D;->d:Ljava/util/regex/Pattern;

    const-string v1, "multipart/mixed"

    invoke-static {v1}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    move-result-object v1

    sput-object v1, Lhd/G;->e:Lhd/D;

    const-string v1, "multipart/alternative"

    invoke-static {v1}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    const-string v1, "multipart/digest"

    invoke-static {v1}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    const-string v1, "multipart/parallel"

    invoke-static {v1}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    const-string v1, "multipart/form-data"

    invoke-static {v1}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    move-result-object v1

    sput-object v1, Lhd/G;->f:Lhd/D;

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lhd/G;->g:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lhd/G;->h:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lhd/G;->i:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lwd/j;Lhd/D;Ljava/util/List;)V
    .locals 1

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/G;->a:Lwd/j;

    iput-object p3, p0, Lhd/G;->b:Ljava/util/List;

    sget-object p3, Lhd/D;->d:Ljava/util/regex/Pattern;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lwd/j;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    move-result-object p1

    iput-object p1, p0, Lhd/G;->c:Lhd/D;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lhd/G;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lwd/h;Z)J
    .locals 16

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    new-instance v1, Lwd/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v0, Lhd/G;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v8, v5

    :goto_1
    iget-object v9, v0, Lhd/G;->a:Lwd/j;

    sget-object v10, Lhd/G;->i:[B

    sget-object v11, Lhd/G;->h:[B

    if-ge v8, v4, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lhd/F;

    iget-object v13, v12, Lhd/F;->a:Lhd/y;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v1, v10}, Lwd/h;->L([B)Lwd/h;

    invoke-interface {v1, v9}, Lwd/h;->D(Lwd/j;)Lwd/h;

    invoke-interface {v1, v11}, Lwd/h;->L([B)Lwd/h;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lhd/y;->size()I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_1

    invoke-virtual {v13, v10}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    move-result-object v14

    sget-object v15, Lhd/G;->g:[B

    invoke-interface {v14, v15}, Lwd/h;->L([B)Lwd/h;

    move-result-object v14

    invoke-virtual {v13, v10}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    move-result-object v14

    invoke-interface {v14, v11}, Lwd/h;->L([B)Lwd/h;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    iget-object v9, v12, Lhd/F;->b:Lhd/Q;

    invoke-virtual {v9}, Lhd/Q;->contentType()Lhd/D;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v12, "Content-Type: "

    invoke-interface {v1, v12}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    move-result-object v12

    iget-object v10, v10, Lhd/D;->a:Ljava/lang/String;

    invoke-interface {v12, v10}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    move-result-object v10

    invoke-interface {v10, v11}, Lwd/h;->L([B)Lwd/h;

    :cond_2
    invoke-virtual {v9}, Lhd/Q;->contentLength()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v10, v12, v14

    if-eqz v10, :cond_3

    const-string v10, "Content-Length: "

    invoke-interface {v1, v10}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    move-result-object v10

    invoke-interface {v10, v12, v13}, Lwd/h;->O(J)Lwd/h;

    move-result-object v10

    invoke-interface {v10, v11}, Lwd/h;->L([B)Lwd/h;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lwd/g;->a()V

    return-wide v14

    :cond_4
    :goto_3
    invoke-interface {v1, v11}, Lwd/h;->L([B)Lwd/h;

    if-eqz p2, :cond_5

    add-long/2addr v6, v12

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v1}, Lhd/Q;->writeTo(Lwd/h;)V

    :goto_4
    invoke-interface {v1, v11}, Lwd/h;->L([B)Lwd/h;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v1, v10}, Lwd/h;->L([B)Lwd/h;

    invoke-interface {v1, v9}, Lwd/h;->D(Lwd/j;)Lwd/h;

    invoke-interface {v1, v10}, Lwd/h;->L([B)Lwd/h;

    invoke-interface {v1, v11}, Lwd/h;->L([B)Lwd/h;

    if-eqz p2, :cond_7

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-wide v0, v2, Lwd/g;->b:J

    add-long/2addr v6, v0

    invoke-virtual {v2}, Lwd/g;->a()V

    :cond_7
    return-wide v6
.end method

.method public final contentLength()J
    .locals 4

    iget-wide v0, p0, Lhd/G;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lhd/G;->a(Lwd/h;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lhd/G;->d:J

    :cond_0
    return-wide v0
.end method

.method public final contentType()Lhd/D;
    .locals 0

    iget-object p0, p0, Lhd/G;->c:Lhd/D;

    return-object p0
.end method

.method public final writeTo(Lwd/h;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhd/G;->a(Lwd/h;Z)J

    return-void
.end method
