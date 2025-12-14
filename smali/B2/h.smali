.class public final synthetic LB2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LB2/h;->a:I

    iput-object p1, p0, LB2/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LB2/h;->a:I

    packed-switch v0, :pswitch_data_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-lt v0, v2, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    iget-object p0, p0, LB2/h;->b:Landroid/content/Context;

    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v1, :cond_5

    const-string v4, "locale"

    if-lt v0, v2, :cond_2

    sget-object v0, Lm/p;->g:LN/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LN/b;

    invoke-direct {v2, v0}, LN/b;-><init>(LN/g;)V

    :cond_0
    invoke-virtual {v2}, LN/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, LN/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/p;

    if-eqz v0, :cond_0

    check-cast v0, Lm/w;

    iget-object v0, v0, Lm/w;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/activity/i;->g(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v2, Lb1/e;

    new-instance v5, Lb1/f;

    invoke-direct {v5, v0}, Lb1/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v2, v5}, Lb1/e;-><init>(Lb1/f;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lm/p;->c:Lb1/e;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lb1/e;->b:Lb1/e;

    :goto_1
    iget-object v0, v2, Lb1/e;->a:Lb1/f;

    iget-object v0, v0, Lb1/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, LU0/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/activity/i;->h(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_5
    sput-boolean v1, Lm/p;->f:Z

    return-void

    :pswitch_0
    iget-object p0, p0, LB2/h;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil;->a(Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LB2/h;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassBroadcastReceiver;->a(Landroid/content/Context;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LB2/h;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->y(Landroid/content/Context;)V

    return-void

    :pswitch_3
    new-instance v0, LA2/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA2/f;-><init>(I)V

    sget-object v1, LB2/f;->a:Lu5/d;

    const/4 v2, 0x0

    iget-object p0, p0, LB2/h;->b:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, LB2/f;->t(Landroid/content/Context;Ljava/util/concurrent/Executor;LB2/e;Z)V

    return-void

    :pswitch_4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v1, LB2/h;

    iget-object p0, p0, LB2/h;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LB2/h;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
