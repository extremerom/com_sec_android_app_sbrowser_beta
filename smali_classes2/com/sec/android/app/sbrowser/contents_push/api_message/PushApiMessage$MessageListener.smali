.class public interface abstract Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListener"
.end annotation


# virtual methods
.method public abstract onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
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
.end method

.method public abstract onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V
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
.end method
