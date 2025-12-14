.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->m(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
