.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->a:I

    packed-switch v4, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    iget-object v0, v0, Lq3/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Lq3/a;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Lf3/i;

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v2}, Lf3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    const-string v4, "get()"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, p0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object v4, v4, Landroidx/work/WorkerParameters;->h:Lf3/H;

    iget-object v5, p0, Lf3/t;->a:Landroid/content/Context;

    iget-object v6, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0, v6}, Lf3/H;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lf3/t;

    move-result-object v4

    iput-object v4, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Lf3/t;

    if-nez v4, :cond_2

    sget-object v0, Ls3/b;->a:Ljava/lang/String;

    const-string v1, "No worker to delegate to."

    invoke-virtual {v2, v0, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v0, "future"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf3/p;

    sget-object v1, Lf3/i;->c:Lf3/i;

    invoke-direct {v0, v1}, Lf3/p;-><init>(Lf3/i;)V

    invoke-virtual {p0, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    iget-object v4, p0, Lf3/t;->a:Landroid/content/Context;

    invoke-static {v4}, Lg3/n;->g(Landroid/content/Context;)Lg3/n;

    move-result-object v4

    const-string v5, "getInstance(applicationContext)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v5

    iget-object v6, p0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object v6, v6, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id.toString()"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v0, "future"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ls3/b;->a:Ljava/lang/String;

    new-instance v0, Lf3/p;

    sget-object v1, Lf3/i;->c:Lf3/i;

    invoke-direct {v0, v1}, Lf3/p;-><init>(Lf3/i;)V

    invoke-virtual {p0, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    new-instance v6, LP7/c;

    iget-object v7, v4, Lg3/n;->j:Lm3/j;

    const-string v8, "workManagerImpl.trackers"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, LP7/c;-><init>(Lm3/j;)V

    iget-object v4, v4, Lg3/n;->d:Lr3/a;

    iget-object v4, v4, Lr3/a;->b:LNc/x;

    const-string v7, "workManagerImpl.workTask\u2026r.taskCoroutineDispatcher"

    invoke-static {v4, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5, v4, p0}, Lk3/h;->a(LP7/c;Lo3/q;LNc/x;Lk3/e;)LNc/m0;

    move-result-object v4

    iget-object v7, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    new-instance v8, Ls3/a;

    invoke-direct {v8, v3, v4}, Ls3/a;-><init>(ILjava/lang/Object;)V

    new-instance v3, LR5/n;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, LR5/n;-><init>(I)V

    invoke-virtual {v7, v8, v3}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v6, v5}, LP7/c;->l(Lo3/q;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ls3/b;->a:Ljava/lang/String;

    const-string v4, "Constraints met for delegate "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Lf3/t;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lf3/t;->c()Lq3/j;

    move-result-object v3

    const-string v4, "delegate!!.startWork()"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v5, 0x15

    invoke-direct {v4, v5, p0, v3}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p0, Lf3/t;->b:Landroidx/work/WorkerParameters;

    iget-object v5, v5, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3, v4, v5}, Lq3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    sget-object v4, Ls3/b;->a:Ljava/lang/String;

    const-string v5, "Delegated worker "

    const-string v6, " threw exception in startWork."

    invoke-static {v5, v0, v6}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v5, v2, Lf3/u;->a:I

    if-gt v5, v1, :cond_4

    invoke-static {v4, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    if-eqz v1, :cond_5

    const-string v1, "Constraints were unmet, Retrying."

    invoke-virtual {v2, v4, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v1, "future"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lf3/q;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lq3/j;->j(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v1, "future"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lf3/p;

    sget-object v2, Lf3/i;->c:Lf3/i;

    invoke-direct {v1, v2}, Lf3/p;-><init>(Lf3/i;)V

    invoke-virtual {p0, v1}, Lq3/j;->j(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0

    throw p0

    :cond_6
    sget-object v1, Ls3/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constraints not met for delegate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Requesting retry."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v0, "future"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf3/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    :goto_2
    sget-object v0, Ls3/b;->a:Ljava/lang/String;

    const-string v1, "No worker to delegate to."

    invoke-virtual {v2, v0, v1}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v0, "future"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf3/p;

    sget-object v1, Lf3/i;->c:Lf3/i;

    invoke-direct {v0, v1}, Lf3/p;-><init>(Lf3/i;)V

    invoke-virtual {p0, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/VibrationHelper;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/VibrationHelper;->a(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/VibrationHelper;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/NavigationStaticLog;->a(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lorg/chromium/url/GURL;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/listmenu/ListMenuHost;

    invoke-virtual {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->dismiss()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->clearCache()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;

    invoke-static {p0}, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->b(Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/device/nfc/NfcImpl;

    invoke-static {p0}, Lorg/chromium/device/nfc/NfcImpl;->a(Lorg/chromium/device/nfc/NfcImpl;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/IntConsumer;

    invoke-static {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->b(Ljava/util/function/IntConsumer;)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->onOverlayDestroyed()V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->notifyDisable()V

    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-static {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->d(Lorg/chromium/components/webauthn/AuthenticatorImpl;)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;

    invoke-static {p0}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->c(Lorg/chromium/components/search_engines/SearchEngineChoiceService;)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/search_engines/FakeSearchEngineCountryDelegate;

    invoke-static {p0}, Lorg/chromium/components/search_engines/FakeSearchEngineCountryDelegate;->a(Lorg/chromium/components/search_engines/FakeSearchEngineCountryDelegate;)V

    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->b(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;)V

    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->b(Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;)V

    return-void

    :pswitch_10
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Ln9/d;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ln9/d;->b:Ln9/c;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Li9/a;->g()V

    :cond_8
    return-void

    :pswitch_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_a

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/Button;

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/2addr v6, v2

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v3, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-static {p0, v9}, Lf1/D;->b(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v8

    if-nez v8, :cond_d

    new-instance v8, Lf1/x;

    invoke-direct {v8, v6, v3}, Lf1/x;-><init>(Landroid/graphics/Rect;I)V

    goto :goto_6

    :cond_d
    new-instance v8, Lf1/x;

    invoke-direct {v8, v6, v2}, Lf1/x;-><init>(Landroid/graphics/Rect;I)V

    :goto_6
    invoke-static {v2, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int v10, v5, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v5

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v0

    invoke-direct {v9, v10, v6, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v5, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Landroid/view/View;)V

    move p0, v3

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p0, v6, :cond_e

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    add-int/lit8 v9, p0, 0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v11, v8, Lf1/x;->a:I

    packed-switch v11, :pswitch_data_1

    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget-object v12, v8, Lf1/x;->b:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v13

    iget v13, v6, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v12

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v12

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v11, v13, v0, v10}, Lf1/B;->a(IIII)Lf1/B;

    move-result-object v0

    goto :goto_8

    :pswitch_12
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget-object v12, v8, Lf1/x;->b:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v13

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v13

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    invoke-static {v11, v0, v10, v12}, Lf1/B;->a(IIII)Lf1/B;

    move-result-object v0

    :goto_8
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    iget-object v10, v5, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/LinkedList;

    new-instance v11, Lf1/z;

    invoke-direct {v11, p0, v0}, Lf1/z;-><init>(Landroid/view/View;Lf1/B;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    move p0, v9

    goto :goto_7

    :cond_e
    move-object v0, v5

    :goto_9
    if-eqz v0, :cond_f

    iget-object p0, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lf1/y;

    invoke-direct {v2, v3, p0}, Lf1/y;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/widget/a;

    invoke-direct {v3, v1, v0, v2}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void

    :pswitch_13
    const-string v0, "$animation"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    return-void

    :pswitch_14
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->requestLayout()V

    return-void

    :pswitch_15
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/CoroutineWorker;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->f:Lq3/j;

    iget-object v1, v1, Lq3/h;->a:Ljava/lang/Object;

    instance-of v1, v1, Lq3/a;

    if-eqz v1, :cond_10

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->e:LNc/m0;

    invoke-virtual {p0, v0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_10
    return-void

    :pswitch_16
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->a(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    return-void

    :pswitch_17
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;

    invoke-static {p0}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->b(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;)V

    return-void

    :pswitch_18
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/terrace/browser/notifications/TinNotificationService;->a(Landroid/content/Intent;)V

    return-void

    :pswitch_19
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->f(Lcom/sec/terrace/TerraceActivity;)V

    return-void

    :pswitch_1a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->applyCustomCssInThread()V

    return-void

    :pswitch_1b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->a(Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;)V

    return-void

    :pswitch_1c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    return-void

    :pswitch_1d
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/o;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->i(Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_10
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
