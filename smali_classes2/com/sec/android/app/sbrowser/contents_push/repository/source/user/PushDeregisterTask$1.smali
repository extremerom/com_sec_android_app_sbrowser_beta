.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;->requestDeregister(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiDeregister;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;->val$listener:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
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
            "Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;->val$listener:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;->onFail()V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;->val$listener:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;->onSuccess()V

    return-void
.end method
