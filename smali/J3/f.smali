.class public final LJ3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ3/F;


# static fields
.field public static final b:LJ3/f;

.field public static final c:LJ3/f;

.field public static final d:LJ3/f;

.field public static final e:LJ3/f;

.field public static final f:LJ3/f;

.field public static final g:LJ3/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LJ3/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ3/f;-><init>(I)V

    sput-object v0, LJ3/f;->b:LJ3/f;

    new-instance v0, LJ3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJ3/f;-><init>(I)V

    sput-object v0, LJ3/f;->c:LJ3/f;

    new-instance v0, LJ3/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LJ3/f;-><init>(I)V

    sput-object v0, LJ3/f;->d:LJ3/f;

    new-instance v0, LJ3/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LJ3/f;-><init>(I)V

    sput-object v0, LJ3/f;->e:LJ3/f;

    new-instance v0, LJ3/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LJ3/f;-><init>(I)V

    sput-object v0, LJ3/f;->f:LJ3/f;

    new-instance v0, LJ3/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LJ3/f;-><init>(I)V

    sput-object v0, LJ3/f;->g:LJ3/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LJ3/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(LK3/c;F)Ljava/lang/Object;
    .locals 11

    iget p0, p0, LJ3/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, LK3/c;->q()LK3/b;

    move-result-object p0

    sget-object v0, LK3/b;->BEGIN_ARRAY:LK3/b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, LK3/c;->a()V

    :cond_1
    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, LK3/c;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, LK3/c;->E()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, LK3/c;->c()V

    :cond_3
    new-instance p0, LM3/b;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, LM3/b;-><init>(FF)V

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, LK3/c;->q()LK3/b;

    move-result-object p0

    sget-object v0, LK3/b;->BEGIN_ARRAY:LK3/b;

    if-ne p0, v0, :cond_4

    invoke-static {p1, p2}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_3

    :cond_4
    sget-object v0, LK3/b;->BEGIN_OBJECT:LK3/b;

    if-ne p0, v0, :cond_5

    invoke-static {p1, p2}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_3

    :cond_5
    sget-object v0, LK3/b;->NUMBER:LK3/b;

    if-ne p0, v0, :cond_7

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    invoke-virtual {p1}, LK3/c;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, LK3/c;->E()V

    goto :goto_2

    :cond_6
    :goto_3
    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot convert json to point. Next token is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {p1, p2}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, LJ3/o;->d(LK3/c;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, LJ3/o;->d(LK3/c;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p1}, LK3/c;->q()LK3/b;

    move-result-object p0

    sget-object p2, LK3/b;->BEGIN_ARRAY:LK3/b;

    if-ne p0, p2, :cond_8

    const/4 p0, 0x1

    goto :goto_4

    :cond_8
    const/4 p0, 0x0

    :goto_4
    if-eqz p0, :cond_9

    invoke-virtual {p1}, LK3/c;->a()V

    :cond_9
    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v0

    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v2

    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v4

    invoke-virtual {p1}, LK3/c;->q()LK3/b;

    move-result-object p2

    sget-object v6, LK3/b;->NUMBER:LK3/b;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ne p2, v6, :cond_a

    invoke-virtual {p1}, LK3/c;->j()D

    move-result-wide v9

    goto :goto_5

    :cond_a
    move-wide v9, v7

    :goto_5
    if-eqz p0, :cond_b

    invoke-virtual {p1}, LK3/c;->c()V

    :cond_b
    cmpg-double p0, v0, v7

    if-gtz p0, :cond_c

    cmpg-double p0, v2, v7

    if-gtz p0, :cond_c

    cmpg-double p0, v4, v7

    if-gtz p0, :cond_c

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    cmpg-double p2, v9, v7

    if-gtz p2, :cond_c

    mul-double/2addr v9, p0

    :cond_c
    double-to-int p0, v9

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
