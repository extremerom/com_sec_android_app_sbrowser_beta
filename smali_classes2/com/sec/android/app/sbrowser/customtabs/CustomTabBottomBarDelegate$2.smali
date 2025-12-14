.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->hideBottomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->g(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)V

    return-void
.end method
