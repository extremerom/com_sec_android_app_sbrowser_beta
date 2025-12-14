.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$9;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$9;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->adjustScreenForKeyboard()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$9;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->T(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    const/4 p0, 0x0

    return p0
.end method
