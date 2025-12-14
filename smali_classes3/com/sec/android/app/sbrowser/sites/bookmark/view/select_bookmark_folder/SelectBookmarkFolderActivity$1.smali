.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;->finish()V

    return-void
.end method
