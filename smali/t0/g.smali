.class public Lt0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lt0/e;

.field public static final f:Lt0/g;


# instance fields
.field public final a:Lt0/c;

.field public final b:Lt0/c;

.field public final c:Lt0/c;

.field public final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lt0/d;->c:Lt0/p;

    new-instance v1, Lt0/e;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v0, v2}, Lt0/g;-><init>(Lt0/c;Lt0/c;I)V

    sput-object v1, Lt0/g;->e:Lt0/e;

    new-instance v1, Lt0/g;

    sget-object v2, Lt0/d;->e:Lt0/k;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lt0/g;-><init>(Lt0/c;Lt0/c;I)V

    new-instance v1, Lt0/g;

    invoke-direct {v1, v2, v0, v3}, Lt0/g;-><init>(Lt0/c;Lt0/c;I)V

    sput-object v1, Lt0/g;->f:Lt0/g;

    return-void
.end method

.method public constructor <init>(Lt0/c;Lt0/c;I)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-wide v4, p1, Lt0/c;->b:J

    sget-wide v6, Lt0/b;->a:J

    invoke-static {v4, v5, v6, v7}, Lt0/b;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lt0/i;->a(Lt0/c;)Lt0/c;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    iget-wide v8, p2, Lt0/c;->b:J

    invoke-static {v8, v9, v6, v7}, Lt0/b;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lt0/i;->a(Lt0/c;)Lt0/c;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    const/4 v8, 0x0

    if-ne p3, v3, :cond_7

    iget-wide v9, p1, Lt0/c;->b:J

    invoke-static {v9, v10, v6, v7}, Lt0/b;->a(JJ)Z

    move-result p3

    iget-wide v9, p2, Lt0/c;->b:J

    invoke-static {v9, v10, v6, v7}, Lt0/b;->a(JJ)Z

    move-result v6

    if-eqz p3, :cond_2

    if-eqz v6, :cond_2

    goto :goto_4

    :cond_2
    if-nez p3, :cond_3

    if-eqz v6, :cond_7

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p2

    :goto_2
    check-cast p1, Lt0/p;

    sget-object v7, Lt0/i;->e:[F

    iget-object p1, p1, Lt0/p;->d:Lt0/r;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lt0/r;->a()[F

    move-result-object p3

    goto :goto_3

    :cond_5
    move-object p3, v7

    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lt0/r;->a()[F

    move-result-object v7

    :cond_6
    aget p1, p3, v2

    aget v6, v7, v2

    div-float/2addr p1, v6

    aget v6, p3, v1

    aget v8, v7, v1

    div-float/2addr v6, v8

    aget p3, p3, v0

    aget v7, v7, v0

    div-float/2addr p3, v7

    new-array v8, v3, [F

    aput p1, v8, v2

    aput v6, v8, v1

    aput p3, v8, v0

    :cond_7
    :goto_4
    invoke-direct {p0, p2, v4, v5, v8}, Lt0/g;-><init>(Lt0/c;Lt0/c;Lt0/c;[F)V

    return-void
.end method

.method public constructor <init>(Lt0/c;Lt0/c;Lt0/c;[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/g;->a:Lt0/c;

    iput-object p2, p0, Lt0/g;->b:Lt0/c;

    iput-object p3, p0, Lt0/g;->c:Lt0/c;

    iput-object p4, p0, Lt0/g;->d:[F

    return-void
.end method


# virtual methods
.method public a(FFFF)J
    .locals 10

    iget-object v0, p0, Lt0/g;->b:Lt0/c;

    invoke-virtual {v0, p1, p2, p3}, Lt0/c;->d(FFF)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, p1, p2, p3}, Lt0/c;->e(FFF)F

    move-result p1

    iget-object p2, p0, Lt0/g;->d:[F

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    aget p3, p2, p3

    mul-float/2addr v3, p3

    const/4 p3, 0x1

    aget p3, p2, p3

    mul-float/2addr v1, p3

    const/4 p3, 0x2

    aget p2, p2, p3

    mul-float/2addr p1, p2

    :cond_0
    move v7, p1

    move v6, v1

    move v5, v3

    iget-object v4, p0, Lt0/g;->c:Lt0/c;

    iget-object v9, p0, Lt0/g;->a:Lt0/c;

    move v8, p4

    invoke-virtual/range {v4 .. v9}, Lt0/c;->f(FFFFLt0/c;)J

    move-result-wide p0

    return-wide p0
.end method
