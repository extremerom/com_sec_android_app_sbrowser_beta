.class public Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler$SixContextMenuUiType;
    }
.end annotation


# instance fields
.field private mContextMenuUi:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUi;

.field private mContextMenuUiType:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler$SixContextMenuUiType;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler$SixContextMenuUiType;->DROPDOWN:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler$SixContextMenuUiType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;->mContextMenuUiType:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler$SixContextMenuUiType;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;-><init>(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUi;

    return-void
.end method


# virtual methods
.method public showContextMenu()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUi;

    const-string v1, "SixContextMenuUiHandler"

    if-eqz v0, :cond_0

    const-string v0, "showContextMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;->mContextMenuUi:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUi;->showContextMenu()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "mContextMenuUi is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
