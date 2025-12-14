.class public final Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J

.field public static final c:J

.field public static final synthetic d:I


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, LG5/A;->a(FF)J

    move-result-wide v0

    sput-wide v0, Lr0/b;->b:J

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0, v0}, LG5/A;->a(FF)J

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0, v0}, LG5/A;->a(FF)J

    move-result-wide v0

    sput-wide v0, Lr0/b;->c:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr0/b;->a:J

    return-void
.end method

.method public static final a(J)F
    .locals 2

    sget-wide v0, Lr0/b;->c:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Offset is unspecified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(J)F
    .locals 2

    sget-wide v0, Lr0/b;->c:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Offset is unspecified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(JJ)J
    .locals 2

    invoke-static {p0, p1}, Lr0/b;->a(J)F

    move-result v0

    invoke-static {p2, p3}, Lr0/b;->a(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, p1}, Lr0/b;->b(J)F

    move-result p0

    invoke-static {p2, p3}, Lr0/b;->b(J)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, LG5/A;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(JJ)J
    .locals 2

    invoke-static {p0, p1}, Lr0/b;->a(J)F

    move-result v0

    invoke-static {p2, p3}, Lr0/b;->a(J)F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {p0, p1}, Lr0/b;->b(J)F

    move-result p0

    invoke-static {p2, p3}, Lr0/b;->b(J)F

    move-result p1

    add-float/2addr p1, p0

    invoke-static {v1, p1}, LG5/A;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final e(JF)J
    .locals 1

    invoke-static {p0, p1}, Lr0/b;->a(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, Lr0/b;->b(J)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {v0, p0}, LG5/A;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lr0/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lr0/b;

    iget-wide v2, p1, Lr0/b;->a:J

    iget-wide p0, p0, Lr0/b;->a:J

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lr0/b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lr0/b;->a:J

    sget-wide v2, Lr0/b;->c:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Offset("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lr0/b;->a(J)F

    move-result v2

    invoke-static {v2}, LG5/z;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lr0/b;->b(J)F

    move-result v0

    invoke-static {v0}, LG5/z;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Offset.Unspecified"

    :goto_0
    return-object p0
.end method
