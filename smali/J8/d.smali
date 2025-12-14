.class public final synthetic LJ8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM4/b;LH4/k;LA9/b;LH4/i;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, LJ8/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ8/d;->d:Ljava/lang/Object;

    iput-object p2, p0, LJ8/d;->b:Ljava/lang/Object;

    iput-object p4, p0, LJ8/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LJ8/d;->a:I

    iput-object p1, p0, LJ8/d;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ8/d;->b:Ljava/lang/Object;

    iput-object p4, p0, LJ8/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LJ8/d;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lg3/d;

    iget-object v2, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v2, Lq3/j;

    iget-object p0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast p0, Lg3/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v2}, Lq3/h;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v2, v1, Lg3/d;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lg3/s;->d:Lo3/q;

    invoke-static {v3}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v3

    iget-object v4, v3, Lo3/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lg3/d;->c(Ljava/lang/String;)Lg3/s;

    move-result-object v5

    if-ne v5, p0, :cond_0

    invoke-virtual {v1, v4}, Lg3/d;->b(Ljava/lang/String;)Lg3/s;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p0

    sget-object v5, Lg3/d;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lg3/d;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " executed; reschedule = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v1, Lg3/d;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg3/b;

    invoke-interface {v1, v3, v0}, Lg3/b;->c(Lo3/j;Z)V

    goto :goto_1

    :cond_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    iget-object v1, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-static {p0, v0, v1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->a(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;Lcom/sec/terrace/content/browser/media/TerraceMediaClient;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/base/Callback;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->f(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Lorg/chromium/base/Callback;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/terrace/TerraceHelper;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/sec/terrace/TerraceHelper;->c(Lcom/sec/terrace/TerraceHelper;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;Landroid/content/Context;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->a(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/ChannelClient$Channel;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->a(Lcom/google/android/gms/wearable/ChannelClient$Channel;Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;Ljava/io/InputStream;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->h(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, [B

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->f([BLandroid/app/Activity;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->m(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v0, Lr/d;

    iget-object v1, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Lr/d;Landroidx/preference/PreferenceScreen;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->g(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;)V

    return-void

    :pswitch_e
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->a(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :pswitch_f
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    return-void

    :pswitch_10
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->j(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    return-void

    :pswitch_11
    iget-object v0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/donations/DeepSkyDonationHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_12
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    return-void

    :pswitch_13
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :pswitch_14
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V

    return-void

    :pswitch_15
    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/scloud/lib/setting/l;

    iget-object v2, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object p0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/b;

    const-string v3, "handlePendingRequest : finished  - "

    :try_start_2
    invoke-static {v1, v2, p0}, Lcom/samsung/android/scloud/lib/setting/e;->n(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;Lcom/samsung/android/scloud/lib/setting/b;)Z

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    sub-long/2addr v4, v6

    const-string v6, "LibSyncScheduleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", pending="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    iget-object p0, v2, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/p;

    new-instance v1, Lca/c;

    invoke-direct {v1, v0}, Lca/c;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LGa/d;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p0, v1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :goto_4
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw p0

    :pswitch_16
    iget-object v0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v1, LR5/i;

    iget-object p0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/f;->handleIntent(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v1, v2}, LR5/i;->b(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, LR5/i;->b(Ljava/lang/Object;)V

    throw p0

    :pswitch_17
    iget-object v0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/l;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/F0;

    iget-object v1, v1, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/F0;

    iget-object p0, p0, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    sget-object v2, Landroidx/fragment/app/q0;->a:Landroidx/fragment/app/v0;

    const-string v2, "inFragment"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outFragment"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v0, Landroidx/fragment/app/l;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LU0/z;

    goto :goto_5

    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LU0/z;

    :goto_5
    return-void

    :pswitch_18
    const-string v0, "$container"

    iget-object v1, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    iget-object v2, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/d;

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, v2, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/F0;->c(Landroidx/fragment/app/E0;)V

    return-void

    :pswitch_19
    iget-object v0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v0, LI3/c;

    iget-object v1, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v1, Le7/a;

    iget-object p0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v0, v0, LI3/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->a(Landroid/content/Context;)Landroidx/emoji2/text/n;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroidx/emoji2/text/n;->a:Landroidx/emoji2/text/g;

    check-cast v2, Landroidx/emoji2/text/m;

    iget-object v3, v2, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iput-object p0, v2, Landroidx/emoji2/text/m;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v0, v0, Landroidx/emoji2/text/n;->a:Landroidx/emoji2/text/g;

    new-instance v2, Landroidx/emoji2/text/i;

    invoke-direct {v2, v1, p0}, Landroidx/emoji2/text/i;-><init>(Le7/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v2}, Landroidx/emoji2/text/g;->a(Le7/a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_6
    invoke-virtual {v1, v0}, Le7/a;->c(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_7
    return-void

    :pswitch_1a
    iget-object v0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v0, LH4/k;

    iget-object v2, v0, LH4/k;->a:Ljava/lang/String;

    iget-object v3, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast v3, LH4/i;

    iget-object p0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast p0, LM4/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LM4/b;->f:Ljava/util/logging/Logger;

    const-string v5, "Transport backend \'"

    :try_start_9
    iget-object v6, p0, LM4/b;->c:LI4/f;

    invoke-virtual {v6, v2}, LI4/f;->a(Ljava/lang/String;)LI4/g;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not registered"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_8

    :cond_5
    check-cast v6, LF4/d;

    invoke-virtual {v6, v3}, LF4/d;->a(LH4/i;)LH4/i;

    move-result-object v2

    iget-object v3, p0, LM4/b;->e:LP4/c;

    new-instance v5, LM4/a;

    invoke-direct {v5, p0, v1, v0, v2}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v3, LO4/h;

    invoke-virtual {v3, v5}, LO4/h;->f(LP4/b;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_9

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error scheduling event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_1b
    iget-object v2, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v2, LA7/c;

    new-instance v3, Landroid/os/Messenger;

    new-instance v4, LJ8/e;

    invoke-direct {v4, v2, v0}, LJ8/e;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;I)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v0, [Landroid/os/Messenger;

    aput-object v3, v0, v1

    iget-object p0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_1c
    iget-object v0, p0, LJ8/d;->d:Ljava/lang/Object;

    check-cast v0, LQ9/a;

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, LJ8/e;

    invoke-direct {v3, v0, v1}, LJ8/e;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;I)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, LJ8/d;->b:Ljava/lang/Object;

    check-cast v0, [Landroid/os/Messenger;

    aput-object v2, v0, v1

    iget-object p0, p0, LJ8/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

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
