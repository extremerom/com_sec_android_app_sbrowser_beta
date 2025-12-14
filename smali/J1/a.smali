.class public final LJ1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/a;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LJ1/a;->a:J

    iput-wide p3, p0, LJ1/a;->b:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)J
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-wide p0, p0, LJ1/a;->b:J

    goto :goto_1

    :cond_1
    iget-wide p0, p0, LJ1/a;->a:J

    :goto_1
    return-wide p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LJ1/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LJ1/a;

    iget-wide v3, p1, LJ1/a;->a:J

    iget-wide v5, p0, LJ1/a;->a:J

    invoke-static {v5, v6, v3, v4}, Ls0/b;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, LJ1/a;->b:J

    iget-wide p0, p1, LJ1/a;->b:J

    invoke-static {v3, v4, p0, p1}, Ls0/b;->b(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Ls0/b;->h:I

    iget-wide v0, p0, LJ1/a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LJ1/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, LJ1/a;->a:J

    invoke-static {v0, v1}, Ls0/b;->g(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LJ1/a;->b:J

    invoke-static {v1, v2}, Ls0/b;->g(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DayNightColorProvider(day="

    const-string v2, ", night="

    const-string v3, ")"

    invoke-static {v1, v0, v2, p0, v3}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
