.class Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getIconFromFaviconUrl(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentFetched(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$2;->val$item:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-static {p1, p0, p3, p2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->e(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
