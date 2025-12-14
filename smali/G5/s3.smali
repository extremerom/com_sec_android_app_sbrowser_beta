.class public abstract LG5/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Landroid/content/pm/PackageInfo;


# direct methods
.method public static final a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V
    .locals 8

    const-string v0, "titleBar"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const v0, -0x4547632

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    sget-object v0, LR1/d;->f:La0/L0;

    const v1, 0x36e4ca08

    invoke-virtual {p4, v1}, La0/q;->R(I)V

    invoke-virtual {p4, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR1/w;

    invoke-static {p4}, LV9/a;->d(La0/m;)Z

    move-result v2

    iput-boolean v2, v1, LR1/w;->d:Z

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, La0/q;->p(Z)V

    invoke-virtual {v0, v1}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v0

    new-instance v7, LX1/g;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, LX1/g;-><init>(LV9/a;Li0/a;Lsb/n;Lsb/n;I)V

    const v1, -0x654c92f2

    invoke-static {p4, v1, v7}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p4, v2}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance v7, LW1/e;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, LW1/e;-><init>(LV9/a;Lsb/n;Lsb/n;Li0/a;II)V

    iput-object v7, p4, La0/i0;->d:Lsb/n;

    :cond_0
    return-void
.end method

.method public static final b(JF)J
    .locals 1

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v0

    div-float/2addr v0, p2

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result p0

    div-float/2addr p0, p2

    invoke-static {v0, p0}, LN/i;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(JJ)F
    .locals 2

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v0

    invoke-static {p2, p3}, LG5/s3;->h(J)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result p0

    invoke-static {p2, p3}, LG5/s3;->i(J)F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    return p1
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DIAGMON_SDK"

    const-string v1, "DMA Client is not exist"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static final e(J)J
    .locals 3

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v0

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result v0

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {p0, p1, v0}, LG5/s3;->b(JF)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the direction of a 0-length vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, LG5/s3;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, LG5/s3;->g(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, LG5/s3;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    sput-object p0, LG5/s3;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    sget-object p0, LG5/s3;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    sget-object v0, LG5/s3;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0x1000

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sput-object p0, LG5/s3;->b:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DIAGMON_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, LG5/s3;->b:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static final h(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final i(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final j(JJ)J
    .locals 2

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v0

    invoke-static {p2, p3}, LG5/s3;->h(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result p0

    invoke-static {p2, p3}, LG5/s3;->i(J)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, LN/i;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final k(JJ)J
    .locals 2

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v0

    invoke-static {p2, p3}, LG5/s3;->h(J)F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result p0

    invoke-static {p2, p3}, LG5/s3;->i(J)F

    move-result p1

    add-float/2addr p1, p0

    invoke-static {v1, p1}, LN/i;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final l(JF)J
    .locals 1

    invoke-static {p0, p1}, LG5/s3;->h(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, LG5/s3;->i(J)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {v0, p0}, LN/i;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method
