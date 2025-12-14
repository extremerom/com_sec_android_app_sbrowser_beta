.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$dominantColor:J

.field final synthetic val$iconUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$iconUrl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$dominantColor:J

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MostVisitedSitesModel"

    const-string v0, "updateIcon - failed converting to byte array"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "touchiconUrl"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "touchicon"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$dominantColor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "dominant"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->val$url:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->d()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "url = ?"

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
