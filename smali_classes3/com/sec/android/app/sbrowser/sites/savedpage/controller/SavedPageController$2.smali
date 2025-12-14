.class Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onPostDelete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

.field final synthetic val$savedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;->val$savedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$2;->val$savedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->f(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    return-void
.end method
