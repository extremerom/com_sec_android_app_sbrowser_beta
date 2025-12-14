.class public final synthetic Ln9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln9/i;


# direct methods
.method public synthetic constructor <init>(Ln9/i;I)V
    .locals 0

    iput p2, p0, Ln9/g;->a:I

    iput-object p1, p0, Ln9/g;->b:Ln9/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ln9/g;->a:I

    check-cast p1, Landroid/graphics/RuntimeShader;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ln9/g;->b:Ln9/i;

    iget-object p0, p0, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_0

    const-string p1, "uImageBitmapSize"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Ln9/g;->b:Ln9/i;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    if-eqz p0, :cond_1

    const-string p1, "uTransitionMapSize"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
