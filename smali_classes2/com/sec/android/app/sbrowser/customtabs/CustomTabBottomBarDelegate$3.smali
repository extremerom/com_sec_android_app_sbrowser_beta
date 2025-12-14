.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->showRemoteViews(Landroid/widget/RemoteViews;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

.field final synthetic val$inflatedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;->val$inflatedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;->val$inflatedView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->h(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;I)V

    return-void
.end method
