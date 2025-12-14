.class public final synthetic Lcom/google/firebase/messaging/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/messaging/p;->a:I

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/google/firebase/messaging/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/messaging/p;->a:I

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/firebase/messaging/p;->b:Z

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/firebase/messaging/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->b:Z

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->c(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

    iget-boolean p0, p0, Lcom/google/firebase/messaging/p;->b:Z

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->a(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;ZLjava/lang/String;)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->b:Z

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->d(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;Z)V

    return-void

    :pswitch_2
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->b:Z

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    iget-boolean p0, p0, Lcom/google/firebase/messaging/p;->b:Z

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;ZLjava/lang/Boolean;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-boolean p0, p0, Lcom/google/firebase/messaging/p;->b:Z

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->d(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;ZLjava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-boolean v1, p0, Lcom/google/firebase/messaging/p;->b:Z

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->c(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;Ljava/util/List;Z)V

    return-void

    :pswitch_6
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->b:Z

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->a(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;Ljava/util/List;Z)V

    return-void

    :pswitch_7
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->b:Z

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->T(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;Ljava/lang/Boolean;Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-boolean p0, p0, Lcom/google/firebase/messaging/p;->b:Z

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;ZLjava/util/List;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v1, LR5/i;

    const-string v2, "error configuring notification delegate for package "

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    :cond_0
    const-string v4, "com.google.firebase.messaging"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "proxy_notification_initialized"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p0, p0, Lcom/google/firebase/messaging/p;->b:Z

    const-string v2, "com.google.android.gms"

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->setNotificationDelegate(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationDelegate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->setNotificationDelegate(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "FirebaseMessaging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {v1, v3}, LR5/i;->d(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-virtual {v1, v3}, LR5/i;->d(Ljava/lang/Object;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
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
