.class interface abstract Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->EMPTY:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    return-void
.end method


# virtual methods
.method public showCloseAllTabDialog(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public showCloseAllTabInGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showCloseOtherTabDialog(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public showCreateGroupDialog(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public showMoveToGroupPopup(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public showRenameGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
