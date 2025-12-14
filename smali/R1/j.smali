.class public final LR1/j;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LR1/m;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LR1/m;I)V
    .locals 0

    iput p3, p0, LR1/j;->a:I

    iput-object p1, p0, LR1/j;->b:Landroid/content/Context;

    iput-object p2, p0, LR1/j;->c:LR1/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x38

    const/4 v6, 0x2

    iget v7, v0, LR1/j;->a:I

    packed-switch v7, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, La0/m;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    if-ne v2, v6, :cond_1

    move-object v2, v1

    check-cast v2, La0/q;

    invoke-virtual {v2}, La0/q;->x()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lx1/k;->b:La0/L0;

    iget-object v4, v0, LR1/j;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v2

    sget-object v4, Lx1/k;->d:La0/L0;

    new-instance v7, Lz1/e;

    invoke-direct {v7, v3}, Lz1/e;-><init>(I)V

    invoke-virtual {v4, v7}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v3

    sget-object v4, LR1/d;->c:La0/L0;

    sget-object v7, LR1/v;->b:LR1/v;

    invoke-virtual {v4, v7}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [La0/h0;

    move-result-object v2

    new-instance v3, LR1/h;

    iget-object v0, v0, LR1/j;->c:LR1/m;

    invoke-direct {v3, v0, v6}, LR1/h;-><init>(LR1/m;I)V

    const v0, 0xe1271a9

    invoke-static {v1, v0, v3}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v0

    invoke-static {v2, v0, v1, v5}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    :goto_1
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_0
    move-object/from16 v7, p1

    check-cast v7, La0/m;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    and-int/lit8 v8, v8, 0xb

    if-ne v8, v6, :cond_3

    move-object v8, v7

    check-cast v8, La0/q;

    invoke-virtual {v8}, La0/q;->x()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, La0/q;->K()V

    goto/16 :goto_15

    :cond_3
    :goto_2
    sget-object v8, Lz1/C;->a:La0/I;

    check-cast v7, La0/q;

    invoke-virtual {v7, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const v9, 0x15d97d48

    invoke-virtual {v7, v9}, La0/q;->R(I)V

    sget-object v9, Lx1/k;->d:La0/L0;

    invoke-virtual {v7, v9}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lz1/e;

    if-eqz v10, :cond_4

    invoke-virtual {v7, v9}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type androidx.glance.appwidget.AppWidgetId"

    invoke-static {v9, v10}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lz1/e;

    iget v9, v9, Lz1/e;->a:I

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    invoke-virtual {v7, v4}, La0/q;->p(Z)V

    new-instance v10, Lz1/i0;

    sget-object v11, Lx1/k;->b:La0/L0;

    invoke-virtual {v7, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    invoke-direct {v10, v11}, Lz1/i0;-><init>(Landroid/content/Context;)V

    if-lez v9, :cond_8

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x24

    if-lt v10, v12, :cond_8

    sget-object v10, Lz1/i0;->d:Lz1/Y;

    monitor-enter v10

    :try_start_0
    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v11, v9}, La/a;->c(Landroid/appwidget/AppWidgetManager;I)Ljava/util/List;

    move-result-object v9

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    const-string v13, "semDisplayDensity"

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "semDisplayDensity"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    const-string v13, "semDisplayId"

    invoke-virtual {v12, v13, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-static {v12}, Lorg/chromium/components/autofill/a;->f(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    const-string v14, "semAppWidgetRowSpan"

    invoke-virtual {v12, v14, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "semAppWidgetColumnSpan"

    invoke-virtual {v12, v15, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "semWidgetSize"

    invoke-virtual {v12, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v13, :cond_6

    new-instance v12, LN1/a;

    new-instance v5, LN1/b;

    invoke-direct {v5, v14, v15}, LN1/b;-><init>(II)V

    invoke-direct {v12, v13, v5, v3}, LN1/a;-><init>(Landroid/util/SizeF;LN1/b;I)V

    new-instance v5, LM1/b;

    invoke-direct {v5, v3}, LM1/b;-><init>(I)V

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_5
    const/4 v3, -0x1

    const/16 v5, 0x38

    goto :goto_4

    :cond_7
    monitor-exit v10

    goto :goto_7

    :goto_6
    monitor-exit v10

    throw v0

    :cond_8
    sget-object v11, Lfb/w;->a:Lfb/w;

    :goto_7
    sget-object v3, LR1/d;->a:La0/L0;

    iget-object v5, v0, LR1/j;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)LM1/f;

    move-result-object v5

    invoke-virtual {v3, v5}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v16

    sget-object v3, LR1/d;->b:La0/L0;

    const-string v5, "<this>"

    invoke-static {v8, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "semHostType"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_9

    move v9, v2

    goto :goto_8

    :cond_9
    if-ne v5, v6, :cond_a

    move v9, v6

    goto :goto_8

    :cond_a
    const/4 v9, 0x4

    if-ne v5, v9, :cond_b

    goto :goto_8

    :cond_b
    const/16 v9, 0x10

    if-ne v5, v9, :cond_c

    goto :goto_8

    :cond_c
    move v9, v4

    :goto_8
    new-instance v5, LM1/a;

    invoke-direct {v5, v9}, LM1/a;-><init>(I)V

    invoke-virtual {v3, v5}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v17

    sget-object v3, LR1/d;->d:La0/L0;

    sget-object v5, Lx1/k;->b:La0/L0;

    invoke-virtual {v7, v5}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const v9, 0x15d9802c

    invoke-virtual {v7, v9}, La0/q;->R(I)V

    sget-object v9, Lx1/k;->d:La0/L0;

    invoke-virtual {v7, v9}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lz1/e;

    if-eqz v10, :cond_d

    invoke-virtual {v7, v9}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type androidx.glance.appwidget.AppWidgetId"

    invoke-static {v9, v10}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lz1/e;

    iget v9, v9, Lz1/e;->a:I

    goto :goto_9

    :cond_d
    const/4 v9, -0x1

    :goto_9
    invoke-virtual {v7, v4}, La0/q;->p(Z)V

    sget-object v10, Lx1/k;->a:La0/L0;

    invoke-virtual {v7, v10}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LH0/g;

    iget-wide v12, v12, LH0/g;->a:J

    invoke-static {v12, v13}, LH0/g;->b(J)F

    move-result v12

    invoke-virtual {v7, v10}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LH0/g;

    iget-wide v13, v10, LH0/g;->a:J

    invoke-static {v13, v14}, LH0/g;->a(J)F

    move-result v10

    const-string v13, "context"

    invoke-static {v5, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "getPackageName(...)"

    invoke-static {v13, v14}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x2e

    invoke-static {v15, v13, v13}, LKc/k;->M(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "<set-?>"

    invoke-static {v1, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v12, v1

    mul-float/2addr v1, v10

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "[common-2.0.3] "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-widget size dp: w="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " h="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", px: w="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ".px h="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ".px"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "GWT:AppWidgetUtils"

    invoke-static {v6, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bumptech/glide/c;->b(Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "mode="

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from options"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, LM1/b;->b(II)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_13

    :cond_e
    const-string v1, "semWidgetStyle"

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v9, 0x2

    if-eq v1, v9, :cond_f

    move v1, v2

    goto :goto_a

    :cond_f
    move v1, v9

    :goto_a
    invoke-static {v1, v9}, LM1/c;->a(II)Z

    move-result v1

    if-nez v1, :cond_1d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x22

    if-gt v1, v9, :cond_10

    goto/16 :goto_12

    :cond_10
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x2e

    invoke-static {v10, v9, v9}, LKc/k;->M(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "<set-?>"

    invoke-static {v9, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v9, Le7/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v9, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v2, :cond_11

    move v9, v2

    goto :goto_b

    :cond_11
    move v9, v4

    :goto_b
    const-string v10, "appWidgetSizes"

    const/16 v12, 0x21

    if-lt v1, v12, :cond_12

    invoke-static {v8}, LA8/a;->g(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_c

    :cond_12
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_c
    const/4 v10, 0x0

    if-nez v1, :cond_13

    move-object v1, v10

    goto :goto_f

    :cond_13
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v1, v13}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SizeF;

    invoke-virtual {v15}, Landroid/util/SizeF;->getWidth()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v1, v13}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    if-eqz v9, :cond_16

    new-instance v1, Landroid/util/SizeF;

    invoke-static {v12}, Lfb/n;->N(Ljava/util/ArrayList;)F

    move-result v12

    invoke-static {v14}, Lfb/n;->M(Ljava/util/ArrayList;)F

    move-result v13

    invoke-direct {v1, v12, v13}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_f

    :cond_16
    new-instance v1, Landroid/util/SizeF;

    invoke-static {v12}, Lfb/n;->M(Ljava/util/ArrayList;)F

    move-result v12

    invoke-static {v14}, Lfb/n;->N(Ljava/util/ArrayList;)F

    move-result v13

    invoke-direct {v1, v12, v13}, Landroid/util/SizeF;-><init>(FF)V

    :goto_f
    if-nez v1, :cond_1a

    const-string v1, "appWidgetMinHeight"

    invoke-virtual {v8, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v12, "appWidgetMaxHeight"

    invoke-virtual {v8, v12, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v8, v13, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "appWidgetMaxWidth"

    invoke-virtual {v8, v14, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-eqz v1, :cond_19

    if-eqz v12, :cond_19

    if-eqz v13, :cond_19

    if-nez v14, :cond_17

    goto :goto_10

    :cond_17
    if-eqz v9, :cond_18

    new-instance v1, Landroid/util/SizeF;

    int-to-float v9, v13

    int-to-float v10, v12

    invoke-direct {v1, v9, v10}, Landroid/util/SizeF;-><init>(FF)V

    move-object v10, v1

    goto :goto_10

    :cond_18
    new-instance v9, Landroid/util/SizeF;

    int-to-float v10, v14

    int-to-float v1, v1

    invoke-direct {v9, v10, v1}, Landroid/util/SizeF;-><init>(FF)V

    move-object v10, v9

    :cond_19
    :goto_10
    move-object v1, v10

    :cond_1a
    if-nez v1, :cond_1b

    sget v1, LM1/b;->b:I

    move v1, v4

    goto :goto_11

    :cond_1b
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_1c

    sget-object v5, LQ1/b;->a:LQ1/b;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {v5, v9, v1}, LG5/y;->b(FF)I

    move-result v1

    goto :goto_11

    :cond_1c
    sget-object v5, LQ1/a;->a:LQ1/a;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {v5, v9, v1}, LG5/y;->b(FF)I

    move-result v1

    :goto_11
    invoke-static {v1}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, " size is calculated at 3rd launcher"

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "msg"

    invoke-static {v5, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Le7/a;->a:Ljava/lang/String;

    const-string v10, " "

    invoke-static {v9, v10, v5, v6}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1d
    :goto_12
    div-float/2addr v12, v10

    float-to-double v5, v12

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    cmpg-double v1, v5, v9

    if-gez v1, :cond_1e

    move v1, v2

    goto :goto_13

    :cond_1e
    const/4 v1, 0x2

    :goto_13
    new-instance v5, LM1/b;

    invoke-direct {v5, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v3, v5}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v1

    sget-object v3, LR1/d;->e:La0/L0;

    const-string v5, "semWidgetStyle"

    invoke-virtual {v8, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1f

    move v6, v2

    goto :goto_14

    :cond_1f
    const/4 v6, 0x2

    :goto_14
    new-instance v5, LM1/c;

    invoke-direct {v5, v6}, LM1/c;-><init>(I)V

    invoke-virtual {v3, v5}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v19

    sget-object v3, LR1/d;->c:La0/L0;

    sget-object v5, LR1/v;->b:LR1/v;

    invoke-virtual {v3, v5}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v20

    sget-object v3, LR1/d;->f:La0/L0;

    new-instance v5, LR1/w;

    const-string v6, "hsIconLabelEnabled"

    invoke-virtual {v8, v6, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "hsWidgetLabelEnabled"

    invoke-virtual {v8, v6, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "setShadow"

    invoke-virtual {v8, v9, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v9, 0x8

    invoke-direct {v5, v2, v6, v8, v9}, LR1/w;-><init>(ZZZI)V

    invoke-virtual {v3, v5}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v21

    sget-object v2, Lx1/k;->f:La0/L0;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v22

    sget-object v2, LR1/d;->i:La0/L0;

    invoke-virtual {v2, v11}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v23

    move-object/from16 v18, v1

    filled-new-array/range {v16 .. v23}, [La0/h0;

    move-result-object v1

    new-instance v2, LR1/j;

    iget-object v3, v0, LR1/j;->b:Landroid/content/Context;

    iget-object v0, v0, LR1/j;->c:LR1/m;

    invoke-direct {v2, v3, v0, v4}, LR1/j;-><init>(Landroid/content/Context;LR1/m;I)V

    const v0, -0x2d16d88a

    invoke-static {v7, v0, v2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v1, v0, v7, v2}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    :goto_15
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, La0/m;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0xb

    const/4 v5, 0x2

    if-ne v3, v5, :cond_21

    move-object v3, v1

    check-cast v3, La0/q;

    invoke-virtual {v3}, La0/q;->x()Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_16

    :cond_20
    invoke-virtual {v3}, La0/q;->K()V

    goto/16 :goto_19

    :cond_21
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v3, LR1/d;->f:La0/L0;

    check-cast v1, La0/q;

    invoke-virtual {v1, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR1/w;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, " "

    const-string v9, "msg"

    const-string v10, "GWT:TemplateAppWidget"

    iget-object v11, v0, LR1/j;->c:LR1/m;

    iget-object v0, v0, LR1/j;->b:Landroid/content/Context;

    const/16 v12, 0x22

    if-gt v7, v12, :cond_22

    const v2, 0x355fe09e

    invoke-virtual {v1, v2}, La0/q;->R(I)V

    sget-object v2, LS1/a;->e:LJ1/b;

    new-instance v7, LR1/i;

    invoke-direct {v7, v3, v0, v11}, LR1/i;-><init>(LR1/w;Landroid/content/Context;LR1/m;)V

    const v0, 0x4669073a

    invoke-static {v1, v0, v7}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v0

    const/16 v3, 0x30

    invoke-static {v2, v0, v1, v3}, LG5/y2;->a(LJ1/b;Li0/a;La0/m;I)V

    invoke-virtual {v1, v4}, La0/q;->p(Z)V

    move-wide/from16 p1, v5

    goto/16 :goto_18

    :cond_22
    const v7, 0x355fe2fd

    invoke-virtual {v1, v7}, La0/q;->R(I)V

    sget-object v7, Lx1/k;->d:La0/L0;

    invoke-virtual {v1, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    sget-object v12, Lx1/k;->a:La0/L0;

    invoke-virtual {v1, v12}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LH0/g;

    iget-wide v13, v13, LH0/g;->a:J

    invoke-static {v13, v14}, LH0/g;->c(J)Ljava/lang/String;

    move-result-object v13

    sget-object v14, LR1/d;->d:La0/L0;

    invoke-virtual {v1, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LM1/b;

    iget v14, v14, LM1/b;->a:I

    invoke-static {v14}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, LR1/d;->e:La0/L0;

    invoke-virtual {v1, v15}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LM1/c;

    iget v15, v15, LM1/c;->a:I

    const/4 v4, 0x2

    if-eq v15, v4, :cond_24

    const/4 v4, 0x3

    if-eq v15, v4, :cond_23

    const-string v4, "colorful"

    goto :goto_17

    :cond_23
    const-string v4, "colorful|monotone"

    goto :goto_17

    :cond_24
    const-string v4, "monotone"

    :goto_17
    sget-object v15, LR1/d;->b:La0/L0;

    invoke-virtual {v1, v15}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LM1/a;

    iget v15, v15, LM1/a;->a:I

    invoke-static {v15}, LM1/a;->b(I)Ljava/lang/String;

    move-result-object v15

    iget-boolean v2, v3, LR1/w;->a:Z

    move-wide/from16 p1, v5

    sget-object v5, LR1/d;->a:La0/L0;

    invoke-virtual {v1, v5}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    const-string v11, "[common-2.0.3] provideContent: widgetId="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", dpsize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", style="

    const-string v11, ", host="

    invoke-static {v6, v14, v7, v4, v11}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", iconLabelOn="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", widgetLabelOn="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v3, LR1/w;->b:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    invoke-static {v3, v8, v2, v10}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, LG5/P3;->a(Landroid/content/Context;La0/m;)J

    move-result-wide v2

    new-instance v0, LH0/g;

    invoke-direct {v0, v2, v3}, LH0/g;-><init>(J)V

    invoke-virtual {v12, v0}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v0

    new-instance v2, LR1/h;

    move-object/from16 v3, v17

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LR1/h;-><init>(LR1/m;I)V

    const v3, -0x408c8f26

    invoke-static {v1, v3, v2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v1, v3}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, La0/q;->p(Z)V

    :goto_18
    sget-object v0, Lx1/k;->d:La0/L0;

    invoke-virtual {v1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide/from16 v3, p1

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "provideGlance "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " elapsed : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v8, v0, v10}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
