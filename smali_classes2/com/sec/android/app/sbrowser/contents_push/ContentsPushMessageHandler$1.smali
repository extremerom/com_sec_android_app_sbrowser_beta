.class Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$PushStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->handleMessage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->requestPushBlockStatusLogging(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->sendPushBlocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReadyToShow(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->handleMessageInternal(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V

    return-void
.end method
