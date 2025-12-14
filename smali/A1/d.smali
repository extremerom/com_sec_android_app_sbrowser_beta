.class public final LA1/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf3/G;Lg3/n;Ljava/lang/String;Lo3/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LA1/d;->a:I

    iput-object p1, p0, LA1/d;->c:Ljava/lang/Object;

    iput-object p2, p0, LA1/d;->d:Ljava/lang/Object;

    iput-object p3, p0, LA1/d;->b:Ljava/lang/Object;

    iput-object p4, p0, LA1/d;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LA1/d;->a:I

    iput-object p1, p0, LA1/d;->b:Ljava/lang/Object;

    iput-object p2, p0, LA1/d;->c:Ljava/lang/Object;

    iput-object p3, p0, LA1/d;->d:Ljava/lang/Object;

    iput-object p4, p0, LA1/d;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LA1/d;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, LA1/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v2, v1, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    new-instance v3, Lz6/b;

    iget-object v4, p0, LA1/d;->e:Ljava/lang/Object;

    check-cast v4, Lf1/y;

    iget-object v5, p0, LA1/d;->c:Ljava/lang/Object;

    check-cast v5, LK6/j;

    iget-object p0, p0, LA1/d;->d:Ljava/lang/Object;

    check-cast p0, Lw6/k;

    invoke-direct {v3, v5, v1, p0, v4}, Lz6/b;-><init>(LK6/j;Lcom/samsung/android/scloud/lib/setting/e;Lw6/k;Lf1/y;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, LA1/d;->c:Ljava/lang/Object;

    check-cast v0, Lf3/G;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v0, Lg3/j;

    sget-object v4, Lf3/k;->KEEP:Lf3/k;

    iget-object v1, p0, LA1/d;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lg3/n;

    iget-object v1, p0, LA1/d;->b:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lg3/j;-><init>(Lg3/n;Ljava/lang/String;Lf3/k;Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Lp3/f;

    iget-object p0, p0, LA1/d;->e:Ljava/lang/Object;

    check-cast p0, Lo3/c;

    invoke-direct {v1, v0, p0}, Lp3/f;-><init>(Lg3/j;Lo3/c;)V

    invoke-virtual {v1}, Lp3/f;->run()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget-object v0, p0, LA1/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/l;

    iget-object v1, v0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    iget-object v2, p0, LA1/d;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, LA1/d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/x0;->i(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/l;->q:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/fragment/app/k;

    invoke-direct {v1, v0, v3, v2}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/l;Ljava/lang/Object;Landroid/view/ViewGroup;)V

    iget-object p0, p0, LA1/d;->e:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    iput-object v1, p0, Ltb/w;->a:Ljava/lang/Object;

    const-string p0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started executing operations from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/fragment/app/l;->d:Landroidx/fragment/app/F0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/F0;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unable to start transition "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for container "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, LV/E;

    invoke-direct {v0}, LV/E;-><init>()V

    iget-object v1, p0, LA1/d;->b:Ljava/lang/Object;

    check-cast v1, La0/a0;

    invoke-interface {v1}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb/k;

    invoke-interface {v1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LV/s;

    iget-object v2, p0, LA1/d;->c:Ljava/lang/Object;

    check-cast v2, La0/a0;

    invoke-interface {v2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzb/d;

    iget-object v3, p0, LA1/d;->d:Ljava/lang/Object;

    check-cast v3, LV/g;

    iget-object p0, p0, LA1/d;->e:Ljava/lang/Object;

    check-cast p0, LV/J;

    iget-object v0, v0, LV/E;->b:LG5/g4;

    invoke-direct {v1, v0, v2, v3, p0}, LV/s;-><init>(LG5/g4;Lzb/d;LV/g;LV/J;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, LA1/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, LA1/e;->valueOf(Ljava/lang/String;)LA1/e;

    move-result-object v0

    sget-object v1, LA1/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    iget-object v2, p0, LA1/d;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v3, p0, LA1/d;->c:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    if-eq v0, v1, :cond_5

    const/4 p0, 0x2

    if-eq v0, p0, :cond_4

    const/4 p0, 0x3

    if-eq v0, p0, :cond_4

    const/4 p0, 0x4

    if-eq v0, p0, :cond_3

    const/4 p0, 0x5

    if-eq v0, p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, LA1/g;->a:LA1/g;

    invoke-virtual {p0, v3, v2}, LA1/g;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, LA1/d;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {v3, v2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
