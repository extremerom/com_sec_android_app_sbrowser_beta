.class Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->j(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lm/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$1;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->j(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_0
    return-void
.end method
