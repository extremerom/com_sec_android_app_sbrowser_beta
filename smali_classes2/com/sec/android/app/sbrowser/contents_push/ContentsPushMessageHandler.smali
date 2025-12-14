.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPushStatus(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EMPTY_PUSH_ID"

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopicId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EMPTY_TOPIC_ID"

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result p0

    const-string v0, "ContentsPushMessageHandler"

    if-nez p0, :cond_2

    const-string p0, "Can\'t handle SmpMessage. ContentsPush is not turn on"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "9192"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    const-string p0, "PUSH_TURN_OFF"

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopicId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "verified_topic_id"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, "9193"

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isPushTopicSubs(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Topic : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in the subscription list"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    const-string p0, "BLOCK_BY_VERIFICATION"

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getPushReceivedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Same news push exists : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getPushReceivedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    const-string p0, "ALREADY_SAME_PUSH_RECEIVED"

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Notification is disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "9194"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    const-string p0, "BLOCK_NOTIFICATION"

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;->onReadyToShow(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ContentsPushMessageHandler"

    const-string v1, "Push received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->create(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->checkPushStatus(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;)V

    return-void
.end method

.method public handleMessageForDebug(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->handleMessageInternal(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V

    return-void
.end method

.method public handleMessageInternal(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V
    .locals 3

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->storePushInfo(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sendNotification(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V

    return-void
.end method
