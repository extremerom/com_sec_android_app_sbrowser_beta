.class Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Lorg/chromium/ui/resources/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResourceId:I

.field final synthetic this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput p2, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->doInBackground()Lorg/chromium/ui/resources/Resource;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Lorg/chromium/ui/resources/Resource;
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    iget p0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    invoke-static {v0, p0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->b(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)Lorg/chromium/ui/resources/Resource;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/resources/Resource;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->onPostExecute(Lorg/chromium/ui/resources/Resource;)V

    return-void
.end method

.method public onPostExecute(Lorg/chromium/ui/resources/Resource;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    invoke-static {v0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->a(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    iget p0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    invoke-static {v0, p1, p0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->c(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;Lorg/chromium/ui/resources/Resource;I)V

    return-void
.end method
