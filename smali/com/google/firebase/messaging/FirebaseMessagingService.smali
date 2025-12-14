.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/f;
.source "SourceFile"


# static fields
.field public static final ACTION_DIRECT_BOOT_REMOTE_INTENT:Ljava/lang/String; = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

.field static final ACTION_NEW_TOKEN:Ljava/lang/String; = "com.google.firebase.messaging.NEW_TOKEN"

.field static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final RECENTLY_RECEIVED_MESSAGE_IDS_MAX_SIZE:I = 0xa

.field private static final recentlyReceivedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/f;-><init>()V

    return-void
.end method

.method public static resetForTesting()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method


# virtual methods
.method public getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/google/firebase/messaging/q;->e()Lcom/google/firebase/messaging/q;

    move-result-object p0

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    const/4 v0, 0x0

    const-string v4, "gcm"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "FirebaseMessaging"

    const-string v10, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    if-nez v8, :cond_2

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown intent action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_2
    :goto_0
    const-string v7, "google.message_id"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    sget-object v11, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "Received duplicate message: "

    invoke-static {v0, v8, v9}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_4
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v12

    const/16 v13, 0xa

    if-lt v12, v13, :cond_5

    invoke-interface {v11}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_5
    invoke-interface {v11, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v8, "message_type"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v8, v4

    :cond_6
    const-string v11, "message_id"

    const/4 v12, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_2
    move v5, v12

    goto :goto_3

    :sswitch_0
    const-string v4, "send_event"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_2

    :sswitch_1
    const-string v4, "send_error"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    move v5, v3

    goto :goto_3

    :sswitch_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :sswitch_3
    const-string v4, "deleted_messages"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    move v5, v0

    :cond_a
    :goto_3
    packed-switch v5, :pswitch_data_0

    const-string v0, "Received message with unknown type: "

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    new-instance v3, LBb/a;

    const-string v4, "error"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    invoke-virtual {v1, v0, v3}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_18

    :pswitch_2
    invoke-static/range {p1 .. p1}, LG5/o2;->f(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "_nr"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v4}, LG5/o2;->d(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :catch_0
    :cond_e
    :goto_5
    move v4, v0

    goto :goto_6

    :cond_f
    const-string v4, "delivery_metrics_exported_to_big_query_enabled"

    :try_start_0
    invoke-static {}, Lp7/f;->b()Lp7/f;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lp7/f;->b()Lp7/f;

    move-result-object v5

    invoke-virtual {v5}, Lp7/f;->a()V

    const-string v8, "com.google.firebase.messaging"

    iget-object v5, v5, Lp7/f;->a:Landroid/content/Context;

    invoke-virtual {v5, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "export_to_big_query"

    invoke-interface {v8, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v8, v10, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_6

    :cond_10
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x80

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_e

    invoke-virtual {v8, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_1
    const-string v4, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_6
    if-eqz v4, :cond_24

    sget-object v23, LI7/a;->MESSAGE_DELIVERED:LI7/a;

    sget-object v4, Lcom/google/firebase/messaging/FirebaseMessaging;->o:LE4/e;

    if-nez v4, :cond_11

    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_12

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_12
    const-string v8, "google.ttl"

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_14

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_13
    :goto_7
    move/from16 v21, v0

    goto :goto_8

    :cond_14
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_13

    :try_start_2
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Invalid TTL: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_8
    const-string v0, "google.to"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    :goto_9
    move-object/from16 v16, v0

    goto :goto_a

    :cond_15
    :try_start_3
    invoke-static {}, Lp7/f;->b()Lp7/f;

    move-result-object v0

    sget-object v8, LD7/e;->m:Ljava/lang/Object;

    const-class v8, LD7/f;

    invoke-virtual {v0}, Lp7/f;->a()V

    iget-object v0, v0, Lp7/f;->d:Lcom/google/firebase/components/h;

    invoke-interface {v0, v8}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD7/e;

    invoke-virtual {v0}, LD7/e;->c()LR5/p;

    move-result-object v0

    invoke-static {v0}, LG5/G;->b(LR5/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_9

    :goto_a
    invoke-static {}, Lp7/f;->b()Lp7/f;

    move-result-object v0

    invoke-virtual {v0}, Lp7/f;->a()V

    iget-object v0, v0, Lp7/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    sget-object v18, LI7/c;->ANDROID:LI7/c;

    invoke-static {v5}, LJ7/c;->u(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, LI7/b;->DISPLAY_NOTIFICATION:LI7/b;

    :goto_b
    move-object/from16 v17, v0

    goto :goto_c

    :cond_16
    sget-object v0, LI7/b;->DATA_MESSAGE:LI7/b;

    goto :goto_b

    :goto_c
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    const-string v7, ""

    if-eqz v0, :cond_18

    move-object v15, v0

    goto :goto_d

    :cond_18
    move-object v15, v7

    :goto_d
    const-string v0, "from"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v8, "/topics/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1a

    move-object/from16 v22, v0

    goto :goto_f

    :cond_1a
    move-object/from16 v22, v7

    :goto_f
    const-string v0, "collapse_key"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object/from16 v20, v0

    goto :goto_10

    :cond_1b
    move-object/from16 v20, v7

    :goto_10
    const-string v0, "google.c.a.m_l"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    move-object/from16 v24, v0

    goto :goto_11

    :cond_1c
    move-object/from16 v24, v7

    :goto_11
    const-string v0, "google.c.a.c_l"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    move-object/from16 v25, v0

    goto :goto_12

    :cond_1d
    move-object/from16 v25, v7

    :goto_12
    const-string v0, "google.c.sender.id"

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_1e

    :try_start_4
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_14

    :catch_3
    move-exception v0

    const-string v5, "error parsing project number"

    invoke-static {v9, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    invoke-static {}, Lp7/f;->b()Lp7/f;

    move-result-object v5

    invoke-virtual {v5}, Lp7/f;->a()V

    iget-object v7, v5, Lp7/f;->c:Lp7/g;

    iget-object v0, v7, Lp7/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_1f

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v8, v0

    const-string v0, "error parsing sender ID"

    invoke-static {v9, v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    invoke-virtual {v5}, Lp7/f;->a()V

    const-string v0, "1:"

    iget-object v5, v7, Lp7/g;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "error parsing app ID"

    if-nez v0, :cond_20

    :try_start_6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v3, v0

    invoke-static {v9, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_20
    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ge v5, v3, :cond_21

    :goto_13
    move-wide v7, v10

    goto :goto_14

    :cond_21
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_13

    :cond_22
    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    move-object v3, v0

    invoke-static {v9, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :goto_14
    cmp-long v0, v7, v10

    if-lez v0, :cond_23

    move-wide v13, v7

    goto :goto_15

    :cond_23
    move-wide v13, v10

    :goto_15
    new-instance v0, LI7/d;

    move-object v12, v0

    invoke-direct/range {v12 .. v25}, LI7/d;-><init>(JLjava/lang/String;Ljava/lang/String;LI7/b;LI7/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;LI7/a;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    const-string v3, "FCM_CLIENT_EVENT_LOGGING"

    const-string v5, "proto"

    new-instance v7, LE4/b;

    invoke-direct {v7, v5}, LE4/b;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/firebase/messaging/m;

    invoke-direct {v5, v6}, Lcom/google/firebase/messaging/m;-><init>(I)V

    check-cast v4, LH4/u;

    invoke-virtual {v4, v3, v7, v5}, LH4/u;->a(Ljava/lang/String;LE4/b;LE4/d;)LH4/v;

    move-result-object v3

    new-instance v4, LI7/e;

    invoke-direct {v4, v0}, LI7/e;-><init>(LI7/d;)V

    new-instance v0, LE4/a;

    sget-object v5, LE4/c;->DEFAULT:LE4/c;

    invoke-direct {v0, v4, v5}, LE4/a;-><init>(Ljava/lang/Object;LE4/c;)V

    invoke-virtual {v3, v0}, LH4/v;->a(LE4/a;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_16

    :catch_7
    move-exception v0

    const-string v3, "Failed to send big query analytics payload."

    invoke-static {v9, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_24
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_25
    const-string v3, "androidx.content.wakelockid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, LJ7/c;->u(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v3, LJ7/c;

    invoke-direct {v3, v0}, LJ7/c;-><init>(Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/common/util/concurrent/B;

    const-string v5, "Firebase-Messaging-Network-Io"

    invoke-direct {v4, v5}, Lcom/google/common/util/concurrent/B;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, LZ3/x;

    invoke-direct {v5, v1, v3, v4}, LZ3/x;-><init>(Lcom/google/firebase/messaging/FirebaseMessagingService;LJ7/c;Ljava/util/concurrent/ExecutorService;)V

    :try_start_9
    invoke-virtual {v5}, LZ3/x;->A()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_26

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_18

    :cond_26
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-static/range {p1 .. p1}, LG5/o2;->f(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "_nf"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v3}, LG5/o2;->d(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v1

    :cond_27
    :goto_17
    new-instance v2, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {v2, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    goto :goto_18

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    :cond_28
    :goto_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeletedMessages()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
