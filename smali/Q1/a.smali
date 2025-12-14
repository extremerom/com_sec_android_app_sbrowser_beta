.class public final LQ1/a;
.super LG5/y;
.source "SourceFile"


# static fields
.field public static final a:LQ1/a;

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F

.field public static final g:F

.field public static final h:F

.field public static final i:F

.field public static final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ1/a;

    invoke-direct {v0}, LG5/y;-><init>()V

    sput-object v0, LQ1/a;->a:LQ1/a;

    const/4 v0, 0x1

    sput v0, LQ1/a;->b:F

    const/high16 v1, 0x42da0000    # 109.0f

    sput v1, LQ1/a;->c:F

    const v1, 0x43ac8000    # 345.0f

    sput v1, LQ1/a;->d:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    sput v1, LQ1/a;->e:F

    sput v0, LQ1/a;->f:F

    const/high16 v0, 0x42f00000    # 120.0f

    sput v0, LQ1/a;->g:F

    const/high16 v0, 0x43710000    # 241.0f

    sput v0, LQ1/a;->h:F

    sput v1, LQ1/a;->i:F

    sput v1, LQ1/a;->j:F

    return-void
.end method


# virtual methods
.method public final c()F
    .locals 0

    sget p0, LQ1/a;->f:F

    return p0
.end method

.method public final d()F
    .locals 0

    sget p0, LQ1/a;->g:F

    return p0
.end method

.method public final e()F
    .locals 0

    sget p0, LQ1/a;->h:F

    return p0
.end method

.method public final f()F
    .locals 0

    sget p0, LQ1/a;->i:F

    return p0
.end method

.method public final g()F
    .locals 0

    sget p0, LQ1/a;->j:F

    return p0
.end method

.method public final h()F
    .locals 0

    sget p0, LQ1/a;->b:F

    return p0
.end method

.method public final i()F
    .locals 0

    sget p0, LQ1/a;->c:F

    return p0
.end method

.method public final j()F
    .locals 0

    sget p0, LQ1/a;->d:F

    return p0
.end method

.method public final k()F
    .locals 0

    sget p0, LQ1/a;->e:F

    return p0
.end method
