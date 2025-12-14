.class Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->deleteSavedpageItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

.field final synthetic val$mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

.field final synthetic val$savedPageBaseUi:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

.field final synthetic val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->val$mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->val$savedPageBaseUi:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->val$mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->val$savedPageBaseUi:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-interface {p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;->delete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    :goto_0
    return-void
.end method
