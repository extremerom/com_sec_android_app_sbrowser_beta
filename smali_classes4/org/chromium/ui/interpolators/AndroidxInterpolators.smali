.class public Lorg/chromium/ui/interpolators/AndroidxInterpolators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final STANDARD_INTERPOLATOR:LT0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LX4/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LX4/i;-><init>(I)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v2, 0x3b03126f    # 0.002f

    invoke-static {v1, v2}, LT0/b;->a(Landroid/graphics/Path;F)[F

    move-result-object v1

    iput-object v1, v0, LX4/i;->b:Ljava/lang/Object;

    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1, v9}, LX4/i;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v1, [F

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-static {v1, v9}, LX4/i;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v2, -0x1

    iget-object v4, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v4, [F

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, LX4/i;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v4, [F

    add-int/2addr v1, v3

    aget v1, v4, v1

    invoke-static {v1, v5}, LX4/i;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v3, v9

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v4, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v4, [F

    mul-int/lit8 v5, v1, 0x3

    aget v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    cmpl-float v5, v6, v9

    if-nez v5, :cond_1

    cmpl-float v5, v4, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    cmpg-float v3, v4, v3

    if-ltz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move v9, v6

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot loop back on itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sput-object v0, Lorg/chromium/ui/interpolators/AndroidxInterpolators;->STANDARD_INTERPOLATOR:LT0/a;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
