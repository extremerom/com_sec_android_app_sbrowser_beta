.class public final synthetic Lk9/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lk9/z;

.field public final synthetic b:Landroid/graphics/Shader;

.field public final synthetic c:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lk9/z;Landroid/graphics/Shader;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk9/w;->a:Lk9/z;

    iput-object p2, p0, Lk9/w;->b:Landroid/graphics/Shader;

    iput-object p3, p0, Lk9/w;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/graphics/RuntimeShader;

    iget-object p1, p0, Lk9/w;->a:Lk9/z;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lk9/z;->m:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lk9/w;->b:Landroid/graphics/Shader;

    const-string v1, "uTintShaderSize"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v2, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    goto :goto_1

    :cond_0
    const-string v3, "tintShader"

    invoke-virtual {p1, v3, v0}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    iget-object p0, p0, Lk9/w;->c:Landroid/graphics/PointF;

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz p0, :cond_2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    :cond_2
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    :cond_3
    :goto_1
    return-void
.end method
