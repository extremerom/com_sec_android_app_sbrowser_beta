.class Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->showDialogIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->d(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    :cond_0
    return-void
.end method
