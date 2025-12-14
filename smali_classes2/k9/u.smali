.class public final synthetic Lk9/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk9/z;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lk9/z;FI)V
    .locals 0

    iput p3, p0, Lk9/u;->a:I

    iput-object p1, p0, Lk9/u;->b:Lk9/z;

    iput p2, p0, Lk9/u;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lk9/u;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_0

    const-string v0, "uReflLightIntensity"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_1

    const-string v0, "uSaturation"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_2

    const-string v0, "uStretchDirLit"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_2
    return-void

    :pswitch_2
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_3

    const-string v0, "uLightRadius"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_3
    return-void

    :pswitch_3
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_4

    const-string v0, "uGlowRadius"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_4
    return-void

    :pswitch_4
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_5

    const-string v0, "uGlowIntensity"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_5
    return-void

    :pswitch_5
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_6

    const-string v0, "uLightIntensity"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_6
    return-void

    :pswitch_6
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_7

    const-string v0, "uOutlineThickness"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_7
    return-void

    :pswitch_7
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_8

    const-string v0, "uReflRadius"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_8
    return-void

    :pswitch_8
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_9

    const-string v0, "uCornerRadius"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_9
    return-void

    :pswitch_9
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_a

    const-string v0, "uProgress"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_a
    return-void

    :pswitch_a
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_b

    const-string v0, "uStretch"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_b
    return-void

    :pswitch_b
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_c

    const-string v0, "uGlobalLuminance"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_c
    return-void

    :pswitch_c
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_d

    const-string v0, "uReflAlbedo"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_d
    return-void

    :pswitch_d
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_e

    const-string v0, "uOuterSaturation"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_e
    return-void

    :pswitch_e
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_f

    const-string v0, "uGlowSharpness"

    iget p0, p0, Lk9/u;->c:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_f
    return-void

    :pswitch_f
    iget-object p1, p0, Lk9/u;->b:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    iget p0, p0, Lk9/u;->c:F

    if-eqz v0, :cond_10

    const-string v1, "uViewAlpha"

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p1, Lk9/z;->n:Ljava/lang/Float;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
