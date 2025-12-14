.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$3;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateContentView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070fe5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
