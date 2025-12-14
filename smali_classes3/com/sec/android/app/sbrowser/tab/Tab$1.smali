.class Lcom/sec/android/app/sbrowser/tab/Tab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/Tab;->showCrashView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/Tab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCrashView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->c(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reload()V

    return-void
.end method

.method public removeCrashView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$1;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
