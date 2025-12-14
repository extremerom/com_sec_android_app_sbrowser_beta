.class Lcom/sec/android/app/sbrowser/sites/SitesActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sites/DeleteBookmarkSnackbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/SitesActivity;->showMultiBookmarkDeletedSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->k(Lcom/sec/android/app/sbrowser/sites/SitesActivity;LH6/o;)V

    return-void
.end method

.method public updateBookmarkSnackbar(LH6/o;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->k(Lcom/sec/android/app/sbrowser/sites/SitesActivity;LH6/o;)V

    return-void
.end method
