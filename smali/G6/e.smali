.class public final synthetic LG6/e;
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

    iput p1, p0, LG6/e;->a:I

    iput-object p2, p0, LG6/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 6

    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, LA7/c;

    iget-object v0, p0, LA7/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LA7/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, LA7/c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LA7/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, LA7/c;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LG6/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void

    :pswitch_0
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->a(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_2
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->a(Lcom/sec/android/app/sbrowser/common/utils/RotationManager;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->a(Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;)V

    return-void

    :pswitch_4
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onFlexModeChanged()V

    return-void

    :pswitch_5
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->c(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->a(Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V

    return-void

    :pswitch_7
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->e(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    return-void

    :pswitch_8
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->r(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V

    return-void

    :pswitch_9
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;->u(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthFragment;)V

    return-void

    :pswitch_a
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupController;)V

    return-void

    :pswitch_b
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    return-void

    :pswitch_c
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->D(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    return-void

    :pswitch_d
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;->a(Lcom/sec/android/app/sbrowser/BaseActivityDelegate;)V

    return-void

    :pswitch_e
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/setting/p;->b(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/setting/n;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyPerformancePolicy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[scsettingv2][2.0.36.0]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service took too long to process intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/B;

    iget-object v1, p0, Lcom/google/firebase/messaging/B;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Releasing WakeLock."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/firebase/messaging/B;->b:LR5/i;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LR5/i;->d(Ljava/lang/Object;)V

    return-void

    :pswitch_10
    invoke-direct {p0}, LG6/e;->a()V

    return-void

    :pswitch_11
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/timepicker/e;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/e;->b()V

    return-void

    :pswitch_12
    const/4 v0, 0x0

    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/n1;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/n1;->s(I)V

    return-void

    :pswitch_13
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/b0;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/b0;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/L;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/b0;->c:Z

    sget-object v0, Landroidx/lifecycle/B;->ON_PAUSE:Landroidx/lifecycle/B;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    :cond_0
    iget v0, p0, Landroidx/lifecycle/b0;->a:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/b0;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    iput-boolean v1, p0, Landroidx/lifecycle/b0;->d:Z

    :cond_1
    return-void

    :pswitch_14
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/m;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v1, p0, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/emoji2/text/m;->h:Le7/a;

    if-nez v2, :cond_2

    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroidx/emoji2/text/m;->c()Lc1/i;

    move-result-object v1

    iget v2, v1, Lc1/i;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_3

    :cond_3
    :goto_0
    if-nez v2, :cond_6

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/emoji2/text/m;->c:Lz7/d;

    iget-object v2, p0, Landroidx/emoji2/text/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [Lc1/i;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, LX0/e;->a(Landroid/content/Context;[Lc1/i;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Landroidx/emoji2/text/m;->a:Landroid/content/Context;

    iget-object v1, v1, Lc1/i;->a:Landroid/net/Uri;

    invoke-static {v2, v1}, Lfb/F;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    :try_start_5
    const-string v2, "EmojiCompat.MetadataRepo.create"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v2, Lcom/google/firebase/messaging/q;

    invoke-static {v1}, Ll5/a;->d(Ljava/nio/MappedByteBuffer;)Ls1/b;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/messaging/q;-><init>(Landroid/graphics/Typeface;Ls1/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, p0, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Landroidx/emoji2/text/m;->h:Le7/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Le7/a;->d(Lcom/google/firebase/messaging/q;)V

    goto :goto_1

    :catchall_3
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {p0}, Landroidx/emoji2/text/m;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_2
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_3
    iget-object v2, p0, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Landroidx/emoji2/text/m;->h:Le7/a;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Le7/a;->c(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_4
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {p0}, Landroidx/emoji2/text/m;->b()V

    :goto_5
    return-void

    :goto_6
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw p0

    :goto_7
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p0

    :pswitch_15
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/q;

    invoke-static {p0}, Landroidx/activity/q;->a(Landroidx/activity/q;)V

    return-void

    :pswitch_16
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/m;

    iget-object v0, p0, Landroidx/activity/m;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/m;->b:Ljava/lang/Runnable;

    :cond_8
    return-void

    :pswitch_17
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, LN4/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LAa/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, LAa/a;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, LN4/l;->d:LP4/c;

    check-cast p0, LO4/h;

    invoke-virtual {p0, v0}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    return-void

    :pswitch_18
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, LK6/m;

    iget-object v0, p0, LK6/m;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, LK6/m;->t(Z)V

    iput-boolean v0, p0, LK6/m;->m:Z

    return-void

    :pswitch_19
    const/4 v0, 0x1

    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, LK6/e;

    invoke-virtual {p0, v0}, LK6/e;->t(Z)V

    return-void

    :pswitch_1a
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, LJ2/X;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->hasActiveObservers()Z

    move-result v0

    iget-object v1, p0, LJ2/X;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, p0, LJ2/X;->a:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->getCoroutineScope()LNc/B;

    move-result-object v0

    new-instance v1, LJ2/e0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LJ2/e0;-><init>(LJ2/X;Lib/c;)V

    const/4 v3, 0x2

    iget-object p0, p0, LJ2/X;->g:Lib/h;

    invoke-static {v0, p0, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :cond_9
    return-void

    :pswitch_1b
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->b(Landroid/app/Activity;)V

    return-void

    :pswitch_1c
    iget-object p0, p0, LG6/e;->b:Ljava/lang/Object;

    check-cast p0, LG6/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, LG6/f;->b:Z

    iget-object v0, p0, LG6/f;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lk1/d;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lk1/d;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v0, p0, LG6/f;->c:I

    invoke-virtual {p0, v0}, LG6/f;->b(I)V

    goto :goto_8

    :cond_a
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget p0, p0, LG6/f;->c:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t(I)V

    :cond_b
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_12
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
.end method
