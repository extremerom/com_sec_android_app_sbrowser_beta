.class public abstract LM1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)LM1/f;
    .locals 2

    invoke-static {}, LO1/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LM1/f;->Flip:LM1/f;

    return-object p0

    :cond_0
    invoke-static {}, LO1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, LO1/a;->c()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    sget-object p0, LM1/f;->MultiFoldMain:LM1/f;

    goto :goto_0

    :cond_1
    sget-object p0, LM1/f;->MultiFoldSub:LM1/f;

    goto :goto_0

    :cond_2
    sget-object p0, LM1/f;->MultiFoldMain:LM1/f;

    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_4

    sget-object p0, LM1/f;->FoldMain:LM1/f;

    goto :goto_1

    :cond_4
    sget-object p0, LM1/f;->FoldSub:LM1/f;

    goto :goto_1

    :cond_5
    sget-object p0, LM1/f;->FoldMain:LM1/f;

    :goto_1
    return-object p0

    :cond_6
    invoke-static {}, LO1/a;->d()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, LM1/f;->Tablet:LM1/f;

    return-object p0

    :cond_7
    sget-object p0, LM1/f;->Phone:LM1/f;

    return-object p0
.end method
