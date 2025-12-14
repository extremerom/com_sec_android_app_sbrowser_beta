.class public abstract Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;
    }
.end annotation


# instance fields
.field private final mFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

.field private mHasBeenRestored:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;->mFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    return-void
.end method


# virtual methods
.method public abstract onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
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
.end method

.method public onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 2
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

    const-string v0, "response_code"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0xfc8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;->mHasBeenRestored:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;->mHasBeenRestored:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;->mFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    invoke-interface {v0, p1, p4}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;->onUserNotFound(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;->onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
