.class public final synthetic Lcom/sec/android/app/sbrowser/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/widget/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/a;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->a(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroidx/appcompat/widget/Toolbar;->a(Landroidx/appcompat/widget/Toolbar;Landroid/view/ViewGroup;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/y;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    if-eqz v2, :cond_0

    iget-object p0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    const-string v0, "future"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ls3/b;->a:Ljava/lang/String;

    new-instance v0, Lf3/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lq3/j;->j(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lq3/j;

    invoke-virtual {v0, p0}, Lq3/j;->l(Lcom/google/common/util/concurrent/y;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;->a(Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomHandler;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, LI3/d;

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Lr7/g;

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LK0/h;->m(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, LK0/h;->n(Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lr7/a;

    iget v1, v0, Lr7/a;->c:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v0, Lr7/a;->d:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v1, Lp3/r;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lq3/j;

    iget-object v2, v1, Lp3/r;->a:Lq3/j;

    iget-object v2, v2, Lq3/h;->a:Ljava/lang/Object;

    instance-of v2, v2, Lq3/a;

    if-nez v2, :cond_2

    iget-object v0, v1, Lp3/r;->d:Lf3/t;

    invoke-virtual {v0}, Lf3/t;->a()Lcom/google/common/util/concurrent/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/j;->l(Lcom/google/common/util/concurrent/y;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v0}, Lq3/h;->cancel(Z)Z

    :goto_3
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/mojo/bindings/Message;

    invoke-static {v0, p0}, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->c(Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;Lorg/chromium/mojo/bindings/Message;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/mojo_base/mojom/ReadOnlyFile;

    invoke-static {v0, p0}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->a(Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;Lorg/chromium/mojo_base/mojom/ReadOnlyFile;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;

    invoke-static {p0, v0}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->c(Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;Ljava/util/HashMap;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/components/webauthn/AuthenticatorImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->f(Lorg/chromium/components/webauthn/AuthenticatorImpl;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/base/UnownedUserData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/base/UnownedUserDataHost;

    invoke-static {p0, v0}, Lorg/chromium/base/UnownedUserDataHost;->a(Lorg/chromium/base/UnownedUserDataHost;Lorg/chromium/base/UnownedUserData;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/base/Callback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/chromium/base/Callback;->a(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->a(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;Ljava/util/List;)V

    return-void

    :pswitch_d
    const-string v0, "$listenersList"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lm3/e;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/b;

    iget-object v2, p0, Lm3/e;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ll3/b;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast p0, LJ2/k0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, LJ2/k0;->a()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, LJ2/k0;->a()V

    throw v0

    :pswitch_f
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v1, LU3/c;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$token"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lg3/i;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, LU3/c;->c:Ljava/lang/Object;

    check-cast v0, Lo3/l;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lo3/l;->z0(Lg3/i;I)V

    return-void

    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v1, Lg3/s;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lq3/j;

    iget-object v1, v1, Lg3/s;->q:Lq3/j;

    iget-object v1, v1, Lq3/h;->a:Ljava/lang/Object;

    instance-of v1, v1, Lq3/a;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lq3/h;->cancel(Z)Z

    :cond_4
    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lg3/d;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lo3/j;

    iget-object v1, v0, Lg3/d;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, v0, Lg3/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/b;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lg3/b;->c(Lo3/j;Z)V

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

    invoke-static {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->a(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    new-instance v1, Lf1/D;

    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, Lf1/D;-><init>(Landroid/view/View;)V

    iget-object v0, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/a;

    invoke-interface {v2, v1}, Le1/a;->accept(Ljava/lang/Object;)V

    goto :goto_7

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Lf1/y;

    invoke-virtual {p0, v1}, Lf1/y;->accept(Ljava/lang/Object;)V

    sget p0, Lf1/D;->c:I

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationService;->a(Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationService;Landroid/content/Intent;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->a(Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
