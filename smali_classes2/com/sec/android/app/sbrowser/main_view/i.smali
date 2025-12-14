.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;
.implements Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;
.implements Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMessageSender$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/i;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/i;->b:Landroid/os/Parcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdatedList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/i;->b:Landroid/os/Parcelable;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->g(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onFailed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/i;->b:Landroid/os/Parcelable;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;Landroid/content/Intent;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/i;->b:Landroid/os/Parcelable;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->f(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Landroid/content/Intent;Z)V

    return-void
.end method
