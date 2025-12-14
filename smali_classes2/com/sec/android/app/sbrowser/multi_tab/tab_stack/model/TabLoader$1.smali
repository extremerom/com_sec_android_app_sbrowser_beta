.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiskBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getDiskBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isFirstIntroAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isFirstIntroAnimation()Z

    move-result p0

    return p0
.end method

.method public isMultiTabAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isMultiTabAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
