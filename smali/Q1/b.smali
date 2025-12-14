.class public final LQ1/b;
.super LG5/y;
.source "SourceFile"


# static fields
.field public static final a:LQ1/b;

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

    new-instance v0, LQ1/b;

    invoke-direct {v0}, LG5/y;-><init>()V

    sput-object v0, LQ1/b;->a:LQ1/b;

    const/4 v0, 0x1

    sput v0, LQ1/b;->b:F

    const/high16 v1, 0x42ec0000    # 118.0f

    sput v1, LQ1/b;->c:F

    const/high16 v1, 0x43860000    # 268.0f

    sput v1, LQ1/b;->d:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    sput v1, LQ1/b;->e:F

    sput v0, LQ1/b;->f:F

    const/high16 v0, 0x43030000    # 131.0f

    sput v0, LQ1/b;->g:F

    const/high16 v0, 0x43b10000    # 354.0f

    sput v0, LQ1/b;->h:F

    const/high16 v0, 0x44160000    # 600.0f

    sput v0, LQ1/b;->i:F

    sput v1, LQ1/b;->j:F

    return-void
.end method


# virtual methods
.method public final c()F
    .locals 0

    sget p0, LQ1/b;->f:F

    return p0
.end method

.method public final d()F
    .locals 0

    sget p0, LQ1/b;->g:F

    return p0
.end method

.method public final e()F
    .locals 0

    sget p0, LQ1/b;->h:F

    return p0
.end method

.method public final f()F
    .locals 0

    sget p0, LQ1/b;->i:F

    return p0
.end method

.method public final g()F
    .locals 0

    sget p0, LQ1/b;->j:F

    return p0
.end method

.method public final h()F
    .locals 0

    sget p0, LQ1/b;->b:F

    return p0
.end method

.method public final i()F
    .locals 0

    sget p0, LQ1/b;->c:F

    return p0
.end method

.method public final j()F
    .locals 0

    sget p0, LQ1/b;->d:F

    return p0
.end method

.method public final k()F
    .locals 0

    sget p0, LQ1/b;->e:F

    return p0
.end method
