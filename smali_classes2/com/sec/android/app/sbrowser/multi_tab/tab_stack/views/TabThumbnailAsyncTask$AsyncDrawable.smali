.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final mLoadAsyncTaskWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getLoadAsyncTask()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask$AsyncDrawable;->mLoadAsyncTaskWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabThumbnailAsyncTask;

    return-object p0
.end method
