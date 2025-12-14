.class public final synthetic Lm9/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lm9/q;

.field public final synthetic b:I

.field public final synthetic c:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lm9/q;ILandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/p;->a:Lm9/q;

    iput p2, p0, Lm9/p;->b:I

    iput-object p3, p0, Lm9/p;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/RuntimeShader;

    iget-object p1, p0, Lm9/p;->a:Lm9/q;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm9/p;->c:Landroid/graphics/PointF;

    const-string v1, "$position"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lm9/q;->p:[F

    iget p0, p0, Lm9/p;->b:I

    mul-int/lit8 p0, p0, 0x2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    aput v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v1, p0

    iget-object p0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_0

    const-string p1, "uSpotPositions"

    invoke-virtual {p0, p1, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    :cond_0
    return-void
.end method
