.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView$1",
        "Landroid/view/ViewOutlineProvider;",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/Outline;",
        "outline",
        "Ldb/r;",
        "getOutline",
        "(Landroid/view/View;Landroid/graphics/Outline;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const-string p1, "outline"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;->access$getShadowDrawHelper$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->getCornerRadius()F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
