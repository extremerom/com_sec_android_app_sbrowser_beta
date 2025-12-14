.class Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->setWideScreenLayoutOnConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;->val$context:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->g(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMarginLayout(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->h(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;Z)V

    return-void
.end method
