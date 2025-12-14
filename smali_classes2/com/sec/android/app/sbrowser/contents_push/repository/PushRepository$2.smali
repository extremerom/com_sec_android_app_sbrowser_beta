.class Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onFailure()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;)Landroidx/lifecycle/X;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->FAILED:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository$2;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onSuccess()V

    return-void
.end method
