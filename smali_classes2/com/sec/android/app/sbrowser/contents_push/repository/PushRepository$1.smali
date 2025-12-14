.class Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->syncPushTopics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Landroidx/lifecycle/X;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->FAILED:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->c(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Landroidx/lifecycle/X;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->b(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getIndexedPushTopics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Landroidx/lifecycle/X;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->SUCCESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->d(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)V

    return-void
.end method
