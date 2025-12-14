.class Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

.field final synthetic val$heightToShift:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;->val$heightToShift:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->a(Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->b(Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;)Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;->val$heightToShift:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->scrollListToShowCheckedItem(I)V

    return-void
.end method
