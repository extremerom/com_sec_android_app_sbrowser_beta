.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x7f0b0e19

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_CLICKED_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->f(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Lcom/sec/android/app/sbrowser/common/function/Supplier;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->i(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-void
.end method
