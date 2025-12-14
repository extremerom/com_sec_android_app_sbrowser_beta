.class Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment;->showInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugInternetInformationFragment;->mDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method
