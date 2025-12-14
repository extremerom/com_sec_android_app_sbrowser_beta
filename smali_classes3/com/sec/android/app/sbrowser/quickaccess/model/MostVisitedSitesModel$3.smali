.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->applyBatch(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

.field final synthetic val$operationList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;->val$operationList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser.beta.mostvisited"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$3;->val$operationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyBatch : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MostVisitedSitesModel"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
