.class public final LZ1/p;
.super LC1/m;
.source "SourceFile"


# instance fields
.field public final e:LR1/m;

.field public final f:Ljava/lang/Class;

.field public final g:I

.field public final h:I

.field public final i:Ld2/g;

.field public j:LZ1/i;


# direct methods
.method public constructor <init>(LR1/m;Ljava/lang/Class;II)V
    .locals 2

    sget-object v0, Ld2/j;->a:Ld2/j;

    const-string v1, "widget"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "receiver"

    invoke-static {p2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LC1/m;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LZ1/p;->e:LR1/m;

    iput-object p2, p0, LZ1/p;->f:Ljava/lang/Class;

    iput p3, p0, LZ1/p;->g:I

    iput p4, p0, LZ1/p;->h:I

    iput-object v0, p0, LZ1/p;->i:Ld2/g;

    return-void
.end method

.method public static final n(LZ1/p;Landroid/content/Context;Ljava/util/ArrayList;Lsb/n;La0/m;I)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, La0/q;

    const v0, -0x65f7fbc9

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldb/j;

    iget-object v2, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, LM1/c;

    iget v5, v2, LM1/c;->a:I

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, LM1/b;

    iget v6, v1, LM1/b;->a:I

    sget-object v1, LR1/d;->e:La0/L0;

    new-instance v2, LM1/c;

    invoke-direct {v2, v5}, LM1/c;-><init>(I)V

    invoke-virtual {v1, v2}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v1

    sget-object v2, LR1/d;->d:La0/L0;

    new-instance v3, LM1/b;

    invoke-direct {v3, v6}, LM1/b;-><init>(I)V

    invoke-virtual {v2, v3}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v2

    filled-new-array {v1, v2}, [La0/h0;

    move-result-object v1

    new-instance v2, LK1/f;

    move-object v3, v2

    move-object v4, p0

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, LK1/f;-><init>(LZ1/p;IILandroid/content/Context;Lsb/n;)V

    const v3, -0x43253782

    invoke-static {p4, v3, v2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v1, v2, p4, v3}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_1

    new-instance v7, LU1/h;

    const/4 v6, 0x3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, LU1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v7, p4, La0/i0;->d:Lsb/n;

    :cond_1
    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    instance-of v4, v2, LZ1/k;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, LZ1/k;

    iget v5, v4, LZ1/k;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, LZ1/k;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, LZ1/k;

    check-cast v2, Lkb/c;

    invoke-direct {v4, v0, v2}, LZ1/k;-><init>(LZ1/p;Lkb/c;)V

    :goto_0
    iget-object v2, v4, LZ1/k;->c:Ljava/lang/Object;

    sget-object v5, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v6, v4, LZ1/k;->e:I

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    if-eq v6, v3, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v4, LZ1/k;->b:Landroid/content/Context;

    iget-object v1, v4, LZ1/k;->a:LZ1/p;

    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, LG5/T2;->h(Lx1/l;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, LZ1/p;->f:Ljava/lang/Class;

    if-nez v2, :cond_4

    goto/16 :goto_a

    :cond_4
    move-object/from16 v2, p2

    check-cast v2, Lz1/Q0;

    iput-object v0, v4, LZ1/k;->a:LZ1/p;

    iput-object v1, v4, LZ1/k;->b:Landroid/content/Context;

    iput v3, v4, LZ1/k;->e:I

    invoke-static {v1, v2, v4}, LE1/g;->b(Landroid/content/Context;Lz1/Q0;Lkb/c;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v2, v5, :cond_5

    return-object v5

    :cond_5
    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    :goto_1
    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldb/j;

    iget-object v10, v9, Ldb/j;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, LM1/b;->b:I

    invoke-static {v11}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    shr-int v12, v10, v12

    and-int/2addr v10, v11

    new-instance v11, LM1/c;

    invoke-direct {v11, v12}, LM1/c;-><init>(I)V

    new-instance v12, LM1/b;

    invoke-direct {v12, v10}, LM1/b;-><init>(I)V

    iget-object v9, v9, Ldb/j;->b:Ljava/lang/Object;

    check-cast v9, Landroid/widget/RemoteViews;

    new-instance v10, Ldb/p;

    invoke-direct {v10, v12, v11, v9}, Ldb/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Generated previews : "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "msg"

    invoke-static {v2, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Le7/a;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "GWT:PreviewSession"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iget-object v11, v1, LZ1/p;->f:Ljava/lang/Class;

    invoke-static {v0, v11}, LG5/B3;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    goto :goto_3

    :cond_7
    move-object v0, v11

    :goto_3
    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v12, LM0/e;

    invoke-direct {v12, v3}, LM0/e;-><init>(I)V

    invoke-static {v6, v12}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldb/p;

    iget-object v12, v12, Ldb/p;->c:Ljava/lang/Object;

    check-cast v12, Landroid/widget/RemoteViews;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    new-array v12, v8, [Landroid/widget/RemoteViews;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/widget/RemoteViews;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ldb/j;

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    iget-object v14, v15, Ldb/j;->b:Ljava/lang/Object;

    iget-object v15, v15, Ldb/j;->a:Ljava/lang/Object;

    if-eqz v13, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldb/p;

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    iget-object v8, v13, Ldb/p;->a:Ljava/lang/Object;

    check-cast v8, LM1/b;

    iget v8, v8, LM1/b;->a:I

    iget-object v13, v13, Ldb/p;->b:Ljava/lang/Object;

    check-cast v13, LM1/c;

    iget v13, v13, LM1/c;->a:I

    or-int/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    or-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Ldb/j;

    invoke-direct {v15, v8, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    goto :goto_5

    :cond_a
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v8

    array-length v13, v12

    const-string v14, "setTemplatePreview / "

    const-string v15, ", "

    invoke-static {v8, v6, v14, v15, v15}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Le7/a;->a:Ljava/lang/String;

    const-string v14, "GWT:AppWidgetManager"

    invoke-static {v9, v10, v13, v14}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v9, LM1/b;->b:I

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "getDeclaredMethods(...)"

    invoke-static {v9, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v9

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v10, :cond_c

    aget-object v14, v9, v13

    invoke-virtual {v14, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v7, "hidden_semSetTemplateWidgetPreview"

    invoke-static {v15, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget v3, LM1/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v3, v6, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_b
    add-int/2addr v13, v3

    const/4 v7, 0x2

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v2, "Array contains no element matching the predicate."

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    instance-of v0, v0, Ldb/l;

    sget-object v0, LZ1/v;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, LZ1/p;->j:LZ1/i;

    iget-object v3, v1, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LC1/a;->a:LC1/a;

    iput-object v11, v4, LZ1/k;->a:LZ1/p;

    iput-object v11, v4, LZ1/k;->b:Landroid/content/Context;

    const/4 v2, 0x2

    iput v2, v4, LZ1/k;->e:I

    invoke-virtual {v1, v0, v4}, Lc2/m;->i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_e

    return-object v5

    :cond_e
    :goto_9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_f
    :goto_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final g(Landroid/content/Context;)Li0/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LZ1/m;

    invoke-direct {v0, p1, p0}, LZ1/m;-><init>(Landroid/content/Context;LZ1/p;)V

    new-instance p0, Li0/a;

    const p1, -0x26db3354

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Li0/a;-><init>(IZLdb/b;)V

    return-object p0
.end method

.method public final k()Lc2/m;
    .locals 0

    return-object p0
.end method

.method public final m(Lib/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, LZ1/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LZ1/n;

    iget v1, v0, LZ1/n;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LZ1/n;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, LZ1/n;

    check-cast p1, Lkb/c;

    invoke-direct {v0, p0, p1}, LZ1/n;-><init>(LZ1/p;Lkb/c;)V

    :goto_0
    iget-object p0, v0, LZ1/n;->e:Ljava/lang/Object;

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, LZ1/n;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    iget-object v1, v0, LZ1/n;->d:LPc/b;

    iget-object v5, v0, LZ1/n;->c:LPc/A;

    iget-object v6, v0, LZ1/n;->b:Lk0/g;

    iget-object v7, v0, LZ1/n;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    const/4 p0, 0x6

    invoke-static {v4, p0, v3}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v5

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, LZ1/o;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v5, v6}, LZ1/o;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;LPc/i;I)V

    sget-object v6, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    sget-object v7, Lk0/n;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7, v1}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    sput-object v7, Lk0/n;->h:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-exit v6

    invoke-static {}, Lk0/n;->a()V

    new-instance v6, Lk0/g;

    invoke-direct {v6, v1}, Lk0/g;-><init>(Lsb/k;)V

    :try_start_2
    new-instance v1, LPc/b;

    invoke-direct {v1, v5}, LPc/b;-><init>(LPc/i;)V

    move-object v7, p0

    :cond_3
    :goto_1
    iput-object v7, v0, LZ1/n;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v6, v0, LZ1/n;->b:Lk0/g;

    iput-object v5, v0, LZ1/n;->c:LPc/A;

    iput-object v1, v0, LZ1/n;->d:LPc/b;

    iput v4, v0, LZ1/n;->g:I

    invoke-virtual {v1, v0}, LPc/b;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_4

    return-object p1

    :cond_4
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, LPc/b;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldb/r;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v8, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk0/b;

    iget-object v8, v8, Lk0/c;->h:LN/v;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, LN/v;->h()Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v8, v4, :cond_5

    move v8, v4

    goto :goto_3

    :cond_5
    move v8, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_3
    :try_start_4
    monitor-exit p0

    if-eqz v8, :cond_3

    invoke-static {}, Lk0/n;->a()V

    goto :goto_1

    :goto_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    invoke-interface {v5, v3}, LPc/A;->a(Ljava/util/concurrent/CancellationException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string p0, "GWT:PreviewSession"

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string v0, " PreviewGlobalSnapshotMonitor disposed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lk0/g;->a()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-static {v5, p0}, LG5/s;->a(LPc/A;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    const-string p1, "GWT:PreviewSession"

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " PreviewGlobalSnapshotMonitor disposed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lk0/g;->a()V

    throw p0

    :catchall_4
    move-exception p0

    monitor-exit v6

    throw p0
.end method

.method public final o(Landroid/content/Context;Lkb/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, LZ1/j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LZ1/j;

    iget v1, v0, LZ1/j;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LZ1/j;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, LZ1/j;

    invoke-direct {v0, p0, p2}, LZ1/j;-><init>(LZ1/p;Lkb/c;)V

    :goto_0
    iget-object p2, v0, LZ1/j;->g:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LZ1/j;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LZ1/j;->f:Ljava/lang/Object;

    iget-object p1, v0, LZ1/j;->e:Ljava/util/LinkedHashMap;

    iget-object v2, v0, LZ1/j;->d:Ljava/util/Iterator;

    iget-object v4, v0, LZ1/j;->c:Ljava/util/LinkedHashMap;

    iget-object v5, v0, LZ1/j;->b:Landroid/content/Context;

    iget-object v6, v0, LZ1/j;->a:LZ1/p;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget p2, p0, LZ1/p;->g:I

    invoke-static {p2}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lfb/C;->g(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    move v4, v5

    :cond_3
    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v9, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v9

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, LM1/b;

    iget v5, v5, LM1/b;->a:I

    sget-object v6, Ld2/f;->a:Ld2/f;

    iget-object v7, p0, LZ1/p;->i:Ld2/g;

    iget-object v8, p0, LZ1/p;->e:LR1/m;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v5}, LG5/A3;->b(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v5

    iput-object p0, v0, LZ1/j;->a:LZ1/p;

    iput-object p2, v0, LZ1/j;->b:Landroid/content/Context;

    iput-object p1, v0, LZ1/j;->c:Ljava/util/LinkedHashMap;

    iput-object v2, v0, LZ1/j;->d:Ljava/util/Iterator;

    iput-object p1, v0, LZ1/j;->e:Ljava/util/LinkedHashMap;

    iput-object v4, v0, LZ1/j;->f:Ljava/lang/Object;

    iput v3, v0, LZ1/j;->i:I

    invoke-virtual {v6, p2, v7, v5, v0}, Ld2/f;->c(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object p0, v4

    move-object v4, p1

    move-object v9, v5

    move-object v5, p2

    move-object p2, v9

    :goto_2
    check-cast p2, Lp1/b;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v4

    move-object p2, v5

    move-object p0, v6

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lfb/B;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, LZ1/i;

    invoke-direct {p1, p0}, LZ1/i;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p1
.end method
