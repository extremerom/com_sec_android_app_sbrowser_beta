.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

.field final synthetic val$cachedThumbnail:Landroid/graphics/Bitmap;

.field final synthetic val$t:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;->val$t:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;->val$cachedThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;->val$t:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;->val$cachedThumbnail:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabDataLoaded(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
