.class public final Lc2/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:LA9/b;


# direct methods
.method public constructor <init>()V
    .locals 8

    sget v0, LLc/a;->c:I

    sget-object v0, LLc/c;->SECONDS:LLc/c;

    const/16 v1, 0x14

    invoke-static {v1, v0}, LOd/b;->h(ILLc/c;)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-static {v3, v0}, LOd/b;->h(ILLc/c;)J

    move-result-wide v4

    invoke-static {v3, v0}, LOd/b;->h(ILLc/c;)J

    move-result-wide v6

    sget-object v0, Lc2/O;->a:LA9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lc2/Q;->a:J

    iput-wide v4, p0, Lc2/Q;->b:J

    iput-wide v6, p0, Lc2/Q;->c:J

    iput-object v0, p0, Lc2/Q;->d:LA9/b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc2/Q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc2/Q;

    iget-wide v3, p1, Lc2/Q;->a:J

    sget v1, LLc/a;->c:I

    iget-wide v5, p0, Lc2/Q;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_3

    iget-wide v3, p0, Lc2/Q;->b:J

    iget-wide v5, p1, Lc2/Q;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lc2/Q;->c:J

    iget-wide v5, p1, Lc2/Q;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object p0, p0, Lc2/Q;->d:LA9/b;

    iget-object p1, p1, Lc2/Q;->d:LA9/b;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 4

    sget v0, LLc/a;->c:I

    iget-wide v0, p0, Lc2/Q;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lc2/Q;->b:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-wide v2, p0, Lc2/Q;->c:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object p0, p0, Lc2/Q;->d:LA9/b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lc2/Q;->a:J

    invoke-static {v0, v1}, LLc/a;->h(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lc2/Q;->b:J

    invoke-static {v1, v2}, LLc/a;->h(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lc2/Q;->c:J

    invoke-static {v2, v3}, LLc/a;->h(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeoutOptions(initialTimeout="

    const-string v4, ", additionalTime="

    const-string v5, ", idleTimeout="

    invoke-static {v3, v0, v4, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc2/Q;->d:LA9/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
