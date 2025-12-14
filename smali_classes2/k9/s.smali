.class public final synthetic Lk9/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj9/h;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj9/h;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lk9/s;->a:I

    iput-object p1, p0, Lk9/s;->b:Lj9/h;

    iput-object p2, p0, Lk9/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lk9/s;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lk9/s;->b:Lj9/h;

    check-cast p1, Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/s;->c:Ljava/lang/Object;

    check-cast p0, Ln9/a;

    const-string v0, "$revealMode"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v0, "uRevealMode"

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lk9/s;->b:Lj9/h;

    check-cast p1, Ln9/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const-string v0, "$pos"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const-string v1, "uTransPosition"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lk9/s;->b:Lj9/h;

    check-cast p1, Lm9/q;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const-string v0, "$bitmap"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const-string v2, "spotLightMapShader"

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_2
    iget-object v0, p1, Lm9/q;->l:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const-string v2, "uLightMapSize"

    invoke-virtual {v0, v2, v1, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_3
    const/4 p0, 0x1

    iput-boolean p0, p1, Lm9/q;->s:Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lk9/s;->b:Lj9/h;

    check-cast p1, Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const-string v0, "$pos"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_4

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const-string v1, "uLightPosition"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_4
    return-void

    :pswitch_3
    iget-object p1, p0, Lk9/s;->b:Lj9/h;

    check-cast p1, Lk9/z;

    iget-object p0, p0, Lk9/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_5

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    const-string v1, "uBorderWidth"

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_5
    return-void

    :pswitch_4
    iget-object p1, p0, Lk9/s;->b:Lj9/h;

    check-cast p1, Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk9/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Color;

    iget-object v0, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result v5

    const-string v1, "uLightColor"

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
