.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->deleteItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;->val$url:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->d()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "url = ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
