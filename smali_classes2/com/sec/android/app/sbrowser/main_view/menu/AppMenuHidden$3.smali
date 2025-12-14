.class Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onExtensionsItemClicked(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public getRenderView()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getMainActivityDelegate()Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getMainRenderView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method
