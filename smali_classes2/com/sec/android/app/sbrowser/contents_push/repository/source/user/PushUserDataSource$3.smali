.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->updateDeviceInfoIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$3;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$3;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->b(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$3;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setIUIDUploaded(Z)V

    return-void
.end method
