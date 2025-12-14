.class Lcom/sec/android/app/sbrowser/sync/SavedPageSyncClientImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sync/SavedPageSyncClientImpl;->updateLocal(Landroid/content/Context;ILcom/samsung/android/scloud/oem/lib/sync/SyncItem;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sync/SavedPageSyncClientImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sync/SavedPageSyncClientImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncClientImpl$1;->this$0:Lcom/sec/android/app/sbrowser/sync/SavedPageSyncClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 1

    const-string p0, "transferred : "

    const-string v0, "/"

    invoke-static {p1, p2, p0, v0}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SavedPageSyncClientImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
