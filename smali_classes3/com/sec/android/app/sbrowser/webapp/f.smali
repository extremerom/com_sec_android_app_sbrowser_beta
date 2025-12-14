.class public final synthetic Lcom/sec/android/app/sbrowser/webapp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:I

.field public final synthetic d:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;Landroid/app/Activity;ILcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/f;->a:Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/f;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/sec/android/app/sbrowser/webapp/f;->c:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/webapp/f;->d:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    return-void
.end method


# virtual methods
.method public final onDataRetrieved(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/f;->d:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/f;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/sec/android/app/sbrowser/webapp/f;->c:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/f;->a:Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;

    invoke-static {p0, v1, v2, v0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;->a(Lcom/sec/android/app/sbrowser/webapp/WebappSplashController;Landroid/app/Activity;ILcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method
