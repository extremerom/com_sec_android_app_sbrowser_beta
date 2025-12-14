.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isHighContrastMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isOpenInOtherWindowAvailable()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isOpenInOtherWindowAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSecretMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$6;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method
