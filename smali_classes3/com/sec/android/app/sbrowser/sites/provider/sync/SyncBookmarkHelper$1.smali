.class Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->updateInvalidParentId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
