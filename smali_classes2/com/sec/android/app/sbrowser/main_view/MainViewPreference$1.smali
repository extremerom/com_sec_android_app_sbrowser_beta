.class Lcom/sec/android/app/sbrowser/main_view/MainViewPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->changeLayoutMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->toggleHideToolbarMode()V

    return-void
.end method
