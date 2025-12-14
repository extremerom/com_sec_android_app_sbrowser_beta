.class Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "IS_COLD_STARTABLE : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordSyncManager"

    invoke-static {p1, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->isColdStartable()Z

    move-result p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "is_cold_startable"

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method
