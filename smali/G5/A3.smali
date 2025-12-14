.class public abstract LG5/A3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "preview-"

    const-string v1, "-"

    invoke-static {v0, p0, v1, p1}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LJ2/G;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LC9/a;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LC9/a;-><init>(I)V

    invoke-interface {p0, p1, v0, p2}, LJ2/G;->a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/Class;Lkb/c;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, LZ1/w;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, LZ1/w;

    iget v4, v3, LZ1/w;->c:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, LZ1/w;->c:I

    goto :goto_0

    :cond_0
    new-instance v3, LZ1/w;

    invoke-direct {v3, v0}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object v0, v3, LZ1/w;->b:Ljava/lang/Object;

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v3, LZ1/w;->c:I

    sget-object v6, Ldb/r;->a:Ldb/r;

    const/4 v7, 0x1

    const-string v8, " "

    const-string v9, "msg"

    const-string v10, "GWT:PreviewState"

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-wide v1, v3, LZ1/w;->a:J

    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v21, v6

    goto/16 :goto_1a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, LG5/B3;->a(Ljava/lang/Class;)LR1/m;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v6

    :cond_3
    invoke-static/range {p0 .. p1}, LG5/B3;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    if-eqz v11, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    invoke-static {v14}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v15, "provider"

    invoke-static {v0, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    const-string v7, "getDeclaredMethods(...)"

    invoke-static {v15, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_5

    move/from16 v18, v7

    :try_start_1
    aget-object v7, v15, v4

    move-object/from16 v19, v15

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v3

    :try_start_2
    const-string v3, "hidden_semIsPreviewUpdateAvailable"

    invoke-static {v15, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_2

    :cond_5
    move-object/from16 v20, v3

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v3, "Array contains no element matching the predicate."

    invoke-direct {v0, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v17, v4

    :goto_2
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_3
    instance-of v3, v0, Ldb/l;

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    :cond_6
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "isUpdateAvailable : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Le7/a;->a:Ljava/lang/String;

    invoke-static {v7, v8, v3, v10}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_20

    invoke-static {v11, v1}, La3/a;->b(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;)I

    move-result v3

    const/4 v7, 0x2

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1f

    if-lt v0, v15, :cond_d

    invoke-static {v11}, LB4/b;->e(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v4, "android.appwidget.provider"

    invoke-virtual {v0, v15, v4}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :try_start_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v15, 0x1

    if-eq v0, v15, :cond_9

    if-ne v0, v7, :cond_8

    :cond_9
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v15

    const/4 v7, 0x0

    invoke-static {v7, v15}, LG5/d3;->l(II)Lzb/d;

    move-result-object v15

    invoke-virtual {v15}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    move-object v15, v7

    check-cast v15, Lzb/c;

    move-object/from16 v21, v7

    iget-boolean v7, v15, Lzb/c;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v7, :cond_b

    :try_start_5
    invoke-virtual {v15}, Lzb/c;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-interface {v0, v15}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v7

    const-string v7, "widgetStyle"

    invoke-static {v15, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_a

    move-object/from16 v7, v22

    goto :goto_6

    :cond_a
    move-object/from16 v7, v21

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v15, v0

    const/4 v7, 0x0

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    :goto_6
    :try_start_6
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v15, 0x1

    invoke-interface {v0, v7, v15}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v7, 0x0

    :try_start_7
    invoke-static {v4, v7}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move v15, v0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    move-object v15, v0

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    invoke-static {v4, v7}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    const/4 v15, 0x1

    goto :goto_a

    :goto_8
    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object/from16 v18, v0

    :try_start_9
    invoke-static {v4, v15}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v18
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    goto :goto_7

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :goto_a
    invoke-static {v3}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "request update preview size / "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, LM1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Preview update is requested by unknown preview size"

    invoke-static {v10, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_e
    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "hidden_semGeneratedColorfulPreviewStates"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_b
    instance-of v4, v0, Ldb/l;

    if-eqz v4, :cond_f

    move-object v0, v7

    :cond_f
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_1c

    :try_start_b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "hidden_semGeneratedMonotonePreviewStates"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_d
    instance-of v4, v0, Ldb/l;

    if-eqz v4, :cond_11

    move-object v0, v7

    :cond_11
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_1c

    const-string v0, " / "

    const-string v4, "GWT:AppWidgetManager"

    const-string v7, "converted data : "

    :try_start_c
    invoke-static {v14, v11, v3, v15}, La/a;->d(Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetProviderInfo;II)Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v14}, La/a;->b(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-object/from16 v21, v6

    :try_start_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-wide/from16 v22, v12

    :try_start_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Le7/a;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, LM1/c;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, LM1/c;-><init>(I)V

    new-instance v7, LM1/c;

    const/4 v12, 0x2

    invoke-direct {v7, v12}, LM1/c;-><init>(I)V

    filled-new-array {v1, v7}, [LM1/c;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM1/c;

    iget v7, v7, LM1/c;->a:I

    or-int v12, v15, v7

    if-ne v12, v15, :cond_13

    const/4 v12, 0x1

    goto :goto_10

    :cond_13
    const/4 v12, 0x0

    :goto_10
    if-eqz v12, :cond_17

    move-object v12, v14

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v19, v1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v12

    move-object v12, v1

    check-cast v12, Ldb/p;

    iget-object v12, v12, Ldb/p;->a:Ljava/lang/Object;

    check-cast v12, LM1/c;

    iget v12, v12, LM1/c;->a:I

    invoke-static {v12, v7}, LM1/c;->a(II)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v1, v19

    move-object/from16 v12, v24

    goto :goto_11

    :catchall_8
    move-exception v0

    goto/16 :goto_15

    :cond_15
    move-object/from16 v19, v1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v13, v7}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldb/p;

    new-instance v13, Ldb/j;

    move-object/from16 v24, v7

    iget-object v7, v12, Ldb/p;->b:Ljava/lang/Object;

    iget-object v12, v12, Ldb/p;->c:Ljava/lang/Object;

    invoke-direct {v13, v7, v12}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v24

    goto :goto_12

    :cond_16
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_17
    move-object/from16 v19, v1

    :goto_13
    move-object/from16 v1, v19

    goto/16 :goto_f

    :cond_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filtered preview : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_16

    :catchall_9
    move-exception v0

    :goto_14
    move-wide/from16 v22, v12

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_14

    :goto_15
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v6

    :goto_16
    invoke-static {v6}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    instance-of v0, v6, Ldb/l;

    if-eqz v0, :cond_1a

    const/4 v4, 0x0

    goto :goto_17

    :cond_1a
    move-object v4, v6

    :goto_17
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1b

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_18

    :cond_1b
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_19

    :cond_1c
    move-object/from16 v21, v6

    move-wide/from16 v22, v12

    :cond_1d
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1e

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " Preview cache data has been lost due to PACKAGE_CHANGED or LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, LZ1/v;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAppWidgetPreview / "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LZ1/a;

    invoke-direct {v0, v3, v15}, LZ1/a;-><init>(II)V

    move-object/from16 v3, v20

    move-wide/from16 v6, v22

    iput-wide v6, v3, LZ1/w;->a:J

    const/4 v1, 0x1

    iput v1, v3, LZ1/w;->c:I

    move-object/from16 v1, p0

    invoke-virtual {v5, v1, v2, v0, v3}, LR1/m;->updatePreview$glance_oneui_template_release(Landroid/content/Context;Ljava/lang/Class;LZ1/a;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1f

    return-object v1

    :cond_1f
    move-wide v1, v6

    :goto_1a
    move-wide v12, v1

    goto :goto_1b

    :cond_20
    move-object/from16 v21, v6

    move-wide v6, v12

    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateAppWidgetPreview elapsed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v8, v0, v10}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_21
    move-object/from16 v21, v6

    :goto_1c
    return-object v21
.end method

.method public static final e(Landroid/content/Context;Ld2/j;Ljava/lang/Class;ILZ1/x;Lkb/c;)Ljava/lang/Object;
    .locals 13

    move-object/from16 v0, p5

    instance-of v1, v0, LZ1/y;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, LZ1/y;

    iget v2, v1, LZ1/y;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LZ1/y;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, LZ1/y;

    invoke-direct {v1, v0}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object v0, v1, LZ1/y;->f:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, LZ1/y;->g:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, LZ1/y;->e:Ljava/util/Iterator;

    iget-object v5, v1, LZ1/y;->d:LR1/m;

    iget-object v6, v1, LZ1/y;->c:Lsb/n;

    iget-object v7, v1, LZ1/y;->b:Ld2/g;

    iget-object v8, v1, LZ1/y;->a:Landroid/content/Context;

    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v0, v8

    move-object v11, v5

    move-object v5, v1

    move-object v1, v7

    move-object v7, v11

    move-object v12, v6

    move-object v6, v3

    move-object v3, v12

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "updateAppWidgetPreviewState / "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "msg"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GWT:PreviewState"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, LG5/B3;->a(Ljava/lang/Class;)LR1/m;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p3 .. p3}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v0

    move-object v5, v1

    move-object v6, v3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LM1/b;

    iget v8, v8, LM1/b;->a:I

    sget-object v9, Ld2/f;->a:Ld2/f;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v8}, LG5/A3;->b(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v8

    iput-object v0, v5, LZ1/y;->a:Landroid/content/Context;

    iput-object v1, v5, LZ1/y;->b:Ld2/g;

    iput-object v3, v5, LZ1/y;->c:Lsb/n;

    iput-object v7, v5, LZ1/y;->d:LR1/m;

    iput-object v6, v5, LZ1/y;->e:Ljava/util/Iterator;

    iput v4, v5, LZ1/y;->g:I

    move-object p0, v9

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v8

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Ld2/f;->d(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_3

    return-object v2

    :cond_4
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
