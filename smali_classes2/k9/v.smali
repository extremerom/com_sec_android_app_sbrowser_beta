.class public final synthetic Lk9/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk9/z;

.field public final synthetic c:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lk9/z;Landroid/graphics/PointF;I)V
    .locals 0

    iput p3, p0, Lk9/v;->a:I

    iput-object p1, p0, Lk9/v;->b:Lk9/z;

    iput-object p2, p0, Lk9/v;->c:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lk9/v;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lk9/v;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/v;->c:Landroid/graphics/PointF;

    const-string v0, "$pos"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const-string v1, "uLightPos"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lk9/v;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/v;->c:Landroid/graphics/PointF;

    const-string v0, "$directionVector"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const-string v1, "uRoundRectDirection"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lk9/v;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/v;->c:Landroid/graphics/PointF;

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const-string v1, "uViewCenter"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
