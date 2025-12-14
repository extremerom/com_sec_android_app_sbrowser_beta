.class public final LH0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[LH0/n;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LH0/n;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, LH0/n;-><init>(J)V

    new-instance v3, LH0/n;

    const-wide v4, 0x100000000L

    invoke-direct {v3, v4, v5}, LH0/n;-><init>(J)V

    new-instance v4, LH0/n;

    const-wide v5, 0x200000000L

    invoke-direct {v4, v5, v6}, LH0/n;-><init>(J)V

    filled-new-array {v0, v3, v4}, [LH0/n;

    move-result-object v0

    sput-object v0, LH0/m;->b:[LH0/n;

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v1, v2, v0}, LG5/W2;->b(JF)J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LH0/m;->a:J

    return-void
.end method

.method public static final a(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, LH0/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LH0/m;

    iget-wide v2, p1, LH0/m;->a:J

    iget-wide p0, p0, LH0/m;->a:J

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

    iget-wide v0, p0, LH0/m;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    sget-object v0, LH0/m;->b:[LH0/n;

    const-wide v1, 0xff00000000L

    iget-wide v3, p0, LH0/m;->a:J

    and-long/2addr v1, v3

    const/16 p0, 0x20

    ushr-long/2addr v1, p0

    long-to-int p0, v1

    aget-object p0, v0, p0

    iget-wide v0, p0, LH0/n;->a:J

    const-wide/16 v5, 0x0

    invoke-static {v0, v1, v5, v6}, LH0/n;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Unspecified"

    goto :goto_0

    :cond_0
    const-wide v5, 0x100000000L

    invoke-static {v0, v1, v5, v6}, LH0/n;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, LH0/m;->a(J)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ".sp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide v5, 0x200000000L

    invoke-static {v0, v1, v5, v6}, LH0/n;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, LH0/m;->a(J)F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ".em"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
