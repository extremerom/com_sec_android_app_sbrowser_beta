.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$2;
.super Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->updateSubsTopicState(Ljava/util/Map;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$2;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "Update topic state failed: "

    const-string p1, "PushTopicClient"

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string p1, "PushTopicClient"

    const-string p2, "Update topic state success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$2;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;->onFinished()V

    :cond_0
    return-void
.end method
