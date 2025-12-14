.class Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->p(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lcom/sec/terrace/TerraceConnectionInfoPopup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->p(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lcom/sec/terrace/TerraceConnectionInfoPopup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceConnectionInfoPopup;->destroy()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->q(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->h(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->destroy()V

    return-void
.end method
