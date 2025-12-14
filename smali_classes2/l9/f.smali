.class public final synthetic Ll9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll9/j;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Ll9/j;FI)V
    .locals 0

    iput p3, p0, Ll9/f;->a:I

    iput-object p1, p0, Ll9/f;->b:Ll9/j;

    iput p2, p0, Ll9/f;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ll9/f;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Ll9/f;->b:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_0

    const-string v0, "uStretch"

    iget p0, p0, Ll9/f;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Ll9/f;->b:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_1

    const-string v0, "uLightScale"

    iget p0, p0, Ll9/f;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Ll9/f;->b:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_2

    const-string v0, "uDomainStrength"

    iget p0, p0, Ll9/f;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_2
    return-void

    :pswitch_2
    iget-object p1, p0, Ll9/f;->b:Ll9/j;

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_3

    const-string v0, "uLightRotation"

    iget p0, p0, Ll9/f;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_3
    return-void

    :pswitch_3
    iget-object p1, p0, Ll9/f;->b:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_4

    const-string v0, "uLightIntensity"

    iget p0, p0, Ll9/f;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_4
    return-void

    :pswitch_4
    iget-object p1, p0, Ll9/f;->b:Ll9/j;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_5

    const-string v0, "uDomainDeltaRatio"

    iget p0, p0, Ll9/f;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
