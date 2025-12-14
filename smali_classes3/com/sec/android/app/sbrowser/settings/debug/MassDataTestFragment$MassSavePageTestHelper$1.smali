.class Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->triggerSavePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSavedAs(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->a(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->onPageSavedAs(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method
