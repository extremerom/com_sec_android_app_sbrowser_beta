.class public Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;
    }
.end annotation


# static fields
.field private static sSendMessageInterface:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->createSendMessageInterface()Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sSendMessageInterface:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->lambda$createSendMessageInterface$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method

.method public static clearSendMessageInterfaceTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->createSendMessageInterface()Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sSendMessageInterface:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;

    return-void
.end method

.method private static createSendMessageInterface()Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    return-object v0
.end method

.method private static synthetic lambda$createSendMessageInterface$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->CONTENTS_PUSH:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V

    return-void
.end method

.method public static sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sSendMessageInterface:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method

.method public static setSendMessageInterfaceTest(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sSendMessageInterface:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;

    return-void
.end method
