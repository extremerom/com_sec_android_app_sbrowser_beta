.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->maximizeToolbar(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->n(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->maximizeToolbarWindow(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const/4 p0, 0x1

    return p0
.end method
