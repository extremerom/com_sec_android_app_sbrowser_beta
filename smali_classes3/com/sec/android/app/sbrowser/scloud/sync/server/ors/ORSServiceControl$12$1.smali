.class Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->handleResponse(JLjava/io/InputStream;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12$1;->this$1:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJJ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12$1;->this$1:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object p0

    const-string p1, "downloadFile transferred : "

    const-string p2, "/"

    invoke-static {p3, p4, p1, p2}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ORSServiceControl"

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
