.class public final Lz1/n;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz1/p;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lz1/p;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lz1/n;->a:I

    iput-object p1, p0, Lz1/n;->b:Lz1/p;

    iput-object p2, p0, Lz1/n;->c:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget-object v1, p0, Lz1/n;->c:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lz1/n;->b:Lz1/p;

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget p0, p0, Lz1/n;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xb

    if-ne p0, v4, :cond_1

    move-object p0, p1

    check-cast p0, La0/q;

    invoke-virtual {p0}, La0/q;->x()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La0/q;->K()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, v3, Lz1/p;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_2

    const-string p2, "semDisplayDensity"

    invoke-virtual {p0, p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    cmpg-float p2, p0, v2

    if-nez p2, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    :cond_3
    sget-object p2, Lx1/k;->b:La0/L0;

    invoke-virtual {p2, v1}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object p2

    sget-object v2, Lx1/k;->d:La0/L0;

    iget-object v4, v3, Lz1/p;->e:Lz1/e;

    invoke-virtual {v2, v4}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v2

    sget-object v4, Lz1/C;->a:La0/I;

    iget-object v6, v3, Lz1/p;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_4
    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, La0/I;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v4

    sget-object v6, Lz1/C;->b:La0/I;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v6, p0}, La0/I;->b(Ljava/lang/Object;)La0/h0;

    move-result-object p0

    sget-object v6, Lx1/k;->c:La0/I;

    iget-object v7, v3, Lz1/p;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, La0/I;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v6

    filled-new-array {p2, v2, v4, p0, v6}, [La0/h0;

    move-result-object p0

    new-instance p2, Lz1/n;

    invoke-direct {p2, v3, v1, v5}, Lz1/n;-><init>(Lz1/p;Landroid/content/Context;I)V

    const v1, 0x64aba82f

    invoke-static {p1, v1, p2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object p2

    const/16 v1, 0x38

    invoke-static {p0, p2, p1, v1}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    :goto_2
    return-object v0

    :pswitch_0
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xb

    if-ne p0, v4, :cond_6

    move-object p0, p1

    check-cast p0, La0/q;

    invoke-virtual {p0}, La0/q;->x()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, La0/q;->K()V

    goto/16 :goto_6

    :cond_6
    :goto_3
    iget-object p0, v3, Lz1/p;->e:Lz1/e;

    iget p0, p0, Lz1/e;->a:I

    sget-object p2, Lz1/C;->b:La0/I;

    check-cast p1, La0/q;

    invoke-virtual {p1, p2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sget-object v4, Lz1/u;->a:Ljava/util/HashMap;

    cmpl-float v2, p2, v2

    const-string v4, "msg"

    const-string v6, " "

    if-lez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "setCurrentDensity "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Le7/a;->a:Ljava/lang/String;

    const-string v8, "GWT:AppWidgetUtils"

    invoke-static {v7, v6, v2, v8}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lz1/u;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v2, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const p0, -0x1d58f75c

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object p2

    sget-object v2, La0/l;->a:La0/V;

    if-ne p2, v2, :cond_8

    sget-wide v7, LH0/g;->b:J

    new-instance p2, LH0/g;

    invoke-direct {p2, v7, v8}, LH0/g;-><init>(J)V

    sget-object v7, La0/V;->f:La0/V;

    invoke-static {p2, v7}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    invoke-virtual {p1, p2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p1, v5}, La0/q;->p(Z)V

    check-cast p2, La0/a0;

    new-instance v7, Lz1/m;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v1, p2, v8}, Lz1/m;-><init>(Lz1/p;Landroid/content/Context;La0/a0;Lib/c;)V

    invoke-static {v7, p1}, La0/d;->F(Lsb/n;La0/m;)La0/a0;

    move-result-object v7

    invoke-interface {v7}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, -0x46b4338c

    invoke-virtual {p1, v7}, La0/q;->R(I)V

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object p0

    iget-object v7, v3, Lz1/p;->e:Lz1/e;

    if-ne p0, v2, :cond_9

    iget-object p0, v3, Lz1/p;->d:Lz1/V;

    const-string v2, "<this>"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-static {v7, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lz1/t;

    invoke-direct {v2, p0, v1, v7, v8}, Lz1/t;-><init>(Lz1/V;Landroid/content/Context;Lx1/o;Lib/c;)V

    new-instance p0, LQc/e;

    sget-object v1, Lib/i;->a:Lib/i;

    sget-object v9, LPc/a;->SUSPEND:LPc/a;

    const/4 v10, -0x2

    invoke-direct {p0, v2, v1, v10, v9}, LQc/e;-><init>(Lsb/n;Lib/h;ILPc/a;)V

    invoke-virtual {p1, p0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p1, v5}, La0/q;->p(Z)V

    check-cast p0, LQc/h;

    invoke-static {p0, p1}, La0/d;->s(LQc/h;La0/q;)La0/a0;

    move-result-object p0

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lsb/n;

    const p0, -0x46b43309

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    if-nez v10, :cond_a

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "widget-"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " collectAsState "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GWT:AppWidgetSession"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH0/g;

    iget-wide v7, p0, LH0/g;->a:J

    const/4 v6, 0x0

    iget-object v11, v3, Lz1/p;->h:Lz1/b1;

    move-object v9, p1

    invoke-static/range {v6 .. v11}, LG5/Y2;->a(IJLa0/m;Lsb/n;Lz1/b1;)V

    move-object v8, v0

    :goto_4
    invoke-virtual {p1, v5}, La0/q;->p(Z)V

    if-nez v8, :cond_b

    invoke-static {p1, v5}, LG5/T2;->d(La0/m;I)V

    :cond_b
    invoke-virtual {p1, v5}, La0/q;->p(Z)V

    goto :goto_5

    :cond_c
    const p0, -0x46b43249

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    invoke-static {p1, v5}, LG5/T2;->d(La0/m;I)V

    invoke-virtual {p1, v5}, La0/q;->p(Z)V

    :goto_5
    new-instance p0, Lz1/l;

    invoke-direct {p0, v5, v3}, Lz1/l;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1}, La0/d;->e(Lsb/a;La0/m;)V

    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
