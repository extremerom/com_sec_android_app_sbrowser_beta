.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;
.super LY2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->val$listener:Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->val$listener:Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;->onComplete()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsDeleteAnimOnGoing:Z

    return-void
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->val$listener:Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;->onComplete()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsDeleteAnimOnGoing:Z

    return-void
.end method

.method public onTransitionStart(LY2/f0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsDeleteAnimOnGoing:Z

    return-void
.end method
