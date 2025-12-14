.class Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$7;
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
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "COMPLETE : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordSyncManager"

    invoke-static {p1, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "local_id"

    invoke-virtual {p4, p0}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    const-string p3, "table_name"

    invoke-virtual {p4, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const-string v0, "rcode"

    invoke-virtual {p4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p4

    const/16 v0, 0x12d

    const/4 v1, 0x0

    if-eq p4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "upload not success, rCode : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    if-eqz p0, :cond_1

    :goto_1
    array-length p4, p0

    if-ge v1, p4, :cond_1

    aget-object p4, p3, v1

    aget-wide v2, p0, v1

    invoke-interface {p2, p4, v2, v3, p1}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->complete(Ljava/lang/String;JZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
