.class public interface abstract Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncPushTopicsCallback"
.end annotation


# virtual methods
.method public abstract onFailure()V
.end method

.method public abstract onSuccess(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;)V"
        }
    .end annotation
.end method
