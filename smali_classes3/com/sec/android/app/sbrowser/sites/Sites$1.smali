.class Lcom/sec/android/app/sbrowser/sites/Sites$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/Sites;->setLayoutChangeListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/Sites;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->val$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->n(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMargin(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->val$context:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getPhoneMargins(Landroid/content/Context;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/sites/Sites;->n(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->j(Lcom/sec/android/app/sbrowser/sites/Sites;)Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites$1;->this$0:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->i(Lcom/sec/android/app/sbrowser/sites/Sites;)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->setLayoutMargin(IZ)V

    return-void
.end method
