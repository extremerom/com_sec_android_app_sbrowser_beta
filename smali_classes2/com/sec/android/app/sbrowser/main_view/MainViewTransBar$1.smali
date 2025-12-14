.class Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setTransSplitMode(Landroid/app/Activity;Z)V

    return-void
.end method
