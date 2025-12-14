.class public abstract Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Bitmap;


# direct methods
.method public static a(Landroid/content/Context;)LM1/f;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LB3/c;->b:LB3/c;

    if-eqz v0, :cond_0

    sget-object v1, LM1/f;->FoldMain:LM1/f;

    iget-object v0, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, LM1/f;

    if-eq v0, v1, :cond_0

    sget-object v1, LM1/f;->FoldSub:LM1/f;

    if-eq v0, v1, :cond_0

    sget-object v1, LM1/f;->MultiFoldMain:LM1/f;

    if-eq v0, v1, :cond_0

    sget-object v1, LM1/f;->MultiFoldSub:LM1/f;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, LB3/c;

    invoke-static {p0}, LM1/d;->a(Landroid/content/Context;)LM1/f;

    move-result-object p0

    const-string v1, "type"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LB3/c;->a:Ljava/lang/Object;

    sput-object v0, LB3/c;->b:LB3/c;

    :cond_1
    sget-object p0, LB3/c;->b:LB3/c;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceType is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LB3/c;->a:Ljava/lang/Object;

    check-cast p0, LM1/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "GWT:GlanceDeviceConfigUtils"

    invoke-static {v1, v2, v0, v3}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p1}, LG6/a;->c(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method
