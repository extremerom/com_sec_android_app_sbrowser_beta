.class Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->authenticate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;->lambda$onGlobalLayout$0()V

    return-void
.end method

.method private synthetic lambda$onGlobalLayout$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->c(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/authentication/g;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
